rs = this.conn.getMetaData().getColumns(this.conn.getCatalog(), null, "testBug27916", "%");

        for (int i = 0; i < rsmd.getColumnCount(); i++) {
            this.rs.next();
            String typeName = this.rs.getString("TYPE_NAME");

            assertEquals(typeName, rsmd.getColumnTypeName(i + 1));
            assertEquals(typeName, this.rs.getInt("COLUMN_SIZE"), rsmd.getPrecision(i + 1));
            assertEquals(typeName, new Integer(rsmd.getPrecision(i + 1)), typeNameToPrecision.get(typeName));
        }

        Properties props = new Properties();
        props.setProperty(PropertyDefinitions.PNAME_useInformationSchema, "false");
        ArrayList<String> types = new ArrayList<>();
        Connection PropConn = getConnectionWithProps(props);
        try {
            DatabaseMetaData dbmd = PropConn.getMetaData();
            this.rs = dbmd.getTypeInfo();
            while (this.rs.next()) {
                types.add(this.rs.getString("TYPE_NAME"));
            }
            this.rs.close();

            this.rs = dbmd.getColumns("mysql", null, "time_zone_transition", "%");
            while (this.rs.next()) {
                String typeName = this.rs.getString("TYPE_NAME");
                assertTrue(typeName, types.contains(typeName));
            }
            this.rs.close();
            this.rs = dbmd.getColumns("mysql", null, "proc", "%");
            while (this.rs.next()) {
                String typeName = this.rs.getString("TYPE_NAME");
                assertTrue(typeName, types.contains(typeName));
            }
            this.rs.close();
            PropConn.close();
            props.clear();

            props.setProperty(PropertyDefinitions.PNAME_useInformationSchema, "true");
            PropConn = getConnectionWithProps(props);
            dbmd = PropConn.getMetaData();

            this.rs = dbmd.getColumns("mysql", null, "time_zone_transition", "%");
            while (this.rs.next()) {
                String typeName = this.rs.getString("TYPE_NAME");
                assertTrue(typeName, types.contains(typeName));
            }
            this.rs.close();
            this.rs = dbmd.getColumns("mysql", null, "proc", "%");
            while (this.rs.next()) {
                String typeName = this.rs.getString("TYPE_NAME");
                assertTrue(typeName, types.contains(typeName));
            }
            this.rs.close();
            PropConn.close();
            props.clear();
        } finally {
            if (PropConn != null) {
                PropConn.close();
            }
        }
    }

    public void testBug20491() throws Exception {
        System.out.println("testBug20491:");
        this.rs = this.stmt.executeQuery("SHOW VARIABLES LIKE '%char%'");
        while (this.rs.next()) {
            System.out.println(this.rs.getString(1) + " = " + this.rs.getString(2));
        }
        this.rs.close();

        String[] fields = { "field1_ae_\u00e4", "field2_ue_\u00fc", "field3_oe_\u00f6", "field4_sz_\u00df" };

        createTable("tst", "(`" + fields[0] + "` int(10) unsigned NOT NULL default '0', `" + fields[1] + "` varchar(45) default '', `" + fields[2]
                + "` varchar(45) default '', `" + fields[3] + "` varchar(45) default '', PRIMARY KEY  (`" + fields[0] + "`))");

        // demonstrate that these are all in the Cp1252 encod