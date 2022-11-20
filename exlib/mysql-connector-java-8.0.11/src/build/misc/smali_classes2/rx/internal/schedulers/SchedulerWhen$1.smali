   deploy.setIncludeDT(isTrue(includeDT));
                    if(defined(offline)) {
                        if(isTrue(fx_ant_api_1_1)) {
                            deploy.setOfflineAllowed(isTrue(offline));
                        } else {
                            print("Warning: offlineAllowed not supported by this version of JavaFX SDK deployment Ant task. Please upgrade JavaFX to 2.0.2 or higher.");
                        }
                    }
                    // native packaging (time consuming, thus applied in explicit build only)
                    var nativeEnabled = new String(project.getProperty("do.build.native.package"));
                    var nativeType = new String(project.getProperty("javafx.native.bundling.type"));
                    var projStateRun = new String(project.getProperty("project.state.running"));
                    var projStateDbg = new String(project.getProperty("project.state.debugging"));
                    var projStatePrf = new String(project.getProperty("project.state.profiling"));
                    if(isTrue(nativeEnabled) && defined(nativeType) && nativeType != "none") {
                        if(!isTrue(projStateRun) && !isTrue(projStateDbg) && !isTrue(projStatePrf)) {
                            if(isTrue(fx_ant_api_1_2)) {
                                deploy.setNativeBundles(nativeType);
                                print("Note: To create native bundles the <fx:deploy> task may require external tools. See JavaFX 2.2+ documentation for details.");
                                print("");
                                print("Launching <fx:deploy> in native packager mode...");
                            } else {
                                print("Warning: Native packaging is not supported by this version of JavaFX SDK deployment Ant task. Please upgrade to JDK 7u6 or higher.");
                            }
                        }
                    }

                    // fx:application
                    var app = deploy.createApplication();
                    app.setProject(project);
                    var title = new String(project.getProperty("application.title"));
                    var mainclass;
                    if(isTrue(fx_in_swing_app) && isTrue(fx_ant_api_1_2)) {
                        mainclass = new String(project.getProperty("main.class"));
                        app.setToolkit("swing");
      