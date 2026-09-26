#!/bin/sh
# Maven Wrapper script
set -e

# Find JAVA_HOME
if [ -n "$JAVA_HOME" ]; then
  javaExecutable="$JAVA_HOME/bin/java"
else
  javaExecutable="java"
fi

# Locate wrapper jar
SCRIPT="$0"
SCRIPT_DIR="$(dirname "$SCRIPT")"
WRAPPER_JAR="$SCRIPT_DIR/.mvn/wrapper/maven-wrapper.jar"
WRAPPER_PROPERTIES="$SCRIPT_DIR/.mvn/wrapper/maven-wrapper.properties"

if [ -f "$WRAPPER_JAR" ]; then
  exec "$javaExecutable" -jar "$WRAPPER_JAR" "$@"
else
  # Fallback to system mvn
  exec mvn "$@"
fi
