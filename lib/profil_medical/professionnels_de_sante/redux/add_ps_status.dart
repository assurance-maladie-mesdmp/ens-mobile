/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'professionnels_de_sante_redux.dart';

enum AddPsStatus {
  NOT_LOADED,
  LOADING,
  SELECTED,
  SUCCESS,
  ERROR;

  bool isLoading() => this == LOADING;

  bool isSelected() => this == SELECTED;

  bool isSuccess() => this == SUCCESS;
}
