#!/bin/bash

# Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
# Use of this source code is governed by a CeCILL v2.1 license that can be
# found in the LICENSE file.

function format_dart_file() {
  fvm dart format $1 -l 120
}

# Récupérer tous les sous-dossiers du dossier lib sauf les dossiers graphql et ui_generated et formatter
function get_all_lib_directories() {
    ls -d -- ./lib/* | grep -v 'graphql' | grep -v 'ui_generated'
}

for subdirectory in $(get_all_lib_directories) ; do
    format_dart_file $subdirectory
done

# Récupérer tous les sous-dossiers du dossier test sauf le dossier mocks et formatter
function get_all_test_directories() {
    ls -d -- ./test/* | grep -v 'mocks' | grep -v 'ens_images_test.dart'
}

for test_subdirectory in $(get_all_test_directories) ; do
    format_dart_file $test_subdirectory
done

# Après avoir formatter les fichiers => fixer les trailing comma
make fix-issues

# Fomatter après l'ajout du trailing comma
for subdirectory in $(get_all_lib_directories) ; do
    format_dart_file $subdirectory
done

for subdirectory in $(get_all_test_directories) ; do
    format_dart_file $subdirectory
done
