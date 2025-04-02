#!/bin/bash

echo "Cleaning project..."
flutter clean

echo "Getting packages..."
flutter pub get

echo "Building app bundle without shrinking..."
flutter build appbundle --flavor prod --no-shrink

echo "Build completed. Check the output above for any errors."
echo "If successful, the app bundle is at: build/app/outputs/bundle/prodRelease/app-prod-release.aab" 