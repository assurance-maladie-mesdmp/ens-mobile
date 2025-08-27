/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'helpdesk_redux.dart';

class HelpdeskMiddleware {
  final IHelpdeskRepository helpdeskRepository;
  final FilePreprocessor filePreprocessor;

  HelpdeskMiddleware._internal(this.helpdeskRepository, this.filePreprocessor);

  static List<Middleware<EnsState>> create(
    IHelpdeskRepository helpdeskRepository,
    FilePreprocessor filePreprocessor,
  ) {
    final middlewares = HelpdeskMiddleware._internal(helpdeskRepository, filePreprocessor);
    return [
      TypedMiddleware<EnsState, CreateHelpdeskTicketAction>(middlewares._onCreateHelpdeskTicketAction).call,
      TypedMiddleware<EnsState, FetchNouvelleDemandeMotifsAction>(middlewares._onFetchNouvelleDemandeMotifsAction).call,
      TypedMiddleware<EnsState, AddAttachmentAction>(middlewares._onAddAttachmentAction).call,
      TypedMiddleware<EnsState, SendSignalementAction>(middlewares._onSendSignalementAction).call,
      TypedMiddleware<EnsState, FetchSignalementInformationAction>(
        middlewares._onFetchHelpdeskSignalementInformation,
      ).call,
    ];
  }

  Future<void> _onAddAttachmentAction(
    Store<EnsState> store,
    AddAttachmentAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await filePreprocessor.processDocumentEdition(action.attachment, FileMaxSizeEnum.TEN_MEGA_BYTE);
    if (result is FileProcessingError) {
      store.dispatch(DisplaySnackbarAction.error(result.message));
    } else if (result is FileProcessingSuccess) {
      store.dispatch(_ProcessAddAttachmentAction(result.ensFileContent));
    }
  }

  Future<void> _onCreateHelpdeskTicketAction(
    Store<EnsState> store,
    CreateHelpdeskTicketAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);

    final result = await helpdeskRepository.createHelpdeskTicket(
      patientId: patientId,
      ticket: action.creatingHelpdeskTicket,
    );
    result.onSuccess((successResult) {
      store.dispatch(_ProcessCreateHelpdeskTicketSuccessAction());
      switch (action.input) {
        case FormulaireNouvelleDemandeInput.NOUS_CONTACTER:
          store.dispatch(const DisplaySnackbarAction.success('Demande envoyée'));
        case FormulaireNouvelleDemandeInput.SIGNALER_UN_DOCUMENT:
        case FormulaireNouvelleDemandeInput.SIGNALER_UN_PS:
        case FormulaireNouvelleDemandeInput.SIGNALER_UN_SERVICE:
          store.dispatch(const DisplaySnackbarAction.success('Signalement envoyé'));
      }
    }).onError((domainError) {
      store.dispatch(_ProcessCreateHelpdeskTicketErrorAction());
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!, extraVerticalPadding: 92));
      }
    });
  }

  Future<void> _onFetchNouvelleDemandeMotifsAction(
    Store<EnsState> store,
    FetchNouvelleDemandeMotifsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (store.state.helpdeskState.motifs.isEmpty) {
      final result = await helpdeskRepository.getMotifs();
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchedNouvelleDemandeMotifsSuccessAction(successResult));
      });
      result.onError((error) {
        store.dispatch(_ProcessFetchedNouvelleDemandeMotifsErrorAction());
      });
    }
  }

  Future<void> _onSendSignalementAction(
    Store<EnsState> store,
    SendSignalementAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await helpdeskRepository.sendSignalement(
      patientId: patientId,
      signalement: action.signalement,
    );
    result.onSuccess((successResult) {
      store.dispatch(_ProcessSendSignalementSuccessAction());
      store.dispatch(const DisplaySnackbarAction.success('Signalement envoyé'));
    }).onError((domainError) {
      store.dispatch(_ProcessSendSignalementErrorAction());
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!, extraVerticalPadding: 92));
      }
    });
  }

  Future<void> _onFetchHelpdeskSignalementInformation(
    Store<EnsState> store,
    FetchSignalementInformationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await helpdeskRepository.fetchSignalementInformation(
      patientId: patientId,
      signalementType: action.signalementType,
      idToSignal: action.idToSignal,
    );
    result.onSuccess((successResult) {
      store.dispatch(_ProcessFetchSignalementInformationSuccessAction(successResult));
    }).onError((error) {
      store.dispatch(_ProcessFetchSignalementInformationErrorAction());
    });
  }
}
