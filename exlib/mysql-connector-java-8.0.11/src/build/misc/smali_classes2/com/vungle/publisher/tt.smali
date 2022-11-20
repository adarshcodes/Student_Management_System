
                =================
            -->
    <target name="-pre-deploy">
        <!-- Empty placeholder for easier customization. -->
        <!-- You can override this target in the ../build.xml file. -->
    </target>
    <target depends="init" name="-check-jlink">
        <condition property="do.jlink.internal">
            <and>
                <istrue value="${do.jlink}"/>
                <isset property="do.archive"/>
                <isset property="named.module.internal"/>
            </and>
        </condition>
    </target>
    <target depends="init,-do-jar,-post-jar,-pre-deploy,-check-jlink" if="do.jlink.internal" name="-do-deploy">
        <delete dir="${dist.jlink.dir}" failonerror="false" quiet="true"/>
        <property name="jlink.launcher.name" value="${application.title}"/>
        <condition else="${module.name}" property="jlink.add.modules" value="${module.name},${jlink.additionalmodules}">
            <and>
                <isset property="jlink.additionalmodules"/>
                <length length="0" string="${jlink.additionalmodules}" when="greater"/>
            </and>
        </condition>
        <condition property="jlink.do.strip.internal">
            <and>
                <isset property="jlink.strip"/>
                <istrue value="${jlink.strip}"/>
            </and>
        </condition>
        <condition property="jlink.do.additionalparam.internal">
            <and>
                <isset property="jlink.additionalparam"/>
                <length length="0" string="${jlink.additionalparam}" when="greater"/>
            </and>
        </condition>
        <condition property="jlink.do.launcher.internal">
            <and>
                <istrue value="${jlink.launcher}"/>
                <isset property="main.class.available"/>
            </and>
        </condition>
        <property name="platform.jlink" value="${jdk.home}/bin/jlink"/>
        <property name="jlink.systemmodules.internal" value="${jdk.home}/jmods"/>
        <exec executable="${platform.jlink}">
            <arg value="--module-path"/>
            <arg path="${jlink.systemmodules.internal}:${run.modulepath}:${dist.jar}"/>
            <arg value="--add-modules"/>
            <arg value="${jlink.add.modules}"/>
            <arg if:set="jlink.do.strip.internal" value="--strip-debug"/>
            <arg if:set="jlink.do.launcher.internal" value="--launcher"/>
            <arg if:set="jlink.do.launcher.internal" value="${jlink.launcher.name}=${module.name}/${main.class}"/>
            <arg if:set="jlink.do.additionalparam.internal" line="${jlink.additionalparam}"/>
            <arg value="--output"/>
            <arg value="${dist.jlink.output}"/>
        </exec>
    </target>
    <target name="-post-deploy">
        <!-- Empty placeholder for easier customization. -->
        <!-- You can override this target in the ../build.xml file. -->
    </target>
    <target depends="-do-jar,-post-jar,-pre-deploy,-do-deploy,-post-deploy" name="deploy"/>
    <!--
                =================
                EXECUTION SECTION
                =================
            -->
    <target depends="init,compile" description="Run a main class." name="run">
        <j2seproject1:java>
            <customize>
            