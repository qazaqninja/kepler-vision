#!/bin/bash
# Script to create a keystore file for Android app signing

# Set the keystore parameters
KEYSTORE_PATH=~/upload-keystore.jks
KEY_ALIAS=upload
STORE_PASSWORD=Azerhn2077!
KEY_PASSWORD=Azerhn2077!

# Create the keystore
echo "Creating keystore at $KEYSTORE_PATH"
echo "Please answer the following questions when prompted"
echo "---------------------------------------------"
keytool -genkey -v \
        -keystore "$KEYSTORE_PATH" \
        -keyalg RSA \
        -keysize 2048 \
        -validity 10000 \
        -alias "$KEY_ALIAS" \
        -storepass "$STORE_PASSWORD" \
        -keypass "$KEY_PASSWORD" \
        -dname "CN=Your Name, OU=Your Organization Unit, O=Your Organization, L=Your City, S=Your State, C=US"

# Check if the keystore was created
if [ -f "$KEYSTORE_PATH" ]; then
    echo "---------------------------------------------"
    echo "Keystore created successfully at: $KEYSTORE_PATH"
    echo "Now updating key.properties..."
    
    # Create or update key.properties
    cat > ~/Developer/kepler_vision/android/key.properties << EOF
storePassword=$STORE_PASSWORD
keyPassword=$KEY_PASSWORD
keyAlias=$KEY_ALIAS
storeFile=$KEYSTORE_PATH
EOF
    
    echo "key.properties updated."
    echo "You can now run 'flutter build appbundle --flavor prod'"
else
    echo "Failed to create keystore."
fi 