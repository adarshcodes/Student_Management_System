.ST:1. Statement.isClosed(): true when last ResultSet is closed.", testStatement.isClosed());

        // **testing PreparedStatement**
        // PreparedStatement using closeOnCompletion should be closed when last ResultSet is closed
        testPrepStatement = (PreparedStatement) testConnection.prepareStatement("SELECT 1");
        testPrepStatement.closeOnCompletion();

        testResultSet1 = testPrepStatement.executeQuery();

        assertFalse(testStep + ".PS:1. ResultSet.isClosed(): false.", testResultSet1.isClosed());
        assertFalse(testStep + ".PS:1. PreparedStatement.isClosed(): false.", testPrepStatement.isClosed());

        while (testResultSet1.next()) {
        }

        assertFalse(testStep + ".PS:1. ResultSet.isClosed(): false after ResultSet have reached the end.", testResultSet1.isClosed());
        assertFalse(testStep + ".PS:1. PreparedStatement.isClosed(): false.", testPrepStatement.isClosed());

        testResultSet1.close(); // last open ResultSet, must close Statement

        assertTrue(testStep + ".PS:1. ResultSet.isClosed(): true.", testResultSet1.isClosed());
        assertTrue(testStep + ".PS:1. PreparedStatement.isClosed(): true when last ResultSet is closed.", testPrepStatement.isClosed());

        /*
         * SUB-STEP 2: Multiple ResultSets, sequentially (holdResultsOpenOverStatementClose=true)
         */
        testStatement = (StatementImpl) testConnection.createStatement();
        testStatement.closeOnCompletion();

        testResultSet1 = testStatement.executeQuery("SELECT 1");
        testResultSet2 = testStatement.executeQuery("SELECT 2"); // mustn't close testResultSet1

        assertFalse(testStep + ".ST:2. ResultSet.isClosed(): false after 2nd Statement.executeQuery().", testResultSet1.isClosed());
        assertFalse(testStep + ".ST:2. ResultSet.isClosed(): false.", testResultSet2.isClosed());
        assertFalse(testStep + ".ST:2. Statement.isClosed(): false.", testStatement.isClosed());

        while (testResultSet2.next()) {
        }

        assertFalse(testStep + ".ST:2. ResultSet.isClosed(): false.", testResultSet1.isClosed());
        assertFalse(testStep + ".ST:2. ResultSet.isClosed(): false after ResultSet have reached the end.", testResultSet2.isClosed());
        assertFalse(testStep + ".ST:2. Statement.isClosed(): false.", testStatement.isClosed());

        testResultSet3 = testStatement.executeQuery("SELECT 3"); // mustn't close testResultSet1 nor testResultSet2

        assertFalse(testStep + ".ST:2. ResultSet.isClosed(): false.", testResultSet1.isClosed());
        assertFalse(testStep + ".ST:2. ResultSet.isClosed(): false after 3rd Statement.executeQuery().", testResultSet2.isClosed());
        assertFalse(testStep + ".ST:2. ResultSet.isClosed(): false.", testResultSet3.isClosed());
        assertFalse(testStep + ".ST:2. Statement.isClosed(): false.", testStatement.isClosed());

        testResultSet2.close();

        assertFalse(testStep + ".ST:2. ResultSet.isClosed(): false.", testResultSet1.isClosed());
        assertTrue(testStep + ".ST:2. ResultSet.isClosed(): true.", testResultSet2.isClosed());
        assertFalse(testStep + ".ST:2. ResultSet.isClosed(): false.", testResultSet3.isClosed());
        assertFalse(testStep + ".ST:2. Statement.isClosed(): false.", testStatement.isClosed());

        testResultSet1.close();
        testResultSet3.close(); // last open ResultSet, must close Statement

        assertTrue(testStep + ".ST:2. ResultSet.isClosed(): true.", testResultSet1.isClosed());
        assertTrue(testStep + ".ST:2. ResultSet.isClosed(): true.", testResultSet2.isClosed());
        assertTrue(testStep + ".ST:2. ResultSet.isClosed(): true.", testResultSet3.isClosed());
        assertTrue(testStep + ".ST:2. Statement.isClosed(): true when last ResultSet is closed.", testStatement.isClosed());

        /*
         * SUB-STEP 3: Multiple ResultSets, returned at once (holdResultsOpenOverStatementClose=true)
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
         * SUB-STEP 4: Generated Keys ResultSet (holdResultsOpenOverStatementClose=true)
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

        assertFalse(testStep + ".ST:4. ResultSet.isClosed(): false after executeQuery() in same Statement.", testResultSet1.isClosed()