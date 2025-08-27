/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'helpdesk_redux.dart';

class HelpdeskReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, CreateHelpdeskTicketAction>(HelpdeskReducers._onCreateHelpdeskTicketAction).call,
        TypedReducer<EnsState, _ProcessCreateHelpdeskTicketSuccessAction>(
          HelpdeskReducers._onProcessCreateHelpdeskTicketSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessCreateHelpdeskTicketErrorAction>(
          HelpdeskReducers._onProcessCreateHelpdeskTicketErrorAction,
        ).call,
        TypedReducer<EnsState, ReInitHelpdeskStateAction>(
          HelpdeskReducers._onReInitHelpdeskStateAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchedNouvelleDemandeMotifsSuccessAction>(
          HelpdeskReducers._onProcessFetchedNouvelleDemandeMotifsSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchedNouvelleDemandeMotifsErrorAction>(
          HelpdeskReducers._onProcessFetchedNouvelleDemandeMotifsErrorAction,
        ).call,
        TypedReducer<EnsState, FetchNouvelleDemandeMotifsAction>(
          HelpdeskReducers._onFetchNouvelleDemandeMotifsAction,
        ).call,
        TypedReducer<EnsState, _ProcessAddAttachmentAction>(
          HelpdeskReducers._onProcessAddAttachmentAction,
        ).call,
        TypedReducer<EnsState, RemoveAttachmentAction>(
          HelpdeskReducers._onRemoveAttachmentAction,
        ).call,
        TypedReducer<EnsState, SendSignalementAction>(
          HelpdeskReducers._onSendSignalementAction,
        ).call,
        TypedReducer<EnsState, _ProcessSendSignalementSuccessAction>(
          HelpdeskReducers._onProcessSendSignalementSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessSendSignalementErrorAction>(
          HelpdeskReducers._onProcessSendSignalementErrorAction,
        ).call,
        TypedReducer<EnsState, FetchSignalementInformationAction>(
          HelpdeskReducers._onFetchSignalementInformationAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchSignalementInformationSuccessAction>(
          HelpdeskReducers._onProcessFetchSignalementInformationSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchSignalementInformationErrorAction>(
          HelpdeskReducers._onProcessFetchSignalementInformationErrorAction,
        ).call,
      ];

  static EnsState _onCreateHelpdeskTicketAction(EnsState ensState, CreateHelpdeskTicketAction action) {
    return ensState.clone(
      helpdeskState: ensState.helpdeskState.clone(
        createHelpdeskTicketStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessCreateHelpdeskTicketSuccessAction(
    EnsState ensState,
    _ProcessCreateHelpdeskTicketSuccessAction action,
  ) {
    return ensState.clone(
      helpdeskState: ensState.helpdeskState.clone(
        createHelpdeskTicketStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessCreateHelpdeskTicketErrorAction(
    EnsState ensState,
    _ProcessCreateHelpdeskTicketErrorAction action,
  ) {
    return ensState.clone(
      helpdeskState: ensState.helpdeskState.clone(
        createHelpdeskTicketStatus: AllPurposesStatus.ERROR,
      ),
    );
  }

  static EnsState _onReInitHelpdeskStateAction(EnsState state, ReInitHelpdeskStateAction action) {
    return state.clone(
      helpdeskState: state.helpdeskState.clone(
        createHelpdeskTicketStatus: AllPurposesStatus.NOT_LOADED,
        attachments: [],
        sendSignalementStatus: AllPurposesStatus.NOT_LOADED,
      ),
    );
  }

  static EnsState _onProcessFetchedNouvelleDemandeMotifsSuccessAction(
    EnsState state,
    _ProcessFetchedNouvelleDemandeMotifsSuccessAction action,
  ) {
    return state.clone(
      helpdeskState: state.helpdeskState.clone(
        motifs: action.motifs,
        motifsStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessFetchedNouvelleDemandeMotifsErrorAction(
    EnsState state,
    _ProcessFetchedNouvelleDemandeMotifsErrorAction action,
  ) {
    return state.clone(
      helpdeskState: state.helpdeskState.clone(
        motifsStatus: AllPurposesStatus.ERROR,
      ),
    );
  }

  static EnsState _onFetchNouvelleDemandeMotifsAction(
    EnsState state,
    FetchNouvelleDemandeMotifsAction action,
  ) {
    return state.clone(
      helpdeskState: state.helpdeskState.clone(
        motifsStatus: AllPurposesStatus.NOT_LOADED,
      ),
    );
  }

  static EnsState _onProcessAddAttachmentAction(
    EnsState state,
    _ProcessAddAttachmentAction action,
  ) {
    final List<EnsFileContent> newAttachments = List.from(state.helpdeskState.attachments);
    newAttachments.add(action.attachment);
    return state.clone(
      helpdeskState: state.helpdeskState.clone(
        attachments: newAttachments,
      ),
    );
  }

  static EnsState _onRemoveAttachmentAction(
    EnsState state,
    RemoveAttachmentAction action,
  ) {
    final List<EnsFileContent> newAttachments = List.from(state.helpdeskState.attachments);
    newAttachments.remove(action.attachment);
    return state.clone(
      helpdeskState: state.helpdeskState.clone(
        attachments: newAttachments,
      ),
    );
  }

  static EnsState _onSendSignalementAction(EnsState state, SendSignalementAction action) {
    return state.clone(
      helpdeskState: state.helpdeskState.clone(sendSignalementStatus: AllPurposesStatus.LOADING),
    );
  }

  static EnsState _onProcessSendSignalementSuccessAction(
    EnsState state,
    _ProcessSendSignalementSuccessAction action,
  ) {
    return state.clone(
      helpdeskState: state.helpdeskState.clone(sendSignalementStatus: AllPurposesStatus.SUCCESS),
    );
  }

  static EnsState _onProcessSendSignalementErrorAction(
    EnsState state,
    _ProcessSendSignalementErrorAction action,
  ) {
    return state.clone(
      helpdeskState: state.helpdeskState.clone(sendSignalementStatus: AllPurposesStatus.ERROR),
    );
  }

  static EnsState _onFetchSignalementInformationAction(
    EnsState state,
    FetchSignalementInformationAction action,
  ) {
    return state.clone(
      helpdeskState: state.helpdeskState.clone(
        signalementInformationState: state.helpdeskState.signalementInformationState.clone(
          status: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchSignalementInformationSuccessAction(
    EnsState state,
    _ProcessFetchSignalementInformationSuccessAction action,
  ) {
    return state.clone(
      helpdeskState: state.helpdeskState.clone(
        signalementInformationState: state.helpdeskState.signalementInformationState.clone(
          status: AllPurposesStatus.SUCCESS,
          signalementInformationOptional: Optional.of(action.signalementInformation),
        ),
      ),
    );
  }

  static EnsState _onProcessFetchSignalementInformationErrorAction(
    EnsState state,
    _ProcessFetchSignalementInformationErrorAction action,
  ) {
    return state.clone(
      helpdeskState: state.helpdeskState.clone(
        signalementInformationState: state.helpdeskState.signalementInformationState.clone(
          status: AllPurposesStatus.ERROR,
          signalementInformationOptional: Optional.ofNullable(null),
        ),
      ),
    );
  }
}
