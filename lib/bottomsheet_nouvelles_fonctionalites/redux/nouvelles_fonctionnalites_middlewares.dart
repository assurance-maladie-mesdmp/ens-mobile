/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'nouvelles_fonctionnalites_redux.dart';

class NouvellesFonctionnalitesMiddlewares {
  final INouvellesFonctionnalitesRepository _repository;

  NouvellesFonctionnalitesMiddlewares(this._repository);

  static List<Middleware<EnsState>> create(INouvellesFonctionnalitesRepository repository) {
    final middleware = NouvellesFonctionnalitesMiddlewares(repository);
    return [
      TypedMiddleware<EnsState, CheckIfNouvellesFonctionnalitesToDisplayAction>(middleware._onCheckForNewFeaturesAction)
          .call,
      TypedMiddleware<EnsState, SetNouvellesFonctionnalitesBottomsheetDisplayedAction>(
        middleware._onNewFeaturesModalDisplayedAction,
      ).call,
    ];
  }

  Future<void> _onCheckForNewFeaturesAction(
    Store<EnsState> store,
    CheckIfNouvellesFonctionnalitesToDisplayAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final appLaunchedForFirstTime = _repository.isAppLanceePourLaPremiereFois();
    if (appLaunchedForFirstTime) {
      _repository.setNouvellesFonctionnalitesDisplayed();
      store.dispatch(ProcessNouvellesFonctionnalitesToDisplaySuccessAction(null));
    } else {
      final newFeaturesToDisplay = await _repository.getCmsNouvellesFonctionnalites();
      store.dispatch(ProcessNouvellesFonctionnalitesToDisplaySuccessAction(newFeaturesToDisplay));
    }
  }

  Future<void> _onNewFeaturesModalDisplayedAction(
    Store<EnsState> store,
    SetNouvellesFonctionnalitesBottomsheetDisplayedAction action,
    NextDispatcher next,
  ) async {
    next(action);
    _repository.setNouvellesFonctionnalitesDisplayed();
  }
}
