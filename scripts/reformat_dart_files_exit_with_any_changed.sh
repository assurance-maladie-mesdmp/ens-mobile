#!/bin/bash

# Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
# Use of this source code is governed by a CeCILL v2.1 license that can be
# found in the LICENSE file.

function format_dart_file_with_check_error() {
  fvm dart format $1 -l 120 --set-exit-if-changed
  if [[ $? -ne 0 ]] ; then
      exit 1
  fi
}

# Récupérer tous les sous-dossiers du dossier lib sauf les dossiers graphql et ui_generated et check le format
function get_all_lib_directories() {
    ls -d -- ./lib/* | grep -v 'graphql' | grep -v 'ui_generated'
}

for subdirectory in $(get_all_lib_directories) ; do
    format_dart_file_with_check_error $subdirectory
    if [[ $? -ne 0 ]] ; then
      exit 1
    fi
done

# Récupérer tous les sous-dossiers du dossier test sauf le dossier mocks et check le format
function get_test_lib_directories() {
    ls -d -- ./test/* | grep -v 'mocks' | grep -v 'ens_images_test.dart'
}

for subdirectory in $(get_test_lib_directories) ; do
    format_dart_file_with_check_error $subdirectory
    if [[ $? -ne 0 ]] ; then
      exit 1
    fi
done