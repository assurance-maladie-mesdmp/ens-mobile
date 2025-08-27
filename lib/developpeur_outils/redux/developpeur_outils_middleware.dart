/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'developpeur_outils_redux.dart';

class DeveloppeurOutilsMiddlewares {
  final IDeveloppeurOutilsRepository developpeurOutilsRepository;
  final DeviceInfoWrapper deviceInfoWrapper;
  final PasswordlessBlacklist passwordlessBlacklist;

  DeveloppeurOutilsMiddlewares._(
    this.developpeurOutilsRepository,
    this.deviceInfoWrapper,
    this.passwordlessBlacklist,
  );

  static List<Middleware<EnsInitialState>> create(
    IDeveloppeurOutilsRepository developpeurOutilsRepository,
    DeviceInfoWrapper deviceInfoWrapper,
    PasswordlessBlacklist passwordlessBlacklist,
  ) {
    final middlewares = DeveloppeurOutilsMiddlewares._(
      developpeurOutilsRepository,
      deviceInfoWrapper,
      passwordlessBlacklist,
    );
    return [
      TypedMiddleware<EnsInitialState, ResetSecureStorage>(middlewares._onResetSecureStorage).call,
      TypedMiddleware<EnsInitialState, ResetSharedPreferences>(middlewares._onResetSharedPreferences).call,
      TypedMiddleware<EnsInitialState, GetDeveloppeurMenuInformation>(
        middlewares._onGetDeveloppeurMenuInformation,
      ).call,
    ];
  }

  Future<void> _onResetSecureStorage(Store store, ResetSecureStorage action, NextDispatcher next) async {
    next(action);
    await developpeurOutilsRepository.clearSecureStorage();
  }

  Future<void> _onResetSharedPreferences(Store store, ResetSharedPreferences action, NextDispatcher next) async {
    next(action);
    await developpeurOutilsRepository.clearSharedPreferences();
  }

  Future<void> _onGetDeveloppeurMenuInformation(
    Store store,
    GetDeveloppeurMenuInformation action,
    NextDispatcher next,
  ) async {
    next(action);
    final version = await deviceInfoWrapper.getSystemVersion();
    final model = await deviceInfoWrapper.getDeviceModel();
    final manufacture = await deviceInfoWrapper.getDeviceManufacturer();
    final shouldSkipPasswordlessForActivation =
        await passwordlessBlacklist.shouldSkipPasswordless(PasswordlessType.ACTIVATION);
    final shouldSkipPasswordlessForConnexion =
        await passwordlessBlacklist.shouldSkipPasswordless(PasswordlessType.CONNEXION);
    store.dispatch(
      _ProcessDeviceInformation(
        deviceVersion: version,
        deviceModel: model,
        deviceManufacture: manufacture,
      ),
    );
    store.dispatch(
      _ProcessShouldSkipPasswordless(
        shouldSkipPasswordlessForActivation: shouldSkipPasswordlessForActivation,
        shouldSkipPasswordlessForConnexion: shouldSkipPasswordlessForConnexion,
      ),
    );
  }
}
