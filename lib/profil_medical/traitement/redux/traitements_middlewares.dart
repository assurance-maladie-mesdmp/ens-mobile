/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/redux/allergies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/redux/maladies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/data/traitements_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_actions.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/app_rating/redux/app_rating_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:redux/redux.dart';

class TraitementsMiddlewares {
  final ITraitementsRepository traitementsRepository;

  TraitementsMiddlewares(this.traitementsRepository);

  static List<Middleware<EnsState>> create(
    ITraitementsRepository traitementsRepository,
  ) {
    final middleware = TraitementsMiddlewares(traitementsRepository);
    return [
      TypedMiddleware<EnsState, FetchTraitementsAction>(middleware._onFetchTraitementsAction).call,
      TypedMiddleware<EnsState, AddTraitementAction>(middleware._onAddTraitementAction).call,
      TypedMiddleware<EnsState, UpdateTraitementAction>(middleware._onUpdateTraitementAction).call,
      TypedMiddleware<EnsState, DeleteTraitementAction>(middleware._onDeleteTraitementAction).call,
      TypedMiddleware<EnsState, FetchNomTraitementByCodeCipAction>(middleware._onFetchNomTraitementByCodeCipAction)
          .call,
    ];
  }

  Future<void> _onFetchTraitementsAction(
    Store<EnsState> store,
    FetchTraitementsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final traitementListState = store.state.traitementsState.traitementsListState;
    if (action.force || traitementListState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await traitementsRepository.getTraitements(patientId);
      result.onSuccess((successResult) {
        store.dispatch(
          ProcessFetchTraitementsSuccessAction(
            traitements: successResult.traitements.traitements,
            nonConcerneDepuis: successResult.traitements.unconcernedDeclarationDate,
          ),
        );
        store.dispatch(ProcessFetchLinkMaladiesSuccessAction(successResult.maladies));
        store.dispatch(ProcessFetchLinkAllergiesSuccessAction(successResult.allergies));
      }).onError((error) {
        store.dispatch(ProcessFetchTraitementsErrorAction());
      });
    }
  }

  Future<void> _onAddTraitementAction(
    Store<EnsState> store,
    AddTraitementAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final isAddedFromIncitation = store.state.incitationPmlCategoryState.category.isFromTraitementsIncitation;
    final result = await traitementsRepository.addTraitement(patientId, action.traitementTemporaire);
    result.onSuccess((_) {
      if (!isAddedFromIncitation) {
        store.dispatch(const DisplaySnackbarAction.success('Traitement ajouté à mon profil médical'));
      }
      store.dispatch(AddSuccessfulRatingAction());
      store.dispatch(ProcessAddedOrUpdatedTraitementSuccessAction());
      store.dispatch(const FetchTraitementsAction(force: true));
    }).onError((error) {
      if (!isAddedFromIncitation) {
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      }
      store.dispatch(ProcessAddedOrUpdatedTraitementErrorAction());
    });
  }

  Future<void> _onUpdateTraitementAction(
    Store<EnsState> store,
    UpdateTraitementAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await traitementsRepository.updateTraitement(patientId, action.editingTraitement);
    result.onSuccess((_) {
      store.dispatch(const DisplaySnackbarAction.success('Traitement modifié'));
      store.dispatch(ProcessAddedOrUpdatedTraitementSuccessAction());
      store.dispatch(const FetchTraitementsAction(force: true));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      store.dispatch(ProcessAddedOrUpdatedTraitementErrorAction());
    });
  }

  Future<void> _onDeleteTraitementAction(
    Store<EnsState> store,
    DeleteTraitementAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await traitementsRepository.deleteTraitement(patientId, action.traitementId);
    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Traitement supprimé'));
      store.dispatch(ProcessDeleteTraitementSuccessAction(successResult));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onFetchNomTraitementByCodeCipAction(
    Store<EnsState> store,
    FetchNomTraitementByCodeCipAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await traitementsRepository.getNomTraitementByCodeCip(action.codeCip);
    result.onSuccess((successResult) {
      store.dispatch(ProcessFetchedNomTraitementByCodeCipSuccessAction(successResult));
    }).onError((error) {
      store.dispatch(
        const DisplaySnackbarAction.error(
          'Les données n\'ont pas pu être récupérées. Remplissez le formulaire manuellement.',
        ),
      );
      store.dispatch(ProcessFetchedNomTraitementByCodeCipErrorAction());
    });
  }
}
