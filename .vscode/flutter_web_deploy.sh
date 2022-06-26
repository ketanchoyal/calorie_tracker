#!/usr/bin/env bash

echo "Installing pub dependencies"
flutter pub get
flutter build web --target lib/main_production.dart
flutter deploy
