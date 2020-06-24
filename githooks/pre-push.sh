#!/bin/sh

./gradlew :app:assembleDebug

status=$?

if  [ "$status" = 0 ]; then
    echo "Build success. Proceeding with push."
    exit 0
else
    echo "Build failed. Please fix before pushing"
    exit 1
fi