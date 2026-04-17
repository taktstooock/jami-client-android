#!/bin/bash
# build-apk.sh - Trigger a Gradle build task from the host

echo "📦 Starting Jami Android APK build..."

export HOST_UID=$(id -u)
export HOST_GID=$(id -g)

# Get the task name from the first argument, default to assembleDebug
TASK=${1:-"assembleDebug"}

# Execute the task inside the container
docker compose run --rm jami-builder bash -c "cd jami-android/ && ./gradlew $TASK"

# Check if the build was successful
if [ $? -eq 0 ]; then
    echo "🎉 Build Successful! APK is located at: app/build/outputs/apk/debug/"
else
    echo "❌ Build Failed. Check the logs above for details."
fi

