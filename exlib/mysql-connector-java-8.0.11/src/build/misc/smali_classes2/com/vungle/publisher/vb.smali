eters passed both in unquoted and quoted form,
     * quoted form is not JDBC-compliant but used by third party tools. So when you pass the indentifier
     * "`dbname`" in unquoted form (`dbname`) driver handles it as quoted by "`" symbol. To handle such
     * identifiers correctly a new behavior was added to pedantic mode (connection property pedantic=true),
     * now if it set to true methods like DatabaseMetaData.getColumns() treat all parameters as unquoted.
     * 
     * @throws Exception
     *             if the test fails.
     */
    public void testBug65871() throws Exception {
        createTable("testbug65871_foreign",
                "(cpd_foreign_1_id int(8) not null, cpd_foreign_2_id int(8) not null," + "primary key (cpd_foreign_1_id, cpd_foreign_2_id)) ", "InnoDB");

        Connection pedanticConn = null;
        Connection pedanticConn_IS = null;
        Connection nonPedanticConn = null;
        Connection nonPedanticConn_IS = null;

        try {
            Properties props = new Properties();
            props.setProperty(PropertyDefinitions.PNAME_sessionVariables, "sql_mode=ansi");
            nonPedanticConn = getConnectionWithProps(props);

            props.setProperty(PropertyDefinitions.PNAME_useInformationSchema, "true");
            nonPedanticConn_IS = getConnectionWithProps(props);

            props.setProperty(PropertyDefinitions.PNAME_pedantic, "true");
            pedanticConn_IS = getConnectionWithProps(props);

            props.setProperty(PropertyDefinitions.PNAME_useInformationSchema, "false");
            pedanticConn = getConnectionWithProps(props);

            System.out.println("1. Non-pedantic, without I_S.");
            testBug65871_testCatalogs(nonPedanticConn);

            System.out.println("2. Pedantic, without I_S.");
            testBug65871_testCatalogs(pedanticConn);

            System.out.println("3. Non-pedantic, with I_S.");
            testBug65871_testCatalogs(nonPedanticConn_IS);

            System.out.println("4. Pedantic, with I_S.");
            testBug65871_testCatalogs(pedanticConn_IS);

        } finally {
            if (pedanticConn != null) {
                pedanticConn.close();
            }
            if (nonPedanticConn != null) {
                nonPedanticConn.close();
            }
        }
    }

    private void testBug65871_testCatalogs(Connection conn1) throws Exception {
        boolean pedantic = ((MysqlConnection) conn1).getPropertySet().getBooleanReadableProperty(PropertyDefinitions.PNAME_pedantic).getValue();

        testBug65871_testCatalog("db1`testbug65871", StringUtils.quoteIdentifier("db1`testbug65871", pedantic), conn1);

        testBug65871_testCatalog("db2`testbug65871", StringUtils.quoteIdentifier("db2`testbug65871", "\"", pedantic), conn1);

        testBug65871_testCatalog("`db3`testbug65871`", StringUtils.quoteIdentifier("`db3`testbug65871`", "\"", pedantic), conn1);
    }

    private void testBug65871_testCatalog(String unquotedDbName, String quotedDbName, Connection conn1) throws Exception {

        Statement st1 = null;

        try {
            st1 = conn1.createStatement();

            // 1. catalog
            st1.executeUpdate("DROP DATABASE IF EXISTS " + quotedDbName);
            st1.executeUpdate("CREATE DATABASE " + quotedDbName);
            this.rs = st1.executeQuery("show databases like '" + unquotedDbName + "'");
            if (this.rs.next()) {
                assertEquals(unquotedDbName, this.rs.getString(1));
            } else {
                fail("Database