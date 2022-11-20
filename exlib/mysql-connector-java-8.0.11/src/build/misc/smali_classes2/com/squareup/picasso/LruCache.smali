ement.executeQuery().", testResultSet1.isClosed());
        assertFalse(testStep + ".ST:2. ResultSet.isClosed(): false.", testResultSet2.isClosed());
        assertFalse(testStep + ".ST:2. Statement.isClosed(): false.", testStatement.isClosed());

        while (testResultSet2.next()) {
        }

        assertTrue(testStep + ".ST:2. ResultSet.isClosed(): true.", testResultSet1.isClosed());
        assertFalse(testStep + ".ST:2. ResultSet.isClosed(): false after ResultSet have reached the end.", testResultSet2.isClosed());
        assertFalse(testStep + ".ST:2. Statement.isClosed(): false.", testStatement.isClosed());

        testResultSet3 = testStatement.executeQuery("SELECT 3"); // closes testResultSet2

        assertTrue(testStep + ".ST:2. ResultSet.isClosed(): true.", testResultSet1.isClosed());
        assertTrue(testStep + ".ST:2. ResultSet.isClosed(): true after 3rd Statement.executeQuery().", testResultSet2.isClosed());
        assertFalse(testStep + ".ST:2. ResultSet.isClosed(): false.", testResultSet3.isClosed());
        assertFalse(testStep + ".ST:2. Statement.isClosed(): false.", testStatement.isClosed());

        testResultSet3.close(); // last open ResultSet, must close Statement

        assertTrue(testStep + ".ST:2. ResultSet.isClosed(): true.", testResultSet1.isClosed());
        assertTrue(testStep + ".ST:2. ResultSet.isClosed(): true.", testResultSet2.isClosed());
        assertTrue(testStep + ".ST:2. ResultSet.isClosed(): true.", testResultSet3.isClosed());
        assertTrue(testStep + ".ST:2. Statement.isClosed(): true when last ResultSet is closed.", testStatement.isClosed());

        /*
         * SUB-STEP 3: Multiple ResultSets, returned at once (connection without properties)
         */
        // **testing Statement**
        // Statement using closeOnCompletion should be closed when last ResultSet is closed
        testStatement = (StatementImpl) testConnection.createStatement();
        testStatement.closeOnCompletion();

        assertTrue(testStep + ".ST:3. There should be some ResultSets.", testStatement.execute("CALL testBug68916_proc"));
        testResultSet1 = testStatement.getResultSet();

        assertFalse(testStep + ".ST:3. ResultSet.isClosed(): false.", testResultSet1.isClosed());
        assertFalse(testStep + ".ST:3. Statement.isClosed(): false.", testStatement.isClosed());

        assertTrue(testStep + ".ST:3. There should be more ResultSets.", testStatement.getMoreResults(Statement.KEEP_CURRENT_RESULT));
        testResultSet2 = testStatement.getResultSet();

        assertFalse(testStep + ".ST:3. ResultSet.isClosed(): false after Statement.getMoreResults(Statement.KEEP_CURRENT_RESULT).", testResultSet1.isClosed());
        assertFalse(testStep + ".ST:3. ResultSet.isClosed(): false.", testResultSet2.isClosed());
        assertFalse(testStep + ".ST:3. Statement.isClosed(): false.", testStatement.isClosed());

        assertTrue(testStep + ".ST:3. There should be more ResultSets.", testStatement.getMoreResults(Statement.CLOSE_ALL_RESULTS));
        testResultSet3 = testStatement.getResultSet();

        assertTrue(testStep + ".ST:3. ResultSet.isClosed(): true after Statement.getMoreResults(Statement.CLOSE_ALL_RESULTS).", testResultSet1.isClosed());
        assertTrue(testStep + ".ST:3. ResultSet.isClosed(): true after Statement.getMoreResults(Statement.CLOSE_ALL_RESULTS).", testResultSet2.isClosed());
        assertFalse(testStep + ".ST:3. ResultSet.isClosed(): false.", testResultSet3.isClosed());
        assertFalse(testStep + ".ST:3. Statement.isClosed(): false.", testStatement.isClosed());

        // no more ResultSets, must close Statement
        assertFalse(testStep + ".ST:3. There should be no more ResultSets.", testStatement.getMoreResults());

        assertTrue(testStep + ".ST:3. ResultSet.isClosed(): true.", testResultSet1.isClosed());
        assertTrue(testStep + ".ST:3. ResultSet.isClosed(): true.", testResultSet2.isClosed());
        assertTrue(testStep + ".ST:3. ResultSet.isClosed(): true after last Satement.getMoreResults().", testResultSet3.isClosed());
        assertTrue(testStep + ".ST:3. Statement.isClosed(): true when last ResultSet is closed.", testStatement.isClosed());

        // **testing CallableStatement**
        // CallableStatement using closeOnCompletion should be closed when last ResultSet is closed
        testCallStatement = (CallableStatement) testConnection.prepareCall("CALL testBug68916_proc");
        testCallStatement.closeOnCompletion();

        assertTrue(testStep + ".CS:3. There should be some ResultSets.", testCallStatement.execute());
        testResultSet1 = testCallStatement.getResultSet();

        assertFalse(testStep + ".CS:3. ResultSet.isClosed(): false.", testResultSet1.isClosed());
        assertFalse(testStep + ".CS:3. CallableStatement.isClosed(): false.", testCallStatement.isClosed());

        assertTrue(testStep + ".CS:3. There should be more ResultSets.", testCallStatement.getMoreResults(Statement.KEEP_CURRENT_RESULT));
        testResultSet2 = testCallStatement.getResultSet();

        assertFalse(testStep + ".CS:3. ResultSet.isClosed(): false after Statement.getMoreResults(Statement.KEEP_CURRENT_RESULT).", testResultSet1.isClosed());
        assertFalse(testStep + ".CS:3. ResultSet.isClosed(): false.", testResultSet2.isClosed());
        assertFalse(testStep + ".CS:3. CallableStatement.isClosed(): false.", testCallStatement.isClosed());

        assertTrue(testStep + ".CS:3. There should be more ResultSets.", testCallStatement.getMoreResults(Statement.CLOSE_ALL_RESULTS));
        testResultSet3 = testCallStatement.getResultSet();

        assertTrue(testStep + ".CS:3. ResultSet.isClosed(): true after Statement.getMoreResults(Statement.CLOSE_ALL_RESULTS).", testResultSet1.isClosed());
        assertTrue(testStep + ".CS:3. ResultSet.isClosed(): true after Statement.getMoreResults(Statement.CLOSE_ALL_RESULTS).", testResultSet2.isClosed());
        assertFalse(testStep + ".CS:3. ResultSet.isClosed(): false.", testResultSet3.isClosed());
        assertFalse(testStep + ".CS:3. CallableStatement.isClosed(): false.", testCallStatement.isClosed());

        // no more ResultSets, must close Statement
        assertFalse(testStep + ".CS:3. There should be no more ResultSets.", testCallStatement.getMoreResults());

        assertTrue(testStep + ".CS:3. ResultSet.isClosed(): true.", testResultSet1.isClosed());
        assertTrue(testStep + ".CS:3. ResultSet.isClosed(): true.", testResultSet2.isClosed());
        assertTrue(testStep + ".CS:3. ResultSet.isClosed(): true after last Satement.getMoreResults().", testResultSet3.isClosed());
        assertTrue(testStep + ".CS:3. CallableStatement.isClosed(): true when last ResultSet is closed.", testCallStatement.isClosed());

        /*
         * SUB-STEP 4: Generated Keys ResultSet (connection without properties)
         */
        testStatement = (StatementImpl) testConnection.createStatement();
        testStatement.closeOnCompletion();

        testStatement.executeUpdate("INSERT INTO testBug68916_tbl (fld2) VALUES (1), (2), (3)", Statement.RETURN_GENERATED_KEYS);

        testResultSet1 = testStatement.getGeneratedKeys();
        assertTrue(testStep + ".ST:4. Statement.getGeneratedKeys(): should return some values.", testResultSet1.next());

        assertFalse(testStep + ".ST:4. ResultSet.isClosed(): false.", testResultSet1.isClosed());
        assertFalse(testStep + ".ST:4. Statement.isClosed(): false.", testStatement.isClosed());

        testResultSet1.close(); // last open ResultSet, must close Statement

        assertTrue(testStep + ".ST:4. ResultSet.isClosed(): true.", testResultSet1.isClosed());
        assertTrue(testStep + ".ST:4. Statement.isClosed(): true when last ResultSet is closed.", testStatement.isClosed());

        // test again and combine with simple query
        testStatement = (StatementImpl) testConnection.createStatement();
        testStatement.closeOnCompletion();

        testStatement.executeUpdate("INSERT INTO testBug68916_tbl (fld2) VALUES (4), (5), (6)", Statement.RETURN_GENERATED_KEYS);

        testResultSet1 = testStatement.getGeneratedKeys();
        assertTrue(testStep + ".ST:4. Statement.getGeneratedKeys(): should return some values.", testResultSet1.next());

        testResultSet2 = testStatement.executeQuery("SELECT 2");

        assertTrue(testStep + ".ST:4. ResultSet.isClosed(): true after executeQuery() in same Statement.", testResultSet1.isClosed());
        assertFalse(testStep + ".ST:4. ResultSet.isClosed(): false.", testResultSet2.isClosed());
        assertFalse(testStep + ".ST:4. Statement.isClosed(): false.", testStatement.isClosed());

        testResultSet2.close(); // last open ResultSet, must close Statement

        assertTrue(testStep + ".ST:4. ResultSet.isClosed(): true.", testResultSet1.isClosed());
        assertTrue(testStep + ".ST:4. ResultSet.isClosed(): true.", testResultSet2.isClosed());
        assertTrue(testStep + ".ST:4. Statement.isClosed(): true when last ResultSet is closed.", testStatement.isClosed());
    }

    private void subTestBug68916ForHoldResultsOpenOverStatementClose() throws Exception {
        Connection testConnection;
        String testStep;
        ResultSet testResultSet1, testResultSet2, testResultSet3;

        // We are testing against code that was compiled with Java 6, so methods isCloseOnCompletion() and
        // closeOnCompletion() aren't available in the Statement interface. We need to test directly our
        // implementations.
        StatementImpl testStatement = null;
        PreparedStatement testPrepStatement = null;
        CallableStatement testCallStatement = null;

        /*
         * Testing with connection property holdResultsOpenOverStatementClose=true
         */
        testStep = "Conn. Prop. 'holdResultsOpenOverStatementClose'";
        testConnection = getConnectionWithProps("holdResultsOpenOverStatementClose=true");

        /*
         * SUB-STEP 0: The basics (holdResultsOpenOverStatementClose=true)
         */
        // **testing Statement**
        // ResultSets should stay open when owning Statement is closed
        testStatement = (StatementImpl) testConnection.createStatement();

        assertFalse(testStep + ".ST:0. Statement.isCloseOnCompletion(): false dy default.", testStatement.isCloseOnCompletion());
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
         * SUB-STEP 1: One ResultSet (holdResultsOpenOverStatementClose=true)
         */
        // **testing Statement**
        // Statement using closeOnCompletion should be closed when last ResultSet is closed
        testStatement = (StatementImpl) testConnection.createStatement();
        testStatement.closeOnCompletion();

        testResultSet1 = testStatement.executeQuery("SELECT 1");

        assertFalse(testStep + ".ST:1. ResultSet.isClosed(): false.", testResultSet1.isClosed());
        assertFalse(testStep + ".ST:1. Statement.isClosed(): false.", testStatement.isClosed());

        while (testResultSet1.next()) {
        }

        assertFalse(testStep + ".ST:1. ResultSet.isClosed(): false after ResultSet have reached the end.", testResultSet1.isClosed());
        assertFalse(testStep + ".ST:1. Statement.isClosed(): false.", testStatement.isClosed());

        testResultSet1.close(); // last open ResultSet, must close Statement

        assertTrue(testStep + ".ST:1. ResultSet.isClosed(): true.", testResultSet1.isClosed());
        assertTrue(testStep + ".ST:1. Statement.isClosed(): true when last ResultSet is closed.", testStatement.isClosed());

        // test implicit resultset close keeping statement open, when following with an executeBatch()
        testStatement = (StatementImpl) testConnection.createStatement();
        testStatement.closeOnCompletion();

        testResultSet1 = testStatement.executeQuery("SELECT 1");
        testStatement.addBatch("INSERT INTO testBug68916_tbl (fld2) VALUES (1), (2), (3)");
        testStatement.executeBatch();

        assertFalse(testStep + ".ST:1. ResultSet.isClosed(): false after executeBatch() in same Statement.", testResultSet1.isClosed());
        assertFalse(testStep + ".ST:1. Statement.isClosed(): false.", testStatement.isClosed());

        testResultSet1 = testStatement.getGeneratedKeys();
        testResultSet1.close(); // last open ResultSet, must close Statement

        assertTrue(testStep + ".ST:1. ResultSet.isClosed(): true.", testResultSet1.isClosed());
        assertTrue(testStep + ".ST:1. Statement.isClosed(): true when last ResultSet is closed.", testStatement.isClosed());

        // test implicit resultset close keeping statement open, when following with an executeUpdate()
        testStatement = (StatementImpl) testConnection.createStatement();
        testStatement.closeOnCompletion();

        testResultSet1 = testStatement.executeQuery("SELECT 1");
        testStatement.executeUpdate("INSERT INTO testBug68916_tbl (fld2) VALUES (1), (2), (3)", Statement.RETURN_GENERATED_KEYS);

        assertFalse(testStep + ".ST:1. ResultSet.isClosed(): false after executeUpdate() in same Statement.", testResultSet1.isClosed());
      