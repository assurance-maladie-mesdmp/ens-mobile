/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'consentement_extraction_donnees_sante_redux.dart';

class ConsentementExtractionDonneesSanteReducers {
  static List<Reducer<EnsState>> create() {
    return [
      TypedReducer<EnsState, ProcessFetchConsentementExtractionDonneesSanteSuccessAction>(
        ConsentementExtractionDonneesSanteReducers._onProcessFetchConsentementExtractionDonneesSanteSuccessAction,
      ).call,
      TypedReducer<EnsState, UpdateConsentementExtractionDonneesSanteAction>(
        ConsentementExtractionDonneesSanteReducers._onUpdateConsentementExtractionDonneesSanteAction,
      ).call,
      TypedReducer<EnsState, _ProcessUpdateConsentementExtractionDonneesSanteSuccessAction>(
        ConsentementExtractionDonneesSanteReducers._onProcessUpdateConsentementExtractionDonneesSanteSuccessAction,
      ).call,
      TypedReducer<EnsState, _ProcessUpdateConsentementExtractionDonneesSanteErrorAction>(
        ConsentementExtractionDonneesSanteReducers._onProcessUpdateConsentementExtractionDonneesSanteErrorAction,
      ).call,
    ];
  }

  static EnsState _onProcessFetchConsentementExtractionDonneesSanteSuccessAction(
    EnsState state,
    ProcessFetchConsentementExtractionDonneesSanteSuccessAction action,
  ) {
    return state.clone(
      consentementExtractionDonneesSanteState: state.consentementExtractionDonneesSanteState.clone(
        status: AllPurposesStatus.SUCCESS,
        hasAcceptedToConsentOptional: Optional.ofNullable(action.hasAccepted),
        isWhitelisted: action.isWhitelisted ?? false,
      ),
    );
  }

  static EnsState _onUpdateConsentementExtractionDonneesSanteAction(
    EnsState state,
    UpdateConsentementExtractionDonneesSanteAction action,
  ) {
    return state.clone(
      consentementExtractionDonneesSanteState: state.consentementExtractionDonneesSanteState.clone(
        status: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessUpdateConsentementExtractionDonneesSanteSuccessAction(
    EnsState state,
    _ProcessUpdateConsentementExtractionDonneesSanteSuccessAction action,
  ) {
    return state.clone(
      consentementExtractionDonneesSanteState: state.consentementExtractionDonneesSanteState.clone(
        status: AllPurposesStatus.SUCCESS,
        hasAcceptedToConsentOptional: Optional.ofNullable(action.hasAccepted),
      ),
    );
  }

  static EnsState _onProcessUpdateConsentementExtractionDonneesSanteErrorAction(
    EnsState state,
    _ProcessUpdateConsentementExtractionDonneesSanteErrorAction action,
  ) {
    return state.clone(
      consentementExtractionDonneesSanteState: state.consentementExtractionDonneesSanteState.clone(
        status: AllPurposesStatus.ERROR,
      ),
    );
  }
}
