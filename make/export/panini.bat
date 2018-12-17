@echo off

set PANC_HOME=%~dp0\..
set LIB_HOME=%PANC_HOME%\lib\dist\bootstrap

rem TODO parse out the args and find -J opts, stick in here
set JAVA_OPTS=
rem TODO put only the non -J opts in here
set TOOL_OPTS=
set CP=%PANC_HOME%\lib\panini_rt.jar
set FIRST=1

:Loop
IF [%1]==[] GOTO Skip
set arg=%1
IF %arg%==-cp GOTO Append
IF %arg%==-classpath GOTO Append
IF %FIRST%==0 GOTO SkipThread
IF NOT [%arg:~0,1%]==[-] set arg=%arg%$thread
set FIRST=0
:SkipThread
set TOOL_OPTS=%TOOL_OPTS% %arg%
SHIFT
GOTO Loop
:Append
SHIFT
set arg=%1
SHIFT
set CP=%CP%:%arg%
GOTO Loop
:Skip

rem if [ "$LANGTOOLS_USE_BOOTCLASSPATH" != "no" ]; then
rem    cp=`unzip -c "$mylib/javac.jar" META-INF/MANIFEST.MF |
rem        grep "Class-Path:" |
rem        sed -e 's|Class-Path: *||' -e 's|\([a-z]*\.jar\) *|'"$mylib"'/\1:|g'`
rem    bcp="$mylib/javac.jar:$cp"
rem fi
rem TODO need to set the bcp from the manifest in the javac.jar
set BCP=%LIB_HOME%\lib\javac.jar
if NOT "%BCP%"=="" set BCP=-Xbootclasspath/p:%BCP%

rem "java" "${bcp:+-Xbootclasspath/p:"$bcp"}" ${ea} ${javaOpts} -jar "${mylib}/javac.jar" ${toolOpts}
java %JAVA_OPTS% -cp %CP%;. %TOOL_OPTS%

echo %TOOL_OPTS%
