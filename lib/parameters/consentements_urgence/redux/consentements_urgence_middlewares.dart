/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/data/consentements_urgence_repository.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/redux/consentements_urgence_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:redux/redux.dart';

class ConsentementsUrgenceMiddlewares {
  final IConsentementsUrgenceRepository consentementsUrgenceRepository;

  ConsentementsUrgenceMiddlewares._(this.consentementsUrgenceRepository);

  static List<Middleware<EnsState>> create(
    IConsentementsUrgenceRepository consentementsUrgenceRepository,
  ) {
    final middleware = ConsentementsUrgenceMiddlewares._(consentementsUrgenceRepository);
    return [
      TypedMiddleware<EnsState, FetchConsentementsUrgenceAction>(
        middleware._onFetchConsentementsUrgenceAction,
      ).call,
      TypedMiddleware<EnsState, UpdateConsentementUrgenceAction>(
        middleware._onUpdateConsentementUrgenceAction,
      ).call,
    ];
  }

  Future<void> _onFetchConsentementsUrgenceAction(
    Store<EnsState> store,
    FetchConsentementsUrgenceAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    if (action.force || store.state.consentementsUrgenceState.status.isNotSuccess()) {
      final result = await consentementsUrgenceRepository.getConsentementsUrgence(patientId);
      store.dispatch(ProcessFetchedConsentementsUrgenceAction(result));
    }
  }

  Future<void> _onUpdateConsentementUrgenceAction(
    Store<EnsState> store,
    UpdateConsentementUrgenceAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await consentementsUrgenceRepository.updateConsentementUrgence(
      patientId,
      action.consentementsUrgence,
    );
    result.onSuccess((successResult) {
      if (!action.isFromOnboarding) {
        store.dispatch(const FetchProfessionnelSanteConfidentialitiesAction(force: true));
      }
    });
    result.onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      store.dispatch(InitConsentementUrgenceEditionAction());
    });
    store.dispatch(ProcessUpdatedConsentementUrgenceAction(result));
  }
}
