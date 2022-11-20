ClassName(3).equals("java.lang.Double"));
        assertTrue(this.rs.getObject(3).getClass().getName().equals("java.lang.Double"));

    }

    /**
     * Tests that ResultSetMetaData precision and scale methods work correctly
     * for all numeric types.
     * 
     * @throws Exception
     *             if any errors occur
     */
    public void testPrecisionAndScale() throws Exception {
        testPrecisionForType("TINYINT", 8, -1, false);
        testPrecisionForType("TINYINT", 8, -1, true);
        testPrecisionForType("SMALLINT", 8, -1, false);
        testPrecisionForType("SMALLINT", 8, -1, true);
        testPrecisionForType("MEDIUMINT", 8, -1, false);
        testPrecisionForType("MEDIUMINT", 8, -1, true);
        testPrecisionForType("INT", 8, -1, false);
        testPrecisionForType("INT", 8, -1, true);
        testPrecisionForType("BIGINT", 8, -1, false);
        testPrecisionForType("BIGINT", 8, -1, true);

        testPrecisionForType("FLOAT", 8, 4, false);
        testPrecisionForType("FLOAT", 8, 4, true);
        testPrecisionForType("DOUBLE", 8, 4, false);
        testPrecisionForType("DOUBLE", 8, 4, true);

        testPrecisionForType("DECIMAL", 8, 4, false);
        testPrecisionForType("DECIMAL", 8, 4, true);

        testPrecisionForType("DECIMAL", 9, 0, false);
        testPrecisionForType("DECIMAL", 9, 0, true);
    }

    private void testPrecisionForType(String typeName, int m, int d, boolean unsigned) throws Exception {
        try {
            this.stmt.executeUpdate("DROP TABLE IF EXISTS precisionAndScaleRegression");

            StringBuilder createStatement = new StringBuilder("CREATE TABLE precisionAndScaleRegression ( val ");
            createStatement.append(typeName);
            createStatement.append("(");
            createStatement.append(m);

            if (d != -1) {
                createStatement.append(",");
                createStatement.append(d);
            }

            createStatement.append(")");

            if (unsigned) {
                createStatement.append(" UNSIGNED ");
            }

            createStatement.append(" NOT NULL)");

            this.stmt.executeUpdate(createStatement.toString());

            this.rs = this.stmt.executeQuery("SELECT val FROM precisionAndScaleRegres