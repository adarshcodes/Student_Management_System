->
    <target depends="init" if="netbeans.home" name="-debug-start-debugger">
        <j2seproject1:nbjpdastart name="${debug.class}"/>
    </target>
    <target depends="init" if="netbeans.home" name="-debug-start-debugger-main-test">
        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${debug.class}"/>
    </target>
    <target depends="init,compile" name="-debug-start-debuggee">
        <j2seproject3:debug>
            <customizeDebuggee>
                <arg line="${application.args}"/>
            </customizeDebuggee>
        </j2seproject3:debug>
    </target>
    <target depends="init,compile,-debug-start-debugger,-debug-start-debuggee" description="Debug project in IDE." if="netbeans.home" name="debug"/>
    <target depends="init" if="netbeans.home" name="-debug-start-debugger-stepinto">
        <j2seproject1:nbjpdastart stopclassname="${main.class}"/>
    </target>
    <target depends="init,compile,-debug-start-debugger-stepinto,-debug-start-debuggee" if="netbeans.home" name="debug-stepinto"/>
    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-single">
        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>
        <j2seproject3:debug classname="${debug.class}"/>
    </target>
    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-single" if="netbeans.home" name="debug-single"/>
    <target depends="init,compile-test-single" if="netbeans.home" name="-debug-start-debuggee-main-test">
        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>
        <j2seproject3:debug classname="${debug.class}" classpath="${debug.test.classpath}"/>
    </target>
    <target depends="init,compile-test-single,-debug-start-debugger-main-test,-debug-start-debuggee-main-test" if="netbeans.home" name="debug-test-with-main"/>
    <target depends="init" name="-pre-debug-fix">
        <fail unless="fix.includes">Must set fix.includes</fail>
        <property name="javac.includes" value="${fix.includes}.java"/>
    </target>
    <target depends="init,-pre-debug-fix,compile-single" if="netbeans.home" name="-do-debug-fix">
        <j2seproject1:nbjpdareload/>
    </target>
    <target depends="init,-pre-debug-fix,-do-debug-fix" if="netbeans.home" name="debug-fix"/>
    <!--
                =================
                PROFILING SECTION
                =================
            -->
    <!--
                pre NB7.2 profiler integration
            -->
    <target depends="profile-init,compile" description="Profile a project in the IDE." if="profiler.info.jvmargs.agent" name="-profile-pre72">
        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>
        <nbprofiledirect>
            <classpath>
       