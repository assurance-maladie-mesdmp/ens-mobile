#!/usr/bin/env bash

# Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
# Use of this source code is governed by a CeCILL v2.1 license that can be
# found in the LICENSE file.

if command -v fvm &> /dev/null
then
  fvm flutter pub get
  fvm flutter pub run build_runner build --delete-conflicting-outputs --fail-on-severe
else
  flutter pub get
  flutter pub run build_runner build --delete-conflicting-outputs --fail-on-severe
fi
