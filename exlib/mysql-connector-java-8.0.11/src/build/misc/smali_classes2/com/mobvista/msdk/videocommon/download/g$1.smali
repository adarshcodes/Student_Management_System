s(row, this.testLocalDateTime, this.rs.getObject("ts", LocalDateTime.class));
        }
        assertEquals(expectedRowCount, rowCount);
    }

    /**
     * Helper method for *SetObject* tests.
     * Insert data into the given PreparedStatement, or any of its subclasses, with the following structure:
     * 1 - `id` INT
     * 2 - `ot1` VARCHAR
     * 3 - `ot2` BLOB
     * 4 - `odt1` VARCHAR
     * 5 - `odt2` BLOB
     * 
     * @param prepStmt
     * @return the row count of inserted records.
     * @throws Exception
     */
    private int insertTestDataOffsetDTTypes(PreparedStatement prepStmt) throws Exception {
        prepStmt.setInt(1, 1);
        prepStmt.setObject(2, this.testOffsetTime, JDBCType.VARCHAR);
        prepStmt.setObject(3, this.testOffsetTime);
        prepStmt.setObject(4, this.testOffsetDateTime, JDBCType.VARCHAR);
        prepStmt.setObject(5, this.testOffsetDateTime);
        assertEquals(1, prepStmt.executeUpdate());

        if (prepStmt instanceof CallableStatement) {
            CallableStatement cstmt = (CallableStatement) prepStmt;

            cstmt.setInt("id", 2);
            cstmt.setObject("ot1", this.testOffsetTime, JDBCType.VARCHAR);
            cstmt.setObject("ot2", this.testOffsetTime);
            cstmt.setObject("odt1", this.testOffsetDateTime, JDBCType.VARCHAR);
            cstmt.setObject("odt2", this.testOffsetDateTime);
            assertEquals(1, cstmt.executeUpdate());

            return 2;
        }

        return 1;
    }

    /**
     * Helper method for *SetObject* tests.
     * Validate the test data contained in the given ResultSet with following structure:
     * 1 - `id` INT
     * 2 - `ot1` VARCHAR
     * 3 - `ot2` BLOB
     * 4 - `odt1` VARCHAR
     * 5 - `odt2` BLOB
     * 
     * Additionally validate support for the types java.time.Offset[Date]Time in ResultSet.getObject().
     * 
     * @param tableName
     * @param expectedRowCount
     * @throws Exception
     */
    private void validateTestDataOffsetDTTypes(String tableName, int expectedRowCount) throws Exception {
        Connection testConn = getConnectionWithProps("autoDeserialize=true"); // Offset[Date]Time are supported via object serialization too.
        Statement testStmt = testConn.createStatement();
        this.rs = testStmt.executeQuery("SELECT * FROM " + tableName);

        int rowCount = 0;
        while (this.rs.next()) {
            String row = "Row " + this.rs.getInt(1);
            assertEquals(++rowCount, this.rs.getInt(1));

            assertEquals(row, this.testOffsetTime, this.rs.getObject(2, OffsetTime.class));
            assertEquals(row, this.testOffsetTime, this.rs.getObject(3, OffsetTime.class));
            assertEquals(row, this.testOffsetDateTime, this.rs.getObject(4, OffsetDateTime.class));
            assertEquals(row, this.testOffsetDateTime, this.rs.getObject(5, OffsetDateTime.class));

            assertEquals(row, rowCount, this.rs.getInt("id"));

            assertEquals(row, this.testOffsetTime, this.rs.getObject("ot1", OffsetTime.class));
            assertEquals(row, this.testOffsetTime, this.rs.getObject("ot2", OffsetTime.