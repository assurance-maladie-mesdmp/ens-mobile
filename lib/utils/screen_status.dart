/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';

enum ScreenStatus {
  LOADING,
  SUCCESS,
  ERROR;

  bool isLoading() => this == LOADING;

  bool isSuccess() => this == SUCCESS;

  bool isError() => this == ERROR;

  bool isNotSuccess() => !isSuccess();

  bool isNotError() => !isError();

  static ScreenStatus getFromAllPurposesStatus(AllPurposesStatus dataStatus) {
    switch (dataStatus) {
      case AllPurposesStatus.NOT_LOADED:
      case AllPurposesStatus.LOADING:
        return ScreenStatus.LOADING;
      case AllPurposesStatus.ERROR:
        return ScreenStatus.ERROR;
      case AllPurposesStatus.SUCCESS:
        return ScreenStatus.SUCCESS;
    }
  }
}

enum ScreenStatusOnEmpty {
  LOADING,
  EMPTY,
  SUCCESS,
  ERROR;

  bool isLoading() => this == LOADING;

  bool isEmpty() => this == EMPTY;

  bool isSuccess() => this == SUCCESS;

  bool isError() => this == ERROR;

  static ScreenStatusOnEmpty getFromAllPurposesStatus({
    required AllPurposesStatus dataStatus,
    AllPurposesStatus? latestOperationStatus,
    required bool dataNullOrEmpty,
  }) {
    switch (dataStatus) {
      case AllPurposesStatus.NOT_LOADED:
      case AllPurposesStatus.LOADING:
        return ScreenStatusOnEmpty.LOADING;
      case AllPurposesStatus.ERROR:
        return ScreenStatusOnEmpty.ERROR;
      case AllPurposesStatus.SUCCESS:
        {
          if (latestOperationStatus == AllPurposesStatus.LOADING) {
            return ScreenStatusOnEmpty.LOADING;
          }
          return dataNullOrEmpty ? ScreenStatusOnEmpty.EMPTY : ScreenStatusOnEmpty.SUCCESS;
        }
    }
  }
}
