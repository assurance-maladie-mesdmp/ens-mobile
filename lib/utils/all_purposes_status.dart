/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

enum AllPurposesStatus {
  NOT_LOADED,
  LOADING,
  SUCCESS,
  ERROR;

  bool isNotLoaded() => this == NOT_LOADED;

  bool isLoading() => this == LOADING;

  bool isSuccess() => this == SUCCESS;

  bool isError() => this == ERROR;

  bool isNotLoadedOrLoading() => isNotLoaded() || isLoading();

  bool isFinishLoaded() => isSuccess() || isError();

  bool isNotLoading() => !isLoading();

  bool isNotSuccess() => !isSuccess();

  bool isNotError() => !isError();
}

enum AllPurposesWithEmptyStatus {
  NOT_LOADED,
  LOADING,
  SUCCESS,
  EMPTY,
  ERROR;

  bool get isNotLoaded => this == NOT_LOADED;

  bool get isLoading => this == LOADING;

  bool get isSuccess => this == SUCCESS;

  bool get isEmpty => this == EMPTY;

  bool get isError => this == ERROR;

  bool get isNotLoadedOrLoading => isNotLoaded || isLoading;

  bool get isNotLoading => !isLoading;

  bool get isNotSuccess => !isSuccess;

  bool get isNotError => !isError;

  bool get isSuccessOrEmpty => isSuccess || isEmpty;

  bool get isNotSuccessAndNotEmpty => !isSuccessOrEmpty;
}
