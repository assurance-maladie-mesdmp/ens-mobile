/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'synthese_pdf_redux.dart';

class SynthesePdfReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchSynthesePMLAction>(SynthesePdfReducers._onFetchSynthesePMLAction).call,
        TypedReducer<EnsState, _ProcessFetchSynthesePMLSuccessAction>(
          SynthesePdfReducers._onProcessFetchSynthesePMLSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchSynthesePMLErrorAction>(
          SynthesePdfReducers._onProcessFetchSynthesePMLErrorAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchSyntheseQuestionnaireSuccessAction>(
          SynthesePdfReducers._onProcessFetchSyntheseQuestionnaireSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchSyntheseQuestionnaireErrorAction>(
          SynthesePdfReducers._onProcessFetchSyntheseQuestionnaireErrorAction,
        ).call,
        TypedReducer<EnsState, DisplayConfidentialiteBottomSheetAction>(
          SynthesePdfReducers._onDisplayConfidentialiteBottomSheet,
        ).call,
        TypedReducer<EnsState, InitSynthesePdfStateAction>(
          SynthesePdfReducers._onInitSynthesePdfStateAction,
        ).call,
        TypedReducer<EnsState, UpdateSyntheseToDocsStatusAction>(
          SynthesePdfReducers._onUpdateSyntheseToDocsStatusAction,
        ).call,
      ];

  static EnsState _onFetchSynthesePMLAction(EnsState state, FetchSynthesePMLAction action) {
    return state.clone(synthesePdfState: const SynthesePdfState(status: AllPurposesStatus.LOADING));
  }

  static EnsState _onProcessFetchSynthesePMLSuccessAction(
    EnsState state,
    _ProcessFetchSynthesePMLSuccessAction action,
  ) {
    return state.clone(
      synthesePdfState: SynthesePdfState(
        status: AllPurposesStatus.SUCCESS,
        data: SynthesePdfData(synthesePdf: action.synthesePML, displayConfidentialiteBottomSheet: false),
        saveDocumentStatus: AllPurposesStatus.NOT_LOADED,
      ),
    );
  }

  static EnsState _onProcessFetchSynthesePMLErrorAction(
    EnsState state,
    _ProcessFetchSynthesePMLErrorAction action,
  ) {
    return state.clone(synthesePdfState: const SynthesePdfState(status: AllPurposesStatus.ERROR));
  }

  static EnsState _onProcessFetchSyntheseQuestionnaireSuccessAction(
    EnsState state,
    _ProcessFetchSyntheseQuestionnaireSuccessAction action,
  ) {
    return state.clone(
      synthesePdfState: SynthesePdfState(
        status: AllPurposesStatus.SUCCESS,
        data: SynthesePdfData(synthesePdf: action.syntheseAQ, displayConfidentialiteBottomSheet: false),
        saveDocumentStatus: AllPurposesStatus.NOT_LOADED,
      ),
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        lastUpdateDateOptional: Optional.ofNullable(action.syntheseAQ.updateDate),
      ),
    );
  }

  static EnsState _onProcessFetchSyntheseQuestionnaireErrorAction(
    EnsState state,
    _ProcessFetchSyntheseQuestionnaireErrorAction action,
  ) {
    return state.clone(synthesePdfState: const SynthesePdfState(status: AllPurposesStatus.ERROR));
  }

  static EnsState _onDisplayConfidentialiteBottomSheet(EnsState state, DisplayConfidentialiteBottomSheetAction action) {
    final syntheseState = state.synthesePdfState;
    if (syntheseState.isSuccessWithData) {
      return state.clone(
        synthesePdfState: syntheseState.clone(
          data: syntheseState.data!.clone(
            displayConfidentialiteBottomSheet: action.shouldDisplayConfidentialiteBottomSheet,
          ),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onInitSynthesePdfStateAction(EnsState state, InitSynthesePdfStateAction action) {
    return state.clone(
      synthesePdfState: const SynthesePdfState(),
    );
  }

  static EnsState _onUpdateSyntheseToDocsStatusAction(EnsState state, UpdateSyntheseToDocsStatusAction action) {
    return state.clone(
      synthesePdfState: state.synthesePdfState.clone(saveDocumentStatus: action.status),
    );
  }
}
