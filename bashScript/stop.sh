#!/bin/bash
echo "Stopping Maven project..."
PID=$(ps -ef | grep 'mvn spring-boot:run' | grep -v grep | awk '{print $2}')
if [ -z "$PID" ]; then
  echo "No Maven project is running."
else
  kill -9 $PID
  echo "Maven project stopped."
fi
