#!/usr/bin/env bash

#Script to deploy to flutter web

echo "Installing pub dependencies"
flutter pub get
echo "Building Web"
flutter build web --target lib/main_production.dart
echo "Deploying to Firebase"
flutter deploy
