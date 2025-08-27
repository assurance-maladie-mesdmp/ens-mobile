/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/bottomsheet_recommander_app/redux/recommander_app_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/app_rating/redux/app_rating_actions.dart';
import 'package:redux/redux.dart';

enum BottomSheetType {
  APP_RATING,
  RECOMMANDER_APP,
}

class BottomSheetsContainerViewModel extends Equatable {
  final BottomSheetType? shouldDisplayBottomSheetOfType;
  final RecommanderAppActionTriggeredFrom? actionTriggeredFrom;
  final void Function() onAppRated;
  final void Function() onAppRatingRefused;
  final void Function() setRecommanderAppDone;
  final void Function() setNextRecommanderAppDate;
  final void Function() setDoNotDisplayRecommanderApp;
  final void Function() displaySnackbarRecommanderAppSuccess;

  const BottomSheetsContainerViewModel._internal({
    required this.shouldDisplayBottomSheetOfType,
    required this.actionTriggeredFrom,
    required this.onAppRated,
    required this.onAppRatingRefused,
    required this.setRecommanderAppDone,
    required this.setNextRecommanderAppDate,
    required this.setDoNotDisplayRecommanderApp,
    required this.displaySnackbarRecommanderAppSuccess,
  });

  @override
  List<Object?> get props => [
        shouldDisplayBottomSheetOfType,
        actionTriggeredFrom,
      ];

  factory BottomSheetsContainerViewModel.from(Store<EnsState> store) {
    final shouldDisplayAppRatingBottomSheet = store.state.userState.appRatingState.shouldDisplayAppRating;
    final recommanderAppState = store.state.recommanderAppState;
    final shouldDisplayRecommanderApp = _shouldDisplayRecommanderApp(recommanderAppState);
    final BottomSheetType? shouldDisplayBottomSheetOfType = getBottomSheetToDisplayType(
      shouldDisplayAppRatingBottomSheet,
      shouldDisplayRecommanderApp,
    );

    return BottomSheetsContainerViewModel._internal(
      shouldDisplayBottomSheetOfType: shouldDisplayBottomSheetOfType,
      actionTriggeredFrom: recommanderAppState.actionTriggeredFrom,
      onAppRated: () {
        store.dispatch(OnAppRated());
      },
      onAppRatingRefused: () {
        store.dispatch(OnAppRatingRefusedAction());
      },
      setRecommanderAppDone: () {
        store.dispatch(SetRecommanderAppDoneAction());
      },
      setNextRecommanderAppDate: () {
        store.dispatch(SetNextRecommanderAppDateAction());
      },
      setDoNotDisplayRecommanderApp: () {
        store.dispatch(SetDoNotDisplayRecommanderAppAction());
      },
      displaySnackbarRecommanderAppSuccess: () {
        store.dispatch(const DisplaySnackbarAction.success('Invitation envoyée'));
      },
    );
  }

  static BottomSheetType? getBottomSheetToDisplayType(
    bool shouldDisplayAppRatingBottomSheet,
    bool shouldDisplayRecommanderApp,
  ) {
    if (shouldDisplayAppRatingBottomSheet) {
      return BottomSheetType.APP_RATING;
    } else if (shouldDisplayRecommanderApp) {
      return BottomSheetType.RECOMMANDER_APP;
    } else {
      return null;
    }
  }

  static bool _shouldDisplayRecommanderApp(RecommanderAppState recommanderAppState) {
    final nextRecommanderAppDate = recommanderAppState.nextRecommanderAppDate;
    final now = clock.now().toLocal();
    final isNextRecommanderAppDate = nextRecommanderAppDate?.isBefore(now) ?? true;
    return !recommanderAppState.isRecommanderAppDone &&
        isNextRecommanderAppDate &&
        recommanderAppState.actionTriggeredFrom != null &&
        !recommanderAppState.isOtherSurveyAlreadyTriggered;
  }
}
