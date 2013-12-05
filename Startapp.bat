@echo off

if "%SUN_JRE_1_7_HOME%"=="" goto :app_manual
goto :app_jre7

:app_manual
echo Running default Java
java -Xmx1g cp "lib\*;.;Aspose.ExamplesCenter.jar;%EXAMPLES_DIR%\lib\*" aspose.examplescenter.desktop.Dashboard
goto :app_end

:app_jre7
echo Running JRE 7
echo SUN_JRE_1_7_HOME=%SUN_JRE_1_7_HOME%
"%SUN_JRE_1_7_HOME%\bin\java" -Xmx1g -cp "lib\*;.;Aspose.ExamplesCenter.jar;%SUN_JRE_1_7_HOME%\lib\*;%EXAMPLES_DIR%\lib\*" aspose.examplescenter.desktop.Dashboard
goto :app_end

:app_end
echo Finished
