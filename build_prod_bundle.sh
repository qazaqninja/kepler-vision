#!/bin/bash

# Create a temporary gradle.properties file with R8 disabled
echo "android.enableR8=false" > android/gradle.properties.tmp
cat android/gradle.properties >> android/gradle.properties.tmp
mv android/gradle.properties.tmp android/gradle.properties

# Build the app bundle with prod flavor
flutter build appbundle --flavor prod

# Restore the original gradle.properties if needed
# To restore, uncomment the lines below
# mv android/gradle.properties.bak android/gradle.properties

echo "Build completed. Check the output for any errors." 