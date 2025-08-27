/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/app_rating/data/app_rating_repository.dart';
import 'package:fr_cnamts_ens/user/app_rating/redux/app_rating_actions.dart';
import 'package:redux/redux.dart';

class AppRatingMiddlewares {
  static const int nbSuccesfulActionsRequired = 3;

  final IAppRatingRepository _appRatingRepository;

  AppRatingMiddlewares(this._appRatingRepository);

  static List<Middleware<EnsState>> create(IAppRatingRepository appRatingRepository) {
    final middlewares = AppRatingMiddlewares(appRatingRepository);

    return [
      TypedMiddleware<EnsState, ShouldDisplayAppRatingAction>(middlewares.shouldDisplayAppRating).call,
      TypedMiddleware<EnsState, AddSuccessfulRatingAction>(middlewares.addSuccessfulAction).call,
      TypedMiddleware<EnsState, OnAppRatingRefusedAction>(middlewares.onAppRatingRefused).call,
      TypedMiddleware<EnsState, OnAppRated>(middlewares.setShouldNeverShowAppRatingAgain).call,
      TypedMiddleware<EnsState, ResetAppRatingFeatureAction>(middlewares.resetAppRatingFeature).call,
    ];
  }

  void shouldDisplayAppRating(
    Store<EnsState> store,
    ShouldDisplayAppRatingAction action,
    NextDispatcher next,
  ) {
    next(action);
    final shouldShowAppRatingAgain = _appRatingRepository.shouldShowAppRatingAgain();
    final numberSuccessfulActions = _appRatingRepository.getNumberSuccessfulActions();
    final nextAppRatingDate = _appRatingRepository.getNextAppRatingDate();

    final result = shouldShowAppRatingAgain &&
        numberSuccessfulActions >= nbSuccesfulActionsRequired &&
        (nextAppRatingDate == null || nextAppRatingDate.isBefore(clock.now()));

    store.dispatch(ProcessShouldDisplayAppRatingAction(result));
  }

  void addSuccessfulAction(Store<EnsState> store, AddSuccessfulRatingAction action, NextDispatcher next) {
    next(action);
    _appRatingRepository.addSuccessfulAction();
    store.dispatch(ShouldDisplayAppRatingAction());
  }

  void onAppRatingRefused(Store<EnsState> store, OnAppRatingRefusedAction action, NextDispatcher next) {
    next(action);
    _appRatingRepository.resetSuccessfulActions();
    _appRatingRepository.setNextAppRatingDate();
  }

  void setShouldNeverShowAppRatingAgain(
    Store<EnsState> store,
    OnAppRated action,
    NextDispatcher next,
  ) {
    next(action);
    _appRatingRepository.setShouldNeverShowAppRatingAgain();
    store.dispatch(const DisplaySnackbarAction.success('Merci pour votre retour.'));
  }

  void resetAppRatingFeature(
    Store<EnsState> store,
    ResetAppRatingFeatureAction action,
    NextDispatcher next,
  ) {
    next(action);
    _appRatingRepository.resetAppRatingFeature();
    store.dispatch(ShouldDisplayAppRatingAction());
  }
}
