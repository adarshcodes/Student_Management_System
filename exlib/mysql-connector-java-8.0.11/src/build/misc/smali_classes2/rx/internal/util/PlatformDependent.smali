ement = null;
        CallableStatement testCallStatement = null;

        /*
         * Testing with connection property dontTrackOpenResources=true
         */
        testStep = "Conn. Prop. 'dontTrackOpenResources'";
        testConnection = getConnectionWithProps("dontTrackOpenResources=true");

        /*
         * SUB-STEP 0: The basics (dontTrackOpenResources=true)
         */
        // **testing Statement**
        // ResultSets should stay open when owning Statement is closed
        testStatement = (StatementImpl) testConnection.createStatement();

        assertFalse(testStep + ".ST:0. Statement.isCloseOnCompletion(): false by default.", testStatement.isCloseOnCompletion());
        assertFalse(testStep + ".ST:0. Statement.isClosed(): false.", testStatement.isClosed());

        testStatement.closeOnCompletion();

        assertTrue(testStep + ".ST:0. Statement.isCloseOnCompletion(): true after Statement.closeOnCompletion().", testStatement.isCloseOnCompletion());
        assertFalse(testStep + ".ST:0. Statement.isClosed(): false.", testStatement.isClosed());

        testStatement.closeOnCompletion();

        assertTrue(testStep + ".ST:0. Statement.isCloseOnCompletion(): true after 2nd Statement.closeOnCompletion().", testStatement.isCloseOnCompletion());

        // test Statement.close()
        testResultSet1 = testStatement.executeQuery("SELECT 1");

        assertFalse(testStep + ".ST:0. ResultSet.isClosed(): false.", testResultSet1.isClosed());
        assertFalse(testStep + ".ST:0. Statement.isClosed(): false.", testStatement.isClosed());

        testStatement.close();

        assertFalse(testStep + ".ST:0. ResultSet.isClosed(): false after Statement.Close().", testResultSet1.isClosed());
        assertTrue(testStep + ".ST:0. Statement.isClosed(): true after Statement.Close().", testStatement.isClosed());

        // **testing PreparedStatement**
        // ResultSets should stay open when owning PreparedStatement is closed
        testPrepStatement = (com.mysql.jdbc.PreparedStatement) testConnection.prepareStatement("SELECT 1");

        assertFalse(testStep + ".PS:0. PreparedStatement.isCloseOnCompletion(): false by default.", testPrepStatement.isCloseOnCompletion());
        assertFalse(testStep + ".PS:0. PreparedStatement.isClosed(): false.", testPrepStatement.isClosed());

        testPrepStatement.closeOnCompletion();

        assertTrue(testStep + ".PS:0. PreparedStatement.isCloseOnCompletion(): true after Statement.closeOnCompletion().",
                testPrepStatement.isCloseOnCompletion());
        assertFalse(testStep + ".PS:0. PreparedStatement.isClosed(): false.", testPrepStatement.isClosed());

        testPrepStatement.closeOnCompletion();

        assertTrue(testStep + ".PS:0. PreparedStatement.isCloseOnCompletion(): true after 2nd Statement.closeOnCompletion().",
                testPrepStatement.isCloseOnCompletion());

        // test PreparedStatement.close()
        testPrepStatement.execute();
        testResultSet1 = testPrepStatement.getResultSet();

        assertFalse(testStep + ".PS:0. ResultSet.isClosed(): false.", testResultSet1.isClosed());
        assertFalse(testStep + ".PS:0. PreparedStatement.isClosed(): false.", testPrepStatement.isClosed());

        testPrepStatement.close();

        assertFalse(testStep + ".PS:0. ResultSet.isClosed(): false after PreparedStatement.close().", testResultSet1.isClosed());
        assertTrue(testStep + ".PS:0. PreparedStatement.isClosed(): true after PreparedStatement.close().", testPrepStatement.isClosed());

        /*
         * SUB-STEP 1: One ResultSet (dontTrackOpenResources=true)
         */
       