marg line="${run.jvmargs}"/>
                        <jvmarg line="${run.jvmargs.ide}"/>
                    </customizeDebuggee>
                </j2seproject3:test-debug-impl>
            </sequential>
        </macrodef>
    </target>
    <target depends="-init-macrodef-testng-debug-impl" if="${testng.available}" name="-init-macrodef-test-debug-testng">
        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">
            <attribute default="${includes}" name="includes"/>
            <attribute default="${excludes}" name="excludes"/>
            <attribute default="**" name="testincludes"/>
            <attribute default="" name="testmethods"/>
            <attribute default="${main.class}" name="testClass"/>
            <attribute default="" name="testMethod"/>
            <sequential>
                <j2seproject3:testng-debug-impl testClass="@{testClass}" testMethod="@{testMethod}">
                    <customize2>
                        <syspropertyset>
                            <propertyref prefix="test-sys-prop."/>
                            <mapper from="test-sys-prop.*" to="*" type="glob"/>
                        </syspropertyset>
                    </customize2>
                </j2seproject3:testng-debug-impl>
            </sequential>
        </macrodef>
    </target>
    <target depends="-init-macrodef-test-debug-junit,-init-macrodef-test-debug-testng" name="-init-macrodef-test-debug"/>
    <!--
                pre NB7.2 profiling section; consider it deprecated
            -->
    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile, -profile-init-check" if="profiler.info.jvmargs.agent" name="profile-init"/>
    <target if="profiler.info.jvmargs.agent" name="-profile-pre-init">
        <!-- Empty placeholder for easier customization. -->
        <!-- You can override this target in the ../build.xml file. -->
    </target>
    <target if="profiler.info.jvmargs.agent" name="-profile-post-init">
        <!-- Empty placeholder for easier customization. -->
        <!-- You can override this target in the ../build.xml file. -->
    </target>
    <target if="profiler.info.jvmargs.agent" name="-profile-init-macrodef-profile">
        <macrodef name="resolve">
            <attribute name="name"/>
            <attribute name="value"/>
            <sequential>
                <property name="@{name}" value="${env.@{value}}"/>
            </sequential>
        </macrodef>
        <macrodef name="profile">
            <attribute default="${main.class}" name="classname"/>
            <element name="customize" optional="true"/>
            <sequential>
                <property environment="env"/>
                <resolve name="profiler.current.path" value="${profiler.info.pathvar}"/>
                <java classname="@{classname}" dir="${profiler.info.dir}" failonerror="${java.failonerror}" fork="true" jvm="${profiler.info.jvm}">
                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>
                    <jvmarg value="${profiler.info.jvmargs.agent}"/>
                    <jvmarg line="${profiler.info.jvmargs}"/>
                    <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>
                    <arg line="${application.args}"/>
                    <classpath>
                        <path path="${run.classpath}"/>
                    </classpath>
                    <syspropertyset>
                        <propertyref prefix="run-sys-prop."/>
                        <mapper from="run-sys-prop.*" to="*" type="glob"/>
                    </syspropertyset>
                    <customize/>
                </java>
            </sequential>
        </macrodef>
    </target>
    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile" if="profiler.info.jvmargs.agent" name="-profile-init-check">
        <fail unless="profiler.info.jvm">Must set JVM to use for profiling in profiler.info.jvm</fail>
        <fail unless="profiler.info.jvmargs.agent">Must set profiler agent JVM arguments in profiler.info.jvmargs.agent</fail>
    </target>
    <!--
                end of pre NB7.2 profiling section
            -->
    <target depends="-init-debug-args" name="-init-macrodef-nbjpda">
        <macrodef name="nbjpdastart" uri="http://www.netbeans.org/ns/j2se-project/1">
            <attribute default="${main.class}" name="name"/>
            <attribute default="${debug.modulepath}" name="modulepath"/>
            <attribute default="${debug.classpath}" name="classpath"/>
            <attribute default="" name="stopclassname"/>
            <sequential>
                <nbjpdastart addressproperty="jpda.address" name="@{name}" stopclassname="@{stopclassname}" transport="${debug-transport}">
                    <modulepath>
                        <path path="@{modulepath}"/>
                    </modulepath>
                    <classpath>
                        <path path="@{classpath}"/>
                    </classpath>
                </nbjpdastart>
            </sequential>
        </macrodef>
        <macrodef name="nbjpdareload" uri="http://www.netbeans.org/ns/j2se-project/1">
            <attribute default="${build.classes.dir}" name="dir"/>
            <sequential>
                <nbjpdareload>
                    <fileset dir="@{dir}" includes="${fix.classes}">
                        <include name="${fix.includes}*.class"/>
                    </fileset>
                </nbjpdareload>
            </sequential>
        </macrodef>
    </target>
    <target name="-init-debug-args">
        <condition else="dt_socket" property="debug-transport-by-os" value="dt_shmem">
            <os family="windows"/>
        </condition>
        <condition else="${debug-transport-by-os}" property="debug-transport" value="${debug.transport}">
            <isset property="debug.transport"/>
        </condition>
    </target>
    <target depends="-init-debug-args" name="-init-macrodef-debug">
        <macrodef name="debug" uri="http://www.netbeans.org/ns/j2se-project/3">
            <attribute default="${module.name}" name="modulename"/>
            <attribute default="${main.class}" name="classname"/>
            <attribute default="${debug.modulepath}" name="modulepath"/>
            <attribute default="${debug.classpath}" name="classpath"/>
            <element name="customizeDebuggee" optional="true"/>
            <sequential>
                <j2seproject1:java classname="@{classname}" classpath="@{classpath}" modulename="@{modulename}" modulepath="@{modulepath}">
                    <customize>
                        <jvmarg value="-agentlib:jdwp=transport=${debug-transport},address=${jpda.address}"/>
                        <customizeDebuggee/>
                    </customize>
                </j2seproject1:java>
            </sequential>
        </macrodef>
    </target>
    <target depends="-init-source-module-properties" if="named.module.internal" name="-init-macrodef-java-with-module">
        <macrodef name="java" uri="http://www.netbeans.org/ns/j2se-project/1">
            <attribute default="${module.name}" name="modulename"/>
            <attribute default="${main.class}" name="classname"/>
            <attribute default="${run.modulepath}" name="modulepath"/>
            <attribute default="${run.upgrademodulepath}" name="upgrademodulepath"/>
            <attribute default="${run.classpath}" name="classpath"/>
            <attribute default="jvm" name="jvm"/>
            <element name="customize" optional="true"/>
            <sequential>
                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true" module="@{modulename}">
                    <classpath>
                        <path path="@{classpath}"/>
                    </classpath>
                    <modulepath>
                        <pathelement path="@{modulepath}"/>
                        <pathelement location="${module.build.classes.dir}"/>
                    </modulepath>
                    <upgrademodulepath>
                        <path path="@{upgrademodulepath}"/>
                    </upgrademodulepath>
                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>
                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>
                    <jvmarg line="${run.jvmargs}"/>
                    <jvmarg line="${run.jvmargs.ide}"/>
                    <syspropertyset>
                        <propertyref prefix="run-sys-prop."/>
                        <mapper from="run-sys-prop.*" to="*" type="glob"/>
                    </syspropertyset>
                    <customize/>
                </java>
            </sequential>
        </macrodef>
    </target>
    <target depends="-init-source-module-properties" if="unnamed.module.internal" name="-init-macrodef-java-with-unnamed-module">
        <macrodef name="java" uri="http://www.netbeans.org/ns/j2se-project/1">
            <attribute default="" name="modulename"/>
            <attribute default="${main.class}" name="classname"/>
            <attribute default="${run.modulepath}" name="modulepath"/>
            <attribute default="${run.upgrademodulepath}" name="upgrademodulepath"/>
            <attribute default="${run.classpath}" name="classpath"/>
            <attribute default="jvm" name="jvm"/>
            <element name="customize" optional="true"/>
            <sequential>
                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">
                    <classpath>
                        <path path="@{classpath}"/>
                    </classpath>
                    <modulepath>
                        <path path="@{modulepath}"/>
                    </modulepath>
                    <upgrademodulepath>
                        <path path="@{upgrademodulepath}"/>
                    </upgrademodulepath>
                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>
                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>
                    <jvmarg line="${run.jvmargs}"/>
                    <jvmarg line="${run.jvmargs.ide}"/>
                    <syspropertyset>
                        <propertyref prefix="run-sys-prop."/>
                        <mapper from="run-sys-prop.*" to="*" type="glob"/>
                    </syspropertyset>
                    <customize/>
                </java>
            </sequential>
        </macrodef>
    </target>
    <target depends="-init-source-module-properties" name="-init-macrodef-java-without-module" unless="modules.supported.internal">
        <macrodef name="java" uri="http://www.netbeans.org/ns/j2se-project/1">
            <attribute default="" name="modulename"/>
            <attribute default="${main.class}" name="classname"/>
            <attribute default="" name="modulepath"/>
            <attribute default="${run.classpath}" name="classpath"/>
            <attribute default="jvm" name="jvm"/>
            <element name="customize" optional="true"/>
            <sequential>
                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">
                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>
                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>
                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>
                    <jvmarg line="${run.jvmargs}"/>
                    <jvmarg line="${run.jvmargs.ide}"/>
                    <classpath>
                        <path path="@{classpath}"/>
                    </classpath>
                    <syspropertyset>
                        <propertyref prefix="run-sys-prop."/>
                        <mapper from="run-sys-prop.*" to="*" type="glob"/>
                    </syspropertyset>
                    <customize/>
                </java>
            </sequential>
        </macrodef>
    </target>
    <target depends="-init-macrodef-java-with-module, -init-macrodef-java-with-unnamed-module, -init-macrodef-java-without-module" name="-init-macrodef-java"/>
    <target name="-init-macrodef-copylibs">
        <macrodef name="copylibs" uri="http://www.netbeans.org/ns/j2se-project/3">
            <attribute default="${manifest.file}" name="manifest"/>
            <element name="customize" optional="true"/>
            <sequential>
                <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>
                <pathconvert property="run.classpath.without.build.classes.dir">
                    <path path="${run.classpath}"/>
                    <map from="${build.classes.dir.resolved}" to=""/>
                </pathconvert>
                <pathconvert pathsep=" " property="jar.classpath">
                    <path path="${run.classpath.without.build.classes.dir}"/>
                    <chainedmapper>
                        <flattenmapper/>
                        <filtermapper>
                            <replacestring from=" " to="%20"/>
                        </filtermapper>
                        <globmapper from="*" to="lib/*"/>
                    </chainedmapper>
                </pathconvert>
                <taskdef classname="org.netbeans.modules.java.j2seproject.copylibstask.CopyLibs" classpath="${libs.CopyLibs.classpath}" name="copylibs"/>
                <copylibs compress="${jar.compress}" excludeFromCopy="${copylibs.excludes}" index="${jar.index}" indexMetaInf="${jar.index.metainf}" jarfile="${dist.jar}" manifest="@{manifest}" manifestencoding="UTF-8" rebase="${copylibs.rebase}" runtimeclasspath="${run.classpath.without.build.classes.dir}">
                    <fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>
                    <manifest>
                        <attribute name="Class-Path" value="${jar.classpath}"/>
                        <customize/>
                    </manifest>
                </copylibs>
            </sequential>
        </macrodef>
    </target>
    <target name="-init-presetdef-jar">
        <presetdef name="jar" uri="http://www.netbeans.org/ns/j2se-project/1">
            <jar compress="${jar.compress}" index="${jar.index}" jarfile="${dist.jar}" manifestencoding="UTF-8">
                <j2seproject1:fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>
            </jar>
        </presetdef>
    </target>
    <target name="-init-ap-cmdline-properties">
        <property name="annotation.processing.enabled" value="true"/>
        <property name="annotation.processing.processors.list" value=""/>
        <property name="annotation.processing.processor.options" value=""/>
        <property name="annotation.processing.run.all.processors" value="true"/>
        <property name="javac.processorpath" value="${javac.classpath}"/>
        <property name="javac.test.processorpath" value="${javac.test.classpath}"/>
        <condition property="ap.supported.internal" value="true">
            <not>
                <matches pattern="1\.[0-5](\..*)?" string="${javac.source}"/>
            </not>
        </condition>
    </target>
    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-ap-cmdline-supported">
        <condition else="" property="ap.processors.internal" value="-processor ${annotation.processing.processors.list}">
            <isfalse value="${annotation.processing.run.all.processors}"/>
        </condition>
        <condition else="" property="ap.proc.none.internal" value="-proc:none">
            <isfalse value="${annotation.processing.enabled}"/>
        </condition>
    </target>
    <target depends="-init-ap-cmdline-properties,-init-ap-cmdline-supported" name="-init-ap-cmdline">
        <property name="ap.cmd.line.internal" value=""/>
    </target>
    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init,-post-init,-init-check,-init-macrodef-property,-init-macrodef-javac,-init-macrodef-test,-init-macrodef-test-debug,-init-macrodef-nbjpda,-init-macrodef-debug,-init-macrodef-java,-init-presetdef-jar,-init-ap-cmdline" name="init"/>
    <!--
                ===================
                COMPILATION SECTION
                ===================
            -->
    <target name="-deps-jar-init" unless="built-jar.properties">
        <property location="${build.dir}/built-jar.properties" name="built-jar.properties"/>
        <delete file="${built-jar.properties}" quiet="true"/>
    </target>
    <target if="already.built.jar.${basedir}" name="-warn-already-built-jar">
        <echo level="warn" message="Cycle detected: Background_color__changer was already built"/>
    </target>
    <target depends="init,-deps-jar-init" name="deps-jar" unless="no.deps">
        <mkdir dir="${build.dir}"/>
        <touch file="${built-jar.properties}" verbose="false"/>
        <property file="${built-jar.properties}" prefix="already.built.jar."/>
        <antcall target="-warn-already-built-jar"/>
        <propertyfile file="${built-jar.properties}">
            <entry key="${basedir}" value=""/>
        </propertyfile>
    </target>
    <target depends="init,-check-automatic-build,-clean-after-automatic-build" name="-verify-automatic-build"/>
    <target depends="init" name="-check-automatic-build">
        <available file="${build.classes.dir}/.netbeans_automatic_build" property="netbeans.automatic.build"/>
    </target>
    <target depends="init" if="netbeans.automatic.build" name="-clean-after-automatic-build">
        <antcall target="clean">
            <param name="no.dependencies" value="true"/>
        </antcall>
    </target>
    <target depends="init,deps-jar" name="-pre-pre-compile">
        <mkdir dir="${build.classes.dir}"/>
    </target>
    <target name="-pre-compile">
        <!-- Empty placeholder for easier customization. -->
        <!-- You can override this target in the ../build.xml file. -->
    </target>
    <target if="do.depend.true" name="-compile-depend">
        <pathconvert property="build.generated.subdirs">
            <dirset dir="${build.generated.sources.dir}" erroronmissingdir="false">
                <include name="*"/>
            </dirset>
        </pathconvert>
        <j2seproject3:depend srcdir="${src.dir}:${build.generated.subdirs}"/>
    </target>
    <target depends="init,deps-jar,-pre-pre-compile,-pre-compile, -copy-persistence-xml,-compile-depend" if="have.sources" name="-do-compile">
        <j2seproject3:javac gensrcdir="${build.generated.sources.dir}"/>
        <copy todir="${build.classes.dir}">
            <fileset dir="${src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>
        </copy>
    </target>
    <target if="has.persistence.xml" name="-copy-persistence-xml">
        <mkdir dir="${build.classes.dir}/META-INF"/>
        <copy todir="${build.classes.dir}/META-INF">
            <fileset dir="${meta.inf.dir}" includes="persistence.xml orm.xml"/>
        </copy>
    </target>
    <target name="-post-compile">
        <!-- Empty placeholder for easier customization. -->
        <!-- You can override this target in the ../build.xml file. -->
    </target>
    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile,-do-compile,-post-compile" description="Compile project." name="compile"/>
    <target name="-pre-compile-single">
        <!-- Empty placeholder for easier customization. -->
        <!-- You can override this target in the ../build.xml file. -->
    </target>
    <target depends="init,deps-jar,-pre-pre-compile" name="-do-compile-single">
        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>
        <j2seproject3:force-recompile/>
        <j2seproject3:javac excludes="" gensrcdir="${build.generated.sources.dir}" includes="${javac.includes}, module-info.java" sourcepath="${src.dir}"/>
    </target>
    <target name="-post-compile-single">
        <!-- Empty placeholder for easier customization. -->
        <!-- You can override this target in the ../build.xml file. -->
    </target>
    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile-single,-do-compile-single,-post-compile-single" name="compile-single"/>
    <!--
                ====================
                JAR BUILDING SECTION
                ====================
            -->
    <target depends="init" name="-pre-pre-jar">
        <dirname file="${dist.jar}" property="dist.jar.dir"/>
        <mkdir dir="${dist.jar.dir}"/>
    </target>
    <target name="-pre-jar">
        <!-- Empty placeholder for easier customization. -->
        <!-- You can override this target in the ../build.xml file. -->
    </target>
    <target depends="init,compile" name="-check-module-main-class">
        <pathconvert property="main.class.file">
            <string value="${main.class}"/>
            <unpackagemapper from="*" to="*.class"/>
        </pathconvert>
        <condition property="do.module.main.class">
            <and>
                <isset property="main.class.available"/>
                <available file="${build.classes.dir}/module-info.class"/>
                <available file="${build.classes.dir}/${main.class.file}"/>
                <isset property="libs.CopyLibs.classpath"/>
                <available classname="org.netbeans.modules.java.j2seproject.moduletask.ModuleMainClass" classpath="${libs.CopyLibs.classpath}"/>
            </and>
        </condition>
    </target>
    <target depends="-check-module-main-class" if="do.module.main.class" name="-set-module-main-class">
        <taskdef classname="org.netbeans.modules.java.j2seproject.moduletask.ModuleMainClass" classpath="${libs.CopyLibs.classpath}" name="modulemainclass"/>
        <modulemainclass failonerror="false" mainclass="${main.class}" moduleinfo="${build.classes.dir}/module-info.class"/>
    </target>
    <target depends="init" if="do.archive" name="-do-jar-create-manifest" unless="manifest.available">
        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>
        <touch file="${tmp.manifest.file}" verbose="false"/>
    </target>
    <target depends="init" if="do.archive+manifest.available" name="-do-jar-copy-manifest">
        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>
        <copy encoding="${manifest.encoding}" file="${manifest.file}" outputencoding="UTF-8" tofile="${tmp.manifest.file}"/>
    </target>
    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+main.class.available" name="-do-jar-set-mainclass">
        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">
            <attribute name="Main-Class" value="${main.class}"/>
        </manifest>
    </target>
    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+profile.available" name="-do-jar-set-profile">
        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">
            <attribute name="Profile" value="${javac.profile}"/>
        </manifest>
    </target>
    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+splashscreen.available" name="-do-jar-set-splashscreen">
        <basename file="${application.splash}" property="splashscreen.basename"/>
        <mkdir dir="${build.classes.dir}/META-INF"/>
        <copy failonerror="false" file="${application.splash}" todir="${build.classes.dir}/META-INF"/>
        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">
            <attribute name="SplashScreen-Image" value="META-INF/${splashscreen.basename}"/>
        </manifest>
    </target>
    <target depends="init,-init-macrodef-copylibs,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen" if="do.mkdist" name="-do-jar-copylibs">
        <j2seproject3:copylibs manifest="${tmp.manifest.file}"/>
        <echo level="info">To run this application from the command line without Ant, try:</echo>
        <property location="${dist.jar}" name="dist.jar.resolved"/>
        <echo level="info">java -jar "${dist.jar.resolved}"</echo>
    </target>
    <target depends="