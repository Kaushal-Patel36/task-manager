@echo off
setlocal
set SCRIPT_DIR=%~dp0
set WRAPPER_JAR=%SCRIPT_DIR%.mvn\wrapper\maven-wrapper.jar
if exist "%WRAPPER_JAR%" (
    java -jar "%WRAPPER_JAR%" %*
) else (
    mvn %*
)
endlocal
