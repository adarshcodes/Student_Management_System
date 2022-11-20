DATETIME NULL ON UPDATE CURRENT_TIMESTAMP  AFTER `f2`");
        dmd = con.getMetaData();
        this.rs = dmd.getVersionColumns(dbname, dbname, "testBug63800");
        cnt = 0;
        while (this.rs.next()) {
            cnt++;
            assertEquals("1 column must be found", 1, cnt);
            assertEquals("Wrong column or single column not found", "f3", this.rs.getString(2));
        }

        // ALTER 2 test
        st.execute("ALTER TABLE testBug63800 CHANGE COLUMN `f2` `f2` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP");
        dmd = con.getMetaData();
        this.rs = dmd.getVersionColumns(dbname, dbname, "testBug63800");
        cnt = 0;
        while (this.rs.next()) {
            cnt++;
        }
        assertEquals("2 column must be found", 2, cnt);

        boolean explicitDefaultsForTimestamp = false;
        if (versionMeetsMinimum(8, 0, 2)) {
            String v = getMysqlVariable("explicit_defaults_for_timestamp");
            if ("ON".equals(v)) {
                explicitDefaultsForTimestamp = true;
            }
        }

        st.execute("DROP  TABLE IF EXISTS testBug63800");
        st.execute("CREATE TABLE testBug63800(f1 TIMESTAMP, f2 DATETIME ON UPDATE CURRENT_TIMESTAMP, f3 TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP)");
        dmd = con.getMetaData();
        this.rs = dmd.getVersionColumns(dbname, dbname, "testBug63800");
        cnt = 0;
        while (this.rs.next()) {
            cnt++;
        }
        if (explicitDefaultsForTimestamp) {
            assertEquals("2 column must be found", 2, cnt);
        } else {
            assertEquals("3 column must be found", 3, cnt);
        }

    }

    /**
     * Tests fix for BUG#16436511 - getDriverName() returns a string with company name "MySQL-AB"
     * 
     * @throws Exception
     *             if the test fails.
     */
    public void testBug16436511() throws Exception {
        DatabaseMetaData dbmd = this.conn.getMetaData();
        assertEquals("MySQL Connector/J", dbmd.getDriverName());
    }

    /**
     * Test fix for BUG#68098 - DatabaseMetaData.getIndexInfo sorts results incorrectly.
     * 
     * @throws Exception
     *             if the test fails.
     */
    public void testBug68098() throws Exception {
        String[] testStepDescription = new String[] { "MySQL MetaData", "I__S MetaData" };
        Connection connUseIS = getConnectionWithProps("useInformationSchema=true");
        Connection[] testConnections = new Connection[] { this.conn, connUseIS };
        String[] expectedIndexesOrder = new String[] { "index_1", "index_1", "index_3", "PRIMARY", "index_2", "index_2", "index_4" };

        this.stmt.execute("DROP TABLE IF EXISTS testBug68098");

        createTable("testBug68098", "(column_1 INT NOT NULL, column_2 INT NOT NULL, column_3 INT NOT NULL, PRIMARY KEY (column_1))");

        this.stmt.execute("CREATE INDEX index_4 ON testBug68098 (column_2)");
        this.stmt.execute("CREATE UNIQUE INDEX index_3 ON testBug68098 (column_3)");
        this.stmt.execute("CREATE INDEX index_2 ON testBug68098 (column_2, column_1)");
        this.stmt.execute("CREATE UNIQUE INDEX index_1 ON testBug68098 (column_3, column_2)");

        for (int i = 0; i < testStepDescription.l