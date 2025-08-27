#!/bin/sh

# Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
# Use of this source code is governed by a CeCILL v2.1 license that can be
# found in the LICENSE file.

[ ! -f $(git rev-parse --git-dir)/shallow ] || git fetch --unshallow

# 22/08/24 - Ajout d'un préfixe en dur suite au changement d'algo de calcul du version code qui ne respectait pas les règles du Play Store (version code unique et croissant)
PREFIX=861
NBCOMMITS=$(git rev-list --count HEAD)

# Concaténation du nombre de commits et du hash de la branche pour obtenir un identifiant unique
VERSION_CODE="${PREFIX}${NBCOMMITS}"

echo "$VERSION_CODE"