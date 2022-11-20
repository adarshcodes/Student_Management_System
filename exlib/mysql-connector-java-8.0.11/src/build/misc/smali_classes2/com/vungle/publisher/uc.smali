pportedException.class, "Unsupported SQL type: TIME_WITH_TIMEZONE", new Callable<Void>() {
            @Override
            public Void call() throws Exception {
                prepStmt.setObject(1, OffsetTime.now(), JDBCType.TIME_WITH_TIMEZONE);
                return null;
            }
        });
        assertThrows(SQLFeatureNotSupportedException.class, "Unsupported SQL type: TIMESTAMP_WITH_TIMEZONE", new Callable<Void>() {
            @Override
            public Void call() throws Exception {
                prepStmt.setObject(1, OffsetDateTime.now(), JDBCType.TIMESTAMP_WITH_TIMEZONE);
                return null;
            }
        });
        if (cstmt != null) {
            assertThrows(SQLFeatureNotSupportedException.class, "Unsupported SQL type: TIME_WITH_TIMEZONE", new Callable<Void>() {
                @Override
                public Void call() throws Exception {
                    cstmt.setObject("param", OffsetTime.now(), JDBCType.TIME_WITH_TIMEZONE);
                    return null;
                }
            });
            assertThrows(SQLFeatureNotSupportedException.class, "Unsupported SQL type: TIMESTAMP_WITH_TIMEZONE", new Callable<Void>() {
                @Override
                public Void call() throws Exception {
                    cstmt.setObject("param", OffsetDateTime.now(), JDBCType.TIMESTAMP_WITH_TIMEZONE);
                    return null;
                }
            });
        }
        /*
         * Unsupported SQL type REF_CURSOR.
         */
        assertThrows(SQLFeatureNotSupportedException.class, "Unsupported SQL type: REF_CURSOR", new Callable<Void>() {
            @Override
            public Void call() throws Exception {
                prepStmt.setObject(1, new Object(), JDBCType.REF_CURSOR);
                return null;
            }
        });
        if (cstmt != null) {
            assertThrows(SQLFeatureNotSupportedException.class, "Unsupported SQL type: REF_CURSOR", new Callable<Void>() {
                @Override
                public Void call() throws Exception {
                    cstmt.setObject("param", new Object(), JDBCType.REF_CURSOR);
                    return null;
                }
            });
        }
    }

    /**
     * Test for CallableStatement.registerOutParameter().
     */
    public void testCallStmtRegisterOutParameter() throws Exception {
        createProcedure("testRegisterOutParameterProc", "(OUT b BIT, OUT i INT, OUT c CHAR(10)) BEGIN SELECT 1, 1234, 'MySQL' INTO b, i, c; END");
        final CallableStatement testCstmt = this.conn.prepareCall("{CALL testRegisterOutParameterProc(?, ?, ?)}");

        // registerOutParameter by parameter index
        testCstmt.registerOutParameter(1, JDBCType.BOOLEAN);
        testCstmt.registerOutParameter(2, JDBCType.INTEGER);
        testCstmt.registerOutParameter(3, JDBCType.CHAR);
        testCstmt.execute();

        assertEquals(Boolean.TRUE, testCstmt.getObject(1));
        assertEquals(Integer.valueOf(1234), testCstmt.getObject(2));
        assertEquals("MySQL", testCstmt.getObject(3));

        testCstmt.registerOutParameter(1, JDBCType.BOOLEAN, 1);
        testCstmt.registerOutParameter(2, JDBCType.INTEGER, 1);
        testCstmt.registerOutParameter(3, JDBCType.CHAR, 1);
        testCstmt.execute();

        assertEquals(Bool