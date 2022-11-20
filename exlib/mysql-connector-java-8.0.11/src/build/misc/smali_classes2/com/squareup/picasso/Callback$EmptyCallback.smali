

    /**
     * Tests fix for BUG#25624 - Whitespace surrounding storage/size specifiers
     * in stored procedure declaration causes NumberFormatException to be thrown
     * when calling stored procedure.
     * 
     * @throws Exception
     */
    public void testBug25624() throws Exception {
        //
        // we changed up the parameters to get coverage of the fixes,
        // also note that whitespace _is_ significant in the DDL...
        //
        createProcedure("testBug25624", "(in _par1 decimal( 10 , 2 ) , in _par2 varchar( 4 )) BEGIN select 1; END");

        this.conn.prepareCall("{call testBug25624(?,?)}").close();
    }

    /**
     * Tests fix for BUG#27867 - Schema objects with identifiers other than the
     * connection character aren't retrieved correctly in ResultSetMet