this.disconnectOnExpiredPasswords.getValue()) {
                throw ex;
            }
        } catch (IOException e) {
            throw ExceptionFactory.createException(e.getMessage(), e);
        }

        if (this.cacheServerConfiguration.getValue()) {
            this.protocol.getServerSession().getServerVariables().put(SERVER_VERSION_STRING_VAR_NAME, getServerSession().getServerVersion().toString());
            this.serverConfigCache.put(this.hostInfo.getDatabaseUrl(), this.protocol.getServerSession().getServerVariables());
        }
    }

    public void setSessionVariables() {
        String sessionVariables = getPropertySet().getStringReadableProperty(PropertyDefinitions.PNAME_sessionVariables).getValue();
        if (sessionVariables != null) {
            List<String> variablesToSet = new ArrayList<>();
            for (String part : StringUtils.split(sessionVariables, ",", "\"'(", "\"')", "\"'", true)) {
                variablesToSet.addAll(StringUtils.split(part, ";", "\"'(", "\"')", "\"'", true));
            }

            if (!variablesToSet.isEmpty()) {
                StringBuilder query = new StringBuilder("SET ");
                String separator = "";
                for (String variableToSet : variablesToSet) {
                    if (variableToSet.length() > 0) {
                        query.append(separator);
                        if (!variableToSet.startsWith("@")) {
                            query.append("SESSION ");
                        }
                        query.append(variableToSet);
                        separator = ",";
                    }
                }
                sendCommand(this.commandBuilder.buildComQuery(null, query.toString()), false, 0);
            }
        }
    }

    /**
     * Builds the map needed for 4.1.0 and newer servers that maps field-level
     * charset/collation info to a java character encoding name.
     */
    public void buildCollationMapping() {

        Map<Integer, String> customCharset = null;
        Map<String, Integer> customMblen = null;

        String databaseURL = this.hostInfo.getDatabaseUrl();

        if (this.cacheServerConfiguration.getValue()) {
            synchronized (customIndexToCharsetMapByUrl) {
                customCharset = customIndexToCharsetMapByUrl.get(databaseURL);
                customMblen = customCharsetToMblenMapByUrl.get(databaseURL);
            }
        }

        if (customCharset == null && getPropertySet().getBooleanReadableProperty(PropertyDefinitions.PNAME_detectCustomCollations).getValue()) {
            customCharset = new HashMap<>();
            customMblen = new HashMap<>();

            ValueFactory<Integer> ivf = new IntegerValueFactory();

            try {
                NativePacketPayload resultPacket = sendCommand(this.commandBuilder.buildComQuery(null, "SHOW COLLATION"), false, 0);
                Resultset rs = ((NativeProtocol) this.protocol).readAllResults(-1, false, resultPacket, false, null,
                        new ResultsetFactory(Type.FORWARD_ONLY, null));
                ValueFactory<String> svf = new StringValueFactory(rs.getColumnDefinition().getFields()[1].getEncoding());
                Row r;
                while ((r = rs.getRows().next()) != null) 