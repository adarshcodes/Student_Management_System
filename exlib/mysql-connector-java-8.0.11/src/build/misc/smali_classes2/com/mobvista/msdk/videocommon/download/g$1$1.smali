avafx.signjar.alias}"
                keypass="${javafx.signjar.keypass}">
                <fileset dir="${jfx.deployment.dir}">
                    <include name="${jfx.deployment.jar}"/>
                    <include name="lib${file.separator}*.jar"/>
                </fileset>
            </signjar>
        </sequential>
    </macrodef>

    <macrodef name="deploy-sign-blob">
        <sequential>
            <echo message="keystore=${javafx.signjar.keystore}" level="verbose"/>
            <echo message="storepass=${javafx.signjar.storepass}" level="verbose"/>
            <echo message="alias=${javafx.signjar.alias}" level="verbose"/>
            <echo message="keypass=${javafx.signjar.keypass}" level="verbose"/>
            <echo message="Launching &lt;fx:signjar&gt; task from ${ant-javafx.jar.location}" level="info"/>
            <fx:signjar keystore="${javafx.signjar.keystore}"
                storepass="${javafx.signjar.storepass}"
                alias="${javafx.signjar.alias}"
                keypass="${javafx.signjar.keypass}">
                <fileset dir="${jfx.deployment.dir}">
                    <include name="${jfx.deployment.jar}"/>
                    <include name="lib${file.separator}*.jar"/>
                </fileset>
            </fx:signjar>
        </sequential>
    </macrodef>

    <macrodef name="deploy-sign-preloader">
        <sequential>
            <echo message="keystore=${javafx.signjar.keystore}" level="verbose"/>
            <echo message="storepass=${javafx.signjar.storepass}" level="verbose"/>
            <echo message="alias=${javafx.signjar.alias}" level="verbose"/>
            <echo message="keypass=${javafx.signjar.keypass}" level="verbose"/>
            <signjar keystore="${javafx.signjar.keystore}"
                storepass="${javafx.signjar.storepass}"
                alias="${javafx.signjar.alias}"
                keypass="${javafx.signjar.keypass}">
                <fileset dir="${jfx.deployment.dir}">
                    <include name="lib${file.separator}${javafx.preloader.jar.filename}"/>
                </fileset>
            </signjar>
            <signjar keystore="${javafx.signjar.keystore}"
                storepass="${javafx.signjar.storepass}"
                alias="${javafx.signjar.alias}"
                keypass="${javafx.signjar.keypass}">
                <fileset dir="${jfx.deployment.dir}">
                    <include name="${jfx.deployment.jar}"/>
                    <include name="lib${file.separator}*.jar"/>
                    <exclude name="lib${file.separator}${javafx.preloader.jar.filename}"/>
                </fileset>
            </signjar>
        </sequential>
    </macrodef>

    <macrodef name="deploy-sign-blob-preloader">
        <sequential>
            <echo message="keystore=${javafx.signjar.keystore}" level="verbose"/>
            <echo message="storepass=${javafx.signjar.storepass}" level="verbose"/>
            <echo message="alias=${javafx.signjar.alias}" level="verbose"/>
            <echo message="keypass=${javafx.signjar.keypass}" level="verbose"/>
            <signjar keystore="${javafx.signjar.keystore}"
                storepass="${javafx.signjar.storepass}"
                alias="${javafx.signjar.alias}"
                keypass="${javafx.signjar.keypass}">
                <fileset dir="${jfx.deployment.dir}">
                    <include name="lib${file.separator}${javafx.preloader.jar.filename}"/>
                </fileset>
            </signjar>
            <echo message="Launching &lt;fx:signjar&gt; task from ${ant-javafx.jar.location}" level="info"/>
            <fx:signjar keystore="${javafx.signjar.keystore}"
                storepass="${javafx.signjar.storepass}"
                alias="${javafx.signjar.alias}"
                keypass="${javafx.signjar.keypass}">
                <fileset dir="${jfx.deployment.dir}">
                    <include name="${jfx.deployment.jar}"/>
                    <include name="lib${file.separator}*.jar"/>
                    <exclude name="lib${file.separator}${javafx.preloader.jar.filename}"/>
                </fileset>
            </fx:signjar>
        </sequential>
    </macrodef>

    <macrodef name="deploy-process-template">
        <sequential>
            <echo message="javafx.run.htmltemplate = ${javafx.run.htmltemplate}" level="verbose"/>
            <pathconvert property="javafx.run.htmltemplate.processed">
                <path path="${javafx.run.htmltemplate}"/>
                <mapper>
                     <chainedmapper>
                          <flattenmapper/>
                          <globmapper from="*" to="${jfx.deployment.dir}${file.separator}*" casesensitive="no"/>
                     </chainedmapper>
                </mapper>
            </pathconvert>
            <echo message="javafx.run.htmltemplate.processed = ${javafx.run.htmltemplate.processed}" level="verbose"/>
        </sequential>
    </macrodef>

    <!-- fx:deploy scripted call enables passing of arbitrarily long lists of params, vmoptions and callbacks and fx-version dependent behavior -->
    <macrodef name="deploy-deploy">
        <sequential>
            <antcall target="-pre-jfx-deploy"/>
            <antcall target="-call-pre-jfx-native"/>
            <echo message="javafx.ant.classpath = ${javafx.ant.classpath}" level="verbose"/>
            <typedef name="fx_deploy" classname="com.sun.javafx.tools.ant.DeployFXTask" classpath="${javafx.ant.classpath}"/>
            <echo message="Launching &lt;fx:deploy&gt; task from ${ant-javafx.jar.location}" level="info"/>
            <property name="pp_deploy_dir" value="${jfx.deployment.dir}"/>
            <property name="pp_deploy_fs1" value="lib${file.separator}${javafx.preloader.jar.filename}"/>
            <property name="pp_deploy_fs2" value="lib${file.separator}*.jar"/>
            <echo message="deploy_deploy: pp_deploy_dir = ${pp_deploy_dir}" level="verbose"/>
            <echo message="deploy_deploy: pp_deploy_fs1 = ${pp_deploy_fs1}" level="verbose"/>
            <echo message="deploy_deploy: pp_deploy_fs2 = ${pp_deploy_fs2}" level="verbose"/>
            <echo message="JavaScript: deploy-deploy" level="verbose"/>
            <basename property="jfx.deployment.base" file="${jfx.deployment.jar}" suffix=".jar"/>
            <script language="javascript">
                <![CDATA[
                    function isTrue(prop) {
                        return prop != null && 
                           (prop.toLowerCase()=="true" || prop.toLowerCase()=="yes" || prop.toLowerCase()=="on");
                    }                    
                    function prefix(s, len) {
                        if(s == null || len <= 0 || s.length == 0) {
                            return new String("");
                        }
                        return new String(s.substr(0, len));
                    }
                    function replaceSuffix(s, os, ns) {
                        return prefix(s, s.indexOf(os)).concat(ns);
                    }
                    function startsWith(s, prefix) {
                        return (s != null) && (s.indexOf(prefix) == 0);
                    }
                    function endsWith(s, suffix) {
                        var i = s.lastIndexOf(suffix);
                        return  (i != -1) && (i == (s.length - suffix.length));
                    }
                    function defined(s) {
                        return (s != null) && (s != "null") && (s.length > 0);
                    }
                    function contains(array, prop) {
                        for (var i = 0; i < array.length; i++) {
                            var s1 = new String(array[i]);
  