/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'vaccinations_redux.dart';

class VaccinationsMiddlewares {
  final IVaccinationsRepository vaccinationsRepository;

  VaccinationsMiddlewares(this.vaccinationsRepository);

  static List<Middleware<EnsState>> create(IVaccinationsRepository vaccinationsRepository) {
    final middlewares = VaccinationsMiddlewares(vaccinationsRepository);

    return [
      TypedMiddleware<EnsState, FetchVaccinationsAction>(middlewares._onFetchVaccinationsAction).call,
      TypedMiddleware<EnsState, AddVaccinationAction>(middlewares._onAddVaccinationAction).call,
      TypedMiddleware<EnsState, UpdateVaccinationAction>(middlewares._onUpdateVaccinationAction).call,
      TypedMiddleware<EnsState, DeleteVaccinationAction>(middlewares._onDeleteVaccinationAction).call,
      TypedMiddleware<EnsState, FetchVaccinsAction>(middlewares._onFetchVaccinsAction).call,
      TypedMiddleware<EnsState, FetchCarteVaccinationsAction>(middlewares._onFetchCarteVaccinationsAction).call,
      TypedMiddleware<EnsState, FetchVaccinByCipAction>(middlewares._onFetchVaccinByCipAction).call,
    ];
  }

  Future<void> _onFetchVaccinationsAction(
    Store<EnsState> store,
    FetchVaccinationsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (action.force || store.state.vaccinationsState.vaccinationsListState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await vaccinationsRepository.getVaccinations(patientId);
      result.onSuccess((successResult) {
        store.dispatch(ProcessFetchVaccinationsSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(ProcessFetchVaccinationsErrorAction());
      });
    }
  }

  Future<void> _onAddVaccinationAction(Store<EnsState> store, AddVaccinationAction action, NextDispatcher next) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await vaccinationsRepository.addVaccination(patientId, action.editingVaccination);
    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Vaccination ajoutée'));
      store.dispatch(AddSuccessfulRatingAction());
      store.dispatch(ProcessEditVaccinationSuccessAction());
      store.dispatch(const FetchVaccinationsAction(force: true));
      store.dispatch(const FetchMonHistoireDeSanteEpisodesAction(force: true));
    }).onError((domainError) {
      if (domainError == VaccinationDomainError.DATE_INVALIDE) {
        store.dispatch(ProcessEditVaccinationDateErrorAction());
      } else {
        store.dispatch(InitVaccinationEditionAction());
        if (domainError.errorMessage != null) {
          store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
        }
      }
    });
  }

  Future<void> _onUpdateVaccinationAction(
    Store<EnsState> store,
    UpdateVaccinationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await vaccinationsRepository.updateVaccination(patientId, action.editingVaccination);
    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Vaccination modifiée'));
      store.dispatch(ProcessEditVaccinationSuccessAction());
      store.dispatch(const FetchVaccinationsAction(force: true));
      store.dispatch(const FetchMonHistoireDeSanteEpisodesAction(force: true));
    }).onError((domainError) {
      if (domainError == VaccinationDomainError.DATE_INVALIDE) {
        store.dispatch(ProcessEditVaccinationDateErrorAction());
      } else {
        store.dispatch(InitVaccinationEditionAction());
        if (domainError.errorMessage != null) {
          store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
        }
      }
    });
  }

  Future<void> _onDeleteVaccinationAction(
    Store<EnsState> store,
    DeleteVaccinationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    store.dispatch(const DisplaySnackbarAction.loading('Suppression en cours...'));
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await vaccinationsRepository.deleteVaccination(patientId, action.vaccinationId);
    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Vaccination supprimée'));
      store.dispatch(ProcessDeleteVaccinationSuccessAction(successResult));
      store.dispatch(const FetchMonHistoireDeSanteEpisodesAction(force: true));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onFetchVaccinsAction(Store<EnsState> store, FetchVaccinsAction action, NextDispatcher next) async {
    next(action);
    if (store.state.vaccinationsState.vaccinsListState.status.isNotSuccess()) {
      final result = await vaccinationsRepository.getVaccins();
      result.onSuccess((successResult) {
        store.dispatch(ProcessFetchVaccinsSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(ProcessFetchVaccinsErrorAction());
      });
    }
  }

  Future<void> _onFetchCarteVaccinationsAction(
    Store<EnsState> store,
    FetchCarteVaccinationsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (store.state.vaccinationsState.carteVaccinationsState.isNotSuccess) {
      final result = await vaccinationsRepository.getCarteVaccinations();
      result.onSuccess((successResult) {
        store.dispatch(ProcessFetchCarteVaccinationsSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(ProcessFetchCarteVaccinationsErrorAction());
      });
    }
  }

  Future<void> _onFetchVaccinByCipAction(
    Store<EnsState> store,
    FetchVaccinByCipAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await vaccinationsRepository.getVaccinByCodeCip(action.cipCode);
    result.onSuccess((successResult) {
      store.dispatch(ProcessFetchVaccinByCipSuccessAction(successResult));
    }).onError((error) {
      store.dispatch(ProcessFetchVaccinByCipErrorAction());
      store.dispatch(
        const DisplaySnackbarAction.error(
          'Les données n\'ont pas pu être récupérées. Remplissez le formulaire manuellement.',
        ),
      );
    });
  }
}
