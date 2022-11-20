

        int j = 0;

        while (this.rs.next()) {
            try {
                assertEquals("Wrong column name:" + this.rs.getString(4), fields[j++], this.rs.getString(4));
            } catch (ComparisonFailure cfEx) {
                if (j == 3) {
                    // If we're on a mac, we're out of luck
                    // we can't store this in the filesystem...

                    if (!Constants.OS_NAME.startsWith("Mac")) {
                        throw cfEx;
                    }
                }
            }
        }

        this.rs.close();

        this.rs = this.stmt.executeQuery("SELECT * FROM tst");

        ResultSetMetaData rsmd = this.rs.getMetaData();

        for (int i = 1; i <= rsmd.getColumnCount(); i++) {
            try {
                assertEquals("Wrong column name:" + rsmd.getColumnName(i), fields[i - 1], rsmd.getColumnName(i));
            } catch (ComparisonFailure cfEx) {
                if (i - 1 == 3) {
                    // If we're on a mac, we're out of luck
                    // we can't store this in the filesystem...

                    if (!Constants.OS_NAME.startsWith("Mac")) {
                        throw cfEx;
                    }
                }
            }
        }
    }

    /**
     * Tests fix for Bug#33594 - When cursor fetch is enabled, wrong metadata is
     * returned from DBMD.
     * 
     * The fix is two parts.
     * 
     * First, when asking for the first column value twice from a cursor-fetched
     * row, the driver didn't re-position, and thus the "next" column was
     * returned.
     * 
     * Second, metadata statements and internal statements the driver uses
     * shouldn't use cursor-based fetching at all, so we've ensured that
     * internal statements have their fetch size set to "0".
     */
    public void testBug33594() throws Exception {
     