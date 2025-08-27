#!/bin/sh

# Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
# Use of this source code is governed by a CeCILL v2.1 license that can be
# found in the LICENSE file.

echo '############ Rappel : Version des outils à utiliser'
echo '>>> flutter --version'
echo 'Flutter 3.0.3 • channel stable • https://github.com/flutter/flutter.git'
echo 'Framework • revision 676cefaaff (6 days ago) • 2022-06-22 11:34:49 -0700'
echo 'Engine • revision ffe7b86a1e'
echo 'Tools • Dart 2.17.5 • DevTools 2.12.2'
echo '>>> xcodebuild -version'
echo 'Xcode 13.3.1'
echo 'Build version 13E500a'
echo '>>> pod --version'
echo '1.11.3'
echo ''
echo '############ Versions utilisées sur le build actuel'
echo '>>> flutter --version'
flutter --version
echo '>>> xcodebuild -version'
xcodebuild -version
echo '>>> pod --version'
pod --version
echo ''