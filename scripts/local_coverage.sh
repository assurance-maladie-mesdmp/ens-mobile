#!/bin/bash

# Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
# Use of this source code is governed by a CeCILL v2.1 license that can be
# found in the LICENSE file.

mkdir -p coverage

if command -v fvm &> /dev/null
then
  fvm flutter test --coverage
else
  flutter test --coverage
fi

genhtml coverage/lcov.info --output=coverage/report
open coverage/report/index.html