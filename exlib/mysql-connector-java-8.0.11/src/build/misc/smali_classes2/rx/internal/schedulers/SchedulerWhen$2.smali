    testCstmt.registerOutParameter("c", JDBCType.CHAR);
        testCstmt.execute();

        assertEquals(Boolean.TRUE, testCstmt.getObject(1));
        assertEquals(Integer.valueOf(1234), testCstmt.getObject(2));
        assertEquals("MySQL", testCstmt.getObject(3));

        testCstmt.registerOutParameter("b", JDBCType.BOOLEAN, 1);
        testCstmt.registerOutParameter("i", JDBCType.INTEGER, 1);
        testCstmt.registerOutParameter("c", JDBCType.CHAR, 1);
        testCstmt.execute();

        assertEquals(Boolean.TRUE, testCstmt.getObject(1));
        assertEquals(Integer.valueOf(1234), testCstmt.getObject(2));
        assertEquals("MySQL", testCstmt.getObject(3));

        testCstmt.registerOutParameter("b", JDBCType.BOOLEAN, "dummy");
        testCstmt.registerOutParameter("i", JDBCType.INTEGER, "dummy");
        testCstmt.registerOutParameter("c", JDBCType.CHAR, "dummy");
        testCstmt.execute();

        assertEquals(Boolean.TRUE, testCstmt.getObject(1));
        assertEquals(Integer.valueOf(1234), testCstmt.getObject(2));
        assertEquals("MySQL", testCstmt.getObject(3));
    }

    /**
     * Test for CallableStatement.registerOutParameter(...MysqlType...).
     */
    public void testCallStmtRegisterOutParameterWithMysqlType() throws Exception {
        createProcedure("testRegisterOutParameterProc", "(OUT b BIT, OUT i INT, OUT c CHAR(10)) BEGIN SELECT 1, 1234, 'MySQL' INTO b, i, c; END");
        final CallableStatement testCstmt = this.conn.prepareCall("{CALL testRegisterOutParameterProc(?, ?, ?)}");

        // registerOutParameter by parameter index
        testCstmt.registerOutParameter(1, MysqlType.BOOLEAN);
        testCstmt.registerOutParameter(2, MysqlType.INT);
        testCstmt.registerOutParameter(3, MysqlType.CHAR);
        testCstmt.execute();

        assertEquals(Boolean.TRUE, testCstmt.getObject(1));
        assertEquals(Integer.valueOf(1234), testCstmt.getObject(2));
        assertEquals("MySQL", testCstmt.getObject(3));

        testCstmt.registerOutParameter(1, MysqlType.BOOLEAN, 1);
        testCstmt.registerOutParameter(2, MysqlType.INT, 1);
        testCstmt.registerOutParameter(3, MysqlType.CHAR, 1);
        testCstmt.execute();

        assertEquals(Boolean.TRUE, testCstmt.getObject(1));
        assertEquals(Integer.valueOf(1234), testCstmt.getObject(2));
        assertEquals("MySQL", testCstmt.getObject(3));

        testCstmt.registerOutParameter(1, MysqlType.BOOLEAN, "dummy");
        testCstmt.registerOutParameter(2, MysqlType.INT, "dummy");
        testCstmt.registerOutParameter(3, MysqlType.CHAR, "dummy");
        testCstmt.execute();

        assertEquals(Boolean.TRUE, testCstmt.getObject(1));
        assertEquals(Integer.valueOf(1234), testCstmt.getObject(2));
        assertEquals("MySQL", testCstmt.getObject(3));

        // registerOutParameter by parameter name
        testCstmt.registerOutParameter("b", MysqlType.BOOLEAN);
        testCstmt.registerOutParameter("i", MysqlType.INT);
        testCstmt.registerOutParameter("c", MysqlType.CHAR);
        testCstmt.execute();

        assertEquals(Boolean.TRUE, testCstmt.getObject(1));
        assertEquals(Integer.valueOf(1234), testCstmt.getObject(2));
        assertEquals("MySQL", testCstmt.getObject(3));

        testCstmt.registerOutParameter("b", MysqlType.BOOLEAN, 1);
        testCstmt.registerOutParameter("i", MysqlType.INT, 1);
        testCstmt.registerOutParameter("c", MysqlType.CHAR, 1);
        testCstmt.execute();

        assertEquals(Boolean.TRUE, testCstmt.getObject(1));
        assertEquals(Integer.valueOf(1234), testCstmt.getObject(2));
        assertEquals("MySQL", testCstmt.getObject(3));

        testCstmt.registerOutParameter("b", MysqlType.BOOLEAN, "dummy");
        testCstmt.registerOutParameter("i", MysqlType.INT, "dummy");
        testCstmt.registerOutParameter("c", MysqlType.CHAR, "dummy");
        testCstmt.execute();

        assertEquals(Boolean.TRUE, testCstmt.getObject(1));
        assertEquals(Integer.valueOf(1234), testCstmt.getObject(2));
        assertEquals("MySQL", testCstmt.getObject(3));
    }

    /**
     * Test for CallableStatement.registerOutParameter(), unsup