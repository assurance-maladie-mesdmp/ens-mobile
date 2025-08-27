#!/bin/sh

# Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
# Use of this source code is governed by a CeCILL v2.1 license that can be
# found in the LICENSE file.

show_help(){
printf "\nUsage:
%s GIT_REF_TO_BUILD
    Fabriquer un aab de l'appli Android à destination du play store.
    GIT_REF_TO_BUILD est de préférence le tag Git livré
    Après la compilation l'aab se retrouve dans build/app/outputs/bundle/release/." "$0"
exit
}

# pas d'arguments
if [ -z "$1" ]; then show_help; fi

GIT_REF_TO_BUILD="$1"
git checkout "$GIT_REF_TO_BUILD" || exit

./scripts/display_tools_version_and_requirement.sh

VERSION_NAME=$(./scripts/get_version_name.sh) && echo "VERSION_NAME=$VERSION_NAME"
VERSION_CODE=$(./scripts/get_version_code.sh) && echo "VERSION_CODE=$VERSION_CODE"

flutter build appbundle -v --dart-define=env=prod --flavor=prod --build-name="$VERSION_NAME" --build-number="$VERSION_CODE" -t lib/main_prod.dart