#!/bin/bash

echo "Starting the application..."

# Navigate to the project directory (optional, if required)
cd "$(dirname "$0")"

# Run the application
mvn spring-boot:run &

# Capture the process ID (PID) of the application
APP_PID=$!
echo $APP_PID > app.pid

echo "Application started with PID: $APP_PID"
