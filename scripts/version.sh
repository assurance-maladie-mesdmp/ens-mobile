#!/bin/bash

# Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
# Use of this source code is governed by a CeCILL v2.1 license that can be
# found in the LICENSE file.

version="$1"
major=0
minor=0
build=0

regex="([0-9]+).([0-9]+).([0-9]+)"
if [[ $version =~ $regex ]]; then
  major="${BASH_REMATCH[1]}"
  minor="${BASH_REMATCH[2]}"
  build="${BASH_REMATCH[3]}"
fi

if [[ "$2" == "minor" ]]; then
  minor=$(echo "$minor" + 1 | bc)
elif [[ "$2" == "bug" ]]; then
  build=$(echo "$build" + 1 | bc)
elif [[ "$2" == "major" ]]; then
  major=$(echo "$major"+1 | bc)
else
  echo "usage: ./version.sh version_number [major/minor/bug]"
  exit
fi

echo "${major}.${minor}.${build}"
