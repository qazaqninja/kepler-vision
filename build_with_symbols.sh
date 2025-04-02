#!/bin/bash

echo "Cleaning project..."
flutter clean

echo "Getting packages..."
flutter pub get

echo "Building app bundle with proper mapping file generation..."
flutter build appbundle --flavor prod

echo ""
echo "Build completed!"
echo "App bundle is at: build/app/outputs/bundle/prodRelease/app-prod-release.aab"
echo ""
echo "Debug symbols information:"
echo "1. Mapping file (for deobfuscation): android/app/build/outputs/mapping/prodRelease/mapping.txt"
echo "2. Native debug symbols: android/app/build/intermediates/merged_native_libs/prodRelease/out/lib"
echo ""
echo "To upload these files to Google Play Console:"
echo "1. Go to your app in Google Play Console"
echo "2. Navigate to Release > App bundle explorer"
echo "3. Find your newly uploaded bundle"
echo "4. Click on 'Upload deobfuscation file' and upload the mapping.txt file"
echo ""
echo "This will help with crash analysis and debugging." 