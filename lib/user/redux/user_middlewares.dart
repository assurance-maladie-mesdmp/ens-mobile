/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/home/redux/user_domain_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/infra/remote_config_wrapper.dart';
import 'package:fr_cnamts_ens/notifications/redux/notification_actions.dart';
import 'package:fr_cnamts_ens/onboarding/redux/onboarding_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/data/offline_user_data_repository.dart';
import 'package:fr_cnamts_ens/user/data/user_data_repository.dart';
import 'package:fr_cnamts_ens/user/data/user_repository.dart';
import 'package:fr_cnamts_ens/user/domain/model/contact_change.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/delay_helper.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class UserMiddlewares {
  final IUserDataRepository userDataRepository;
  final UserRepository userRepository;
  final IOfflineUserDataRepository offlineUserDataRepository;
  final RemoteConfigWrapper remoteConfigWrapper;
  final bool isGuestMode;

  UserMiddlewares._({
    required this.userDataRepository,
    required this.offlineUserDataRepository,
    required this.userRepository,
    required this.remoteConfigWrapper,
    required this.isGuestMode,
  });

  static List<Middleware<EnsState>> create(
    IUserDataRepository userDataRepository,
    IOfflineUserDataRepository offlineUserDataRepository,
    UserRepository userRepository,
    RemoteConfigWrapper remoteConfigWrapper,
    bool isGuestMode,
  ) {
    final middlewares = UserMiddlewares._(
      userDataRepository: userDataRepository,
      offlineUserDataRepository: offlineUserDataRepository,
      userRepository: userRepository,
      remoteConfigWrapper: remoteConfigWrapper,
      isGuestMode: isGuestMode,
    );
    return [
      TypedMiddleware<EnsState, InitEnsUserAction>(middlewares._onInitEnsUserAction).call,
      TypedMiddleware<EnsState, FetchUserDataAction>(middlewares._onFetchUserDataAction).call,
      TypedMiddleware<EnsState, ChangeContactAction>(middlewares._onChangeContactAction).call,
      TypedMiddleware<EnsState, ChangePasswordAction>(middlewares._onChangePasswordAction).call,
      TypedMiddleware<EnsState, ValidateOtpAction>(middlewares._onValidateOtpAction).call,
      TypedMiddleware<EnsState, FinalizeChangeContactAction>(middlewares._onFinalizeChangeContactAction).call,
      TypedMiddleware<EnsState, SetFirstConnexionOnboardingDoneAction>(
        middlewares._onSetFirstConnexionOnboardingDoneAction,
      ).call,
      TypedMiddleware<EnsState, ChangeProfileAction>(middlewares._onChangeProfileAction).call,
      TypedMiddleware<EnsState, StoreUsernameAction>(middlewares._onStoreUsernameAction).call,
    ];
  }

  void _onInitEnsUserAction(Store<EnsState> store, InitEnsUserAction action, NextDispatcher next) {
    store.dispatch(ProcessEnsUserAction(userRepository.currentUser));
    store.dispatch(StoreUsernameAction(userRepository.currentUser));
    store.dispatch(FetchOuvrantDroitInformationAction());
    store.dispatch(InitPushNotificationAction());
    _preferredTypeOfChartInitialization(store);
    if (remoteConfigWrapper.isEnabled(Feature.incRecoEnfant)) {
      DelayHelper.displayWithDelay(
        callback: () {
          final patientId = store.state.userState.connectedUserPatientId;
          if (patientId.isNotEmpty) {
            store.dispatch(FetchRecommandationDiffereeAction());
          }
        },
        delay: const Duration(seconds: 20),
      );
    }

    next(action);
  }

  Future<void> _onFetchUserDataAction(Store<EnsState> store, FetchUserDataAction action, NextDispatcher next) async {
    next(action);
    final patientId = store.state.userState.connectedUserPatientId;
    final force = action.force;
    final currentUserDataState = store.state.userState.mainUserDataState;
    if (force || currentUserDataState.status.isNotSuccess() || currentUserDataState.userData == null) {
      final result = await userDataRepository.getUserData(patientId);
      result.onSuccess((userData) {
        store.dispatch(ProcessUserDataSuccessAction(userData, isOverridingProfile: action.isOverridingProfile));
        store.dispatch(
          FetchShouldDisplayIncitationPmlBottomSheetAction(isFirstConnexionOnboardingDone: userData.isOnboardingDone),
        );
      }).onError((_) {
        store.dispatch(ProcessUserDataErrorAction());
      });
    }
  }

  Future<void> _onChangeContactAction(Store<EnsState> store, ChangeContactAction action, NextDispatcher next) async {
    next(action);
    final patientId = UserSelectors.getConnectedUserPatientId(store.state);
    final result = await userDataRepository.changeContact(patientId, action.contactChange);
    result.onSuccess((successResult) {
      store.dispatch(ProcessChangeContactSuccessAction(successResult));
    }).onError((_) {
      store.dispatch(ProcessChangeContactErrorAction());
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE, extraVerticalPadding: 56));
    });
  }

  Future<void> _onChangePasswordAction(Store<EnsState> store, ChangePasswordAction action, NextDispatcher next) async {
    next(action);
    final patientId = UserSelectors.getConnectedUserPatientId(store.state);
    final result = await userDataRepository.changePassword(patientId, action.passwordChange);
    result.onSuccess((successResult) {
      store.dispatch(ProcessChangePasswordSuccessAction(successResult));
      store.dispatch(const DisplaySnackbarAction.success('Mot de passe modifié'));
    }).onError((domainError) {
      store.dispatch(ProcessChangePasswordErrorAction());
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
    });
  }

  Future<void> _onValidateOtpAction(Store<EnsState> store, ValidateOtpAction action, NextDispatcher next) async {
    next(action);
    final patientId = UserSelectors.getConnectedUserPatientId(store.state);
    final result = await userDataRepository.validateOtp(patientId, action.otpValidation);
    result.onSuccess((_) {
      store.dispatch(ProcessValidateOtpSuccessAction());
    }).onError((error) {
      store.dispatch(ProcessValidateOtpErrorAction());
    });
  }

  void _onFinalizeChangeContactAction(Store<EnsState> store, FinalizeChangeContactAction action, NextDispatcher next) {
    final changeContactState = store.state.userState.changeContactState;
    if (changeContactState.isSuccessWithData) {
      final changeContact = changeContactState.contactChange!;
      switch (changeContact.type) {
        case ContactChangeType.MAIL:
          store.dispatch(UpdateEmailAction(changeContact.value));
        case ContactChangeType.PHONE:
          store.dispatch(UpdatePhoneNumberAction(changeContact.value));
      }
    }
    // Ne pas déplacer ce next en haut, puisqu'il va réinitialiser changeContactState à NOT_LOADED avant d'entrer dans le if
    next(action);
  }

  Future<void> _onSetFirstConnexionOnboardingDoneAction(
    Store<EnsState> store,
    SetFirstConnexionOnboardingDoneAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final onboardingDate = action.onboardingDate;
    final result = await userDataRepository.setOnboardingDone(patientId, onboardingDate);
    result.onSuccess((_) {
      store.dispatch(SetShouldDisplayIncitationPmlBottomSheetAction(true));
    });
    result.onError((_) {
      store.dispatch(SetShouldDisplayIncitationPmlBottomSheetAction(false));
      store.dispatch(
        const DisplaySnackbarAction.error(
          'Nous n\'avons pas réussi à enregistrer vos préférences. Lors de votre prochaine connexion, vous devrez les renseigner à nouveau.',
        ),
      );
    });
  }

  Future<void> _onChangeProfileAction(Store<EnsState> store, ChangeProfileAction action, NextDispatcher next) async {
    final newProfileId = action.profile.patientId;
    final patientId = UserSelectors.getPatientId(store.state);
    next(action);
    if (patientId != newProfileId) {
      final result = await userDataRepository.getUserData(newProfileId);
      store.dispatch(ReInitStateForPatientIdAction(action.profile));
      store.dispatch(ProcessCurrentProfileDataAction(action.profile, result));
      store.dispatch(FetchProfileInformationAction());
      _preferredTypeOfChartInitialization(store);
      result.onSuccess((userData) {
        store.dispatch(
          FetchShouldDisplayIncitationPmlBottomSheetAction(isFirstConnexionOnboardingDone: userData.isOnboardingDone),
        );
        final newProfileName = action.profile.nomComplet;
        DelayHelper.displayWithDelay(
          callback: () => store.dispatch(
            DisplaySnackbarAction.success('Le profil de $newProfileName est maintenant affiché'),
          ),
          delay: const Duration(milliseconds: 300),
        );
      });
    }
  }

  void _onStoreUsernameAction(Store<EnsState> store, StoreUsernameAction action, NextDispatcher next) {
    final user = action.user;
    if (user != null && !isGuestMode) {
      offlineUserDataRepository.saveUsernameIntoSecureStorage(user.username);
    }
  }

  void _preferredTypeOfChartInitialization(Store<EnsState> store) {
    final String? age = store.state.userState.currentProfile?.age;
    final int ageValue = age != null ? int.parse(age) : -1;
    final preferredTypeOfChart = ageValue == -1 || ageValue >= 18 ? TypeOfChart.DYNAMIQUE : TypeOfChart.CARNET_SANTE;
    store.dispatch(InitPreferredTypeOfChartAction(preferredTypeOfChart));
  }
}
