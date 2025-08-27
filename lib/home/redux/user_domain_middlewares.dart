/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'user_domain_redux.dart';

class UserDomainMiddlewares {
  final IOuvrantDroitRepository ouvrantDroitRepository;
  final IConsentementExtractionDonneesSanteRepository consentementExtractionDonneesSanteRepository;
  final RemoteConfigWrapper remoteConfigWrapper;

  static List<Middleware<EnsState>> create(
    IOuvrantDroitRepository userDomainRepository,
    IConsentementExtractionDonneesSanteRepository consentementExtractionDonneesSanteRepository,
    RemoteConfigWrapper remoteConfigWrapper,
  ) {
    final middleware = UserDomainMiddlewares(
      userDomainRepository,
      consentementExtractionDonneesSanteRepository,
      remoteConfigWrapper,
    );
    return [
      TypedMiddleware<EnsState, FetchOuvrantDroitInformationAction>(middleware._onFetchOuvrantDroitInformationAction)
          .call,
      TypedMiddleware<EnsState, FetchProfileInformationAction>(middleware._onFetchProfileInformationAction).call,
      TypedMiddleware<EnsState, _FetchProfileDataAction>(middleware._onFetchProfileDataAction).call,
      TypedMiddleware<EnsState, GoToFirstProfilRattacheAction>(middleware._onGoToFirstProfilRattacheAction).call,
    ];
  }

  UserDomainMiddlewares(
    this.ouvrantDroitRepository,
    this.consentementExtractionDonneesSanteRepository,
    this.remoteConfigWrapper,
  );

  Future<void> _onFetchOuvrantDroitInformationAction(
    Store<EnsState> store,
    FetchOuvrantDroitInformationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getConnectedUserPatientId(store.state);
    final result = await ouvrantDroitRepository.loadUserDomain(patientId);
    result.profilsRattaches.onSuccess((successResult) {
      store.dispatch(ProcessFetchProfilsRattachesSuccessAction(successResult));
    }).onError((domainError) {
      store.dispatch(ProcessFetchProfilsRattachesErrorAction());
    });

    result.userData.onSuccess((successResult) {
      if (successResult.isProfilInactif) {
        store.dispatch(GoToFirstProfilRattacheAction());
      } else {
        store.dispatch(ProcessUserDataSuccessAction(successResult, isOverridingProfile: true));
        store.dispatch(ProcessUnreadNotificationCountAction(result.notificationsUnreadCount));
        result.invitations.onSuccess((successResult) {
          store.dispatch(ProcessFetchAyantsDroitsPendingInvitationsSuccessAction(successResult));
        }).onError((domainError) {
          store.dispatch(ProcessFetchAyantsDroitsPendingInvitationsErrorAction());
        });
        store.dispatch(FetchProfileInformationAction());
      }
    }).onError((_) {
      store.dispatch(ProcessUserDataErrorAction());
    });
  }

  void _onGoToFirstProfilRattacheAction(
    Store<EnsState> store,
    GoToFirstProfilRattacheAction action,
    NextDispatcher next,
  ) {
    next(action);
    final profilsRattachesState = store.state.profilsRattachesState;
    final hasProfilRattache =
        profilsRattachesState.status.isSuccess() && profilsRattachesState.profilsRattaches.isNotEmpty;
    if (hasProfilRattache) {
      final firstProfilRattache = profilsRattachesState.profilsRattaches.first;

      store.dispatch(
        ChangeProfileAction(
          EnsProfil(
            prenom: firstProfilRattache.firstName,
            nom: firstProfilRattache.lastName,
            patientId: firstProfilRattache.patientId,
            couleur: ProfilesColorHelper.getIconColor(0),
          ),
        ),
      );
    }
  }

  void _onFetchProfileInformationAction(
    Store<EnsState> store,
    FetchProfileInformationAction action,
    NextDispatcher next,
  ) {
    next(action);
    store.dispatch(_FetchProfileDataAction());
    if (remoteConfigWrapper.isEnabled(Feature.agenda)) {
      store.dispatch(FetchExamensRecommandesAction());
    }
    store.dispatch(CheckIfNouvellesFonctionnalitesToDisplayAction());
    store.dispatch(FetchHomeConnecteeMessagePanneAction());
    store.dispatch(const FetchMonHistoireDeSanteAction());
    store.dispatch(const FetchRecommandationsAction());
    store.dispatch(FetchRaccourcisItemAction());
    store.dispatch(FetchIncitationWelcomePageViewsAction());
    store.dispatch(FetchShouldDisplayPsHorsRefInfoAction());
  }

  Future<void> _onFetchProfileDataAction(
    Store<EnsState> store,
    _FetchProfileDataAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    if (remoteConfigWrapper.isEnabled(Feature.consentementExtractionDonnees)) {
      final consentementResult = await consentementExtractionDonneesSanteRepository.getConsentement(patientId);
      consentementResult.onSuccess((result) {
        store.dispatch(
          ProcessFetchConsentementExtractionDonneesSanteSuccessAction(
            hasAccepted: result.consent,
            isWhitelisted: result.isWhitelisted,
          ),
        );
      });
    }

    final userState = store.state.userState;
    if (userState.currentProfile != null && userState.currentProfile!.sexe != null) {
      store.dispatch(
        FetchPreventionArticlesAction(
          sexLabel: userState.currentProfile!.sexe!.label,
          age: getAgeFromBirthDate(userState.currentProfile!.dateNaissance),
        ),
      );
    } else {
      store.dispatch(ProcessFetchPreventionArticlesErrorAction());
      store.dispatch(ProcessFetchMonActuSanteErrorAction());
    }
  }
}
