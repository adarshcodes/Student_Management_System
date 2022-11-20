         var JFXPARH = "hidden";
                    var JFXCALLB = "javafx.jscallback";
                    var JFXLAZY = "download.mode.lazy.jar";
                    var withpreloader = new String(project.getProperty("app-with-preloader"));
                    var fx_ant_api_1_1 = new String(project.getProperty("have-fx-ant-api-1.1"));
                    var fx_ant_api_1_2 = new String(project.getProperty("have-fx-ant-api-1.2"));
                    var have_jdk_pre7u14 = new String(project.getProperty("have-jdk-pre7u14"));
                    var fx_in_swing_app = new String(project.getProperty("fx-in-swing-app"));
                    var debug_in_browser = new String(project.getProperty("project.state.debugging.in.browser"));

                    // get jars with lazy download mode property set
                    function getLazyJars() {
                        var jars = new Array();
                        var keys = project.getProperties().keys();
                        while(keys.hasMoreElements()) {
                            var pn = new String(keys.nextElement());
                            if(startsWith(pn, JFXLAZY)) {
                                var fname = pn.substring(JFXLAZY.length+1);
                                jars.push(fname);
                            }
                        }
                        return jars.length > 0 ? jars : null;
                    }
                    // set download mode of dependent libraries
                    function setDownloadMode(fsEager, fsLazy, jars) {
                        for(var i = 0; i < jars.length; i++) {
                            fsEager.setExcludes("lib" + S + jars[i]);
                            fsLazy.setIncludes("lib" + S + jars[i]);
                        }
                    }
                    // convert path to absolute if relative
                    function derelativizePath(path) {
                        var f = new java.io.File(path);
                        if(!f.exists()) {
                            f = new java.io.File(new String(project.getBaseDir()) + S + path);
                        }
                        if(f.exists()) {
                            try {
                                return f.getCanonicalPath();
                            } catch(err) {
                                return path;
                            }
                        }
                        return path;
                    }
                    
                    // fx:deploy
                    var deploy = project.createTask("fx_deploy");
                    deploy.setProject(project);
                    var width = new String(project.getProperty("javafx.width"));
                    var height = new String(project.getProperty("javafx.height"));
                    var outdir = new String(project.getProperty("jfx.deployment.dir"));
                    var embedJNLP = new String(project.getProperty("javafx.deploy.embedJNLP"));
                    var updatemode = new String(project.getProperty("update-mode"));
                    var outfile = new String(project.getProperty("application.title"));
                    var includeDT = new String(project.getProperty("javafx.deploy.includeDT"));
                    var offline = new String(project.getProperty("javafx.deploy.allowoffline"));
                    if (width.indexOf("%") != -1) {
     