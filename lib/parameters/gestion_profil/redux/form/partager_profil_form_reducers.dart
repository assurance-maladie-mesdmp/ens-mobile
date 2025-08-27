/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'partager_profil_form_redux.dart';

class PartagerProfilFormReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, PartagerProfilFormAction>(
          PartagerProfilFormReducers._onPartagerProfilGestionnaireFormAction,
        ).call,
        TypedReducer<EnsState, _ProcessPartagerProfilFormSuccessAction>(
          PartagerProfilFormReducers._onProcessPartagerProfilGestionnaireFormSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessPartagerProfilFormNetworkErrorAction>(
          PartagerProfilFormReducers._onProcessPartagerProfilGestionnaireFormNetworkErrorAction,
        ).call,
        TypedReducer<EnsState, _ProcessPartagerProfilFormErrorAction>(
          PartagerProfilFormReducers._onProcessPartagerProfilGestionnaireFormErrorAction,
        ).call,
        TypedReducer<EnsState, SaveNumeroSecuFromScanRepresentantLegalAction>(
          PartagerProfilFormReducers._onSaveNumeroSecuFromScanRepresentantLegalAction,
        ).call,
        TypedReducer<EnsState, ResetNumeroSecuFromScanRepresentantLegalAction>(
          PartagerProfilFormReducers._onResetNumeroSecuFromScanRepresentantLegalAction,
        ).call,
      ];

  static EnsState _onPartagerProfilGestionnaireFormAction(
    EnsState currentState,
    PartagerProfilFormAction action,
  ) {
    return currentState.clone(
      partagerProfilFormState: currentState.partagerProfilFormState.clone(
        status: PartagerProfilFromStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessPartagerProfilGestionnaireFormSuccessAction(
    EnsState currentState,
    _ProcessPartagerProfilFormSuccessAction action,
  ) {
    return currentState.clone(
      partagerProfilFormState: currentState.partagerProfilFormState.clone(
        status: PartagerProfilFromStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessPartagerProfilGestionnaireFormNetworkErrorAction(
    EnsState currentState,
    _ProcessPartagerProfilFormNetworkErrorAction action,
  ) {
    return currentState.clone(
      partagerProfilFormState: currentState.partagerProfilFormState.clone(
        status: PartagerProfilFromStatus.NETWORK_ERROR,
      ),
    );
  }

  static EnsState _onProcessPartagerProfilGestionnaireFormErrorAction(
    EnsState currentState,
    _ProcessPartagerProfilFormErrorAction action,
  ) {
    return currentState.clone(
      partagerProfilFormState: currentState.partagerProfilFormState.clone(
        status: PartagerProfilFromStatus.ERROR,
      ),
    );
  }

  static EnsState _onSaveNumeroSecuFromScanRepresentantLegalAction(
    EnsState state,
    SaveNumeroSecuFromScanRepresentantLegalAction action,
  ) {
    return state.clone(
      partagerProfilFormState: state.partagerProfilFormState.clone(
        numeroSecuFromScanOptional: Optional.of(action.numeroSecu),
      ),
    );
  }

  static EnsState _onResetNumeroSecuFromScanRepresentantLegalAction(
    EnsState state,
    ResetNumeroSecuFromScanRepresentantLegalAction action,
  ) {
    return state.clone(
      partagerProfilFormState: state.partagerProfilFormState.clone(
        numeroSecuFromScanOptional: Optional.ofNullable(null),
      ),
    );
  }
}
