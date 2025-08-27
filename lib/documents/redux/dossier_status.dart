/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'documents_redux.dart';

enum DossierStatus {
  NOT_LOADED,
  LOADING,
  SUCCESS,
  GENERIC_ERROR,
  DOSSIER_NAME_ALREADY_EXISTS_ERROR;

  bool get isLoading => this == LOADING;

  bool get isSuccess => this == SUCCESS;

  bool get isGenericError => this == GENERIC_ERROR;

  bool get isDossierNameError => this == DOSSIER_NAME_ALREADY_EXISTS_ERROR;

  bool get isNotLoading => !isLoading;

  bool get isNotSuccess => !isSuccess;

  bool get isNotGenericError => !isGenericError;

  bool get isNotDossierNameError => !isDossierNameError;
}
