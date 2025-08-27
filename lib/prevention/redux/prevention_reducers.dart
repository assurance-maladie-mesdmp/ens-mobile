/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'prevention_redux.dart';

class PreventionReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchPreventionArticlesAction>(
          PreventionReducers._onFetchPreventionArticlesAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchPreventionArticlesSuccessAction>(
          PreventionReducers._onProcessFetchPreventionArticlesSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchPreventionArticlesErrorAction>(
          PreventionReducers._onProcessFetchPreventionArticlesErrorAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchMonActuSanteSuccessAction>(
          PreventionReducers._onProcessFetchMonActuSanteSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchMonActuSanteErrorAction>(
          PreventionReducers._onProcessFetchMonActuSanteErrorAction,
        ).call,
        TypedReducer<EnsState, FetchPreventionDetailAction>(
          PreventionReducers._onFetchPreventionDetailAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchPreventionDetailSuccessAction>(
          PreventionReducers._onProcessFetchPreventionDetailSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchPreventionDetailErrorAction>(
          PreventionReducers._onProcessFetchPreventionDetailErrorAction,
        ).call,
        TypedReducer<EnsState, ProcessUpdateTuileQuestionnaireAction>(
          PreventionReducers._onProcessUpdateTuileQuestionnaireAction,
        ).call,
      ];

  static EnsState _onFetchPreventionArticlesAction(
    EnsState state,
    FetchPreventionArticlesAction action,
  ) {
    return state.clone(
      preventionState: state.preventionState.clone(
        preventionListState: action.force || state.preventionState.preventionListState.status.isNotSuccess()
            ? state.preventionState.preventionListState.clone(status: AllPurposesStatus.LOADING)
            : state.preventionState.preventionListState,
      ),
      monActuState: state.monActuState.clone(
        monActuListState: action.force || state.monActuState.monActuListState.status.isNotSuccess()
            ? state.monActuState.monActuListState.clone(status: AllPurposesStatus.LOADING)
            : state.monActuState.monActuListState,
      ),
    );
  }

  static EnsState _onProcessFetchPreventionArticlesSuccessAction(
    EnsState state,
    _ProcessFetchPreventionArticlesSuccessAction action,
  ) {
    return state.clone(
      preventionState: state.preventionState.clone(
        preventionListState: state.preventionState.preventionListState.clone(
          status: AllPurposesStatus.SUCCESS,
          articles: action.articles,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchPreventionArticlesErrorAction(
    EnsState state,
    ProcessFetchPreventionArticlesErrorAction action,
  ) {
    return state.clone(
      preventionState: state.preventionState.clone(
        preventionListState: state.preventionState.preventionListState.clone(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onProcessFetchMonActuSanteSuccessAction(
    EnsState state,
    _ProcessFetchMonActuSanteSuccessAction action,
  ) {
    return state.clone(
      monActuState: state.monActuState.clone(
        monActuListState: state.monActuState.monActuListState.clone(
          status: AllPurposesStatus.SUCCESS,
          articles: action.articles,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchMonActuSanteErrorAction(EnsState state, ProcessFetchMonActuSanteErrorAction action) {
    return state.clone(
      monActuState: state.monActuState.clone(
        monActuListState: state.monActuState.monActuListState.clone(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onFetchPreventionDetailAction(
    EnsState state,
    FetchPreventionDetailAction action,
  ) {
    return state.clone(
      preventionState: state.preventionState.clone(
        preventionDetailState: state.preventionState.preventionDetailState.clone(status: AllPurposesStatus.LOADING),
      ),
    );
  }

  static EnsState _onProcessFetchPreventionDetailSuccessAction(
    EnsState state,
    _ProcessFetchPreventionDetailSuccessAction action,
  ) {
    return state.clone(
      preventionState: state.preventionState.clone(
        preventionDetailState: state.preventionState.preventionDetailState.clone(
          status: AllPurposesStatus.SUCCESS,
          articleDetailOptional: Optional.ofNullable(action.articleDetail),
        ),
      ),
    );
  }

  static EnsState _onProcessFetchPreventionDetailErrorAction(
    EnsState state,
    _ProcessFetchPreventionDetailErrorAction action,
  ) {
    return state.clone(
      preventionState: state.preventionState.clone(
        preventionDetailState: state.preventionState.preventionDetailState.clone(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onProcessUpdateTuileQuestionnaireAction(
    EnsState state,
    ProcessUpdateTuileQuestionnaireAction action,
  ) {
    Article? articleQuestionnaire;
    final questionnaireCode = action.questionnaireCode;
    final recommandationCode = action.recommandation.recommandationCode;
    final trancheAgeForTracking = questionnaireCode.getTrancheAgeForTracking();
    if (recommandationCode == RecommandationCode.INCITER_COMPLETER_QUIZ) {
      articleQuestionnaire = Article.forQuestionnaire(
        title: questionnaireCode.getCarouselTitle(),
        link: QuestionnaireAgesClesWelcomeScreen.routeName,
        linkText: 'Répondre au questionnaire',
        questionnaireTag: TagsHome.tagButtonRepondreQuestionnaire981(trancheAgeForTracking),
        recommandationCode: RecommandationCode.INCITER_COMPLETER_QUIZ,
        questionnaireCode: questionnaireCode,
      );
    } else if (recommandationCode == RecommandationCode.INCITER_FINALISER_QUIZ) {
      String linkScreen = QuestionnaireAgesClesQuestionScreen.routeName;
      if (action.questionnaireVersion != null &&
          action.questionnaireLastVersion != null &&
          action.questionnaireVersion != action.questionnaireLastVersion) {
        linkScreen = StartNewVersionQuestionnaireScreen.routeName;
      }
      articleQuestionnaire = Article.forQuestionnaire(
        title: 'Je finalise mon questionnaire pour préparer mon bilan de prévention.',
        link: linkScreen,
        linkText: 'Reprendre mon questionnaire',
        questionnaireTag: TagsHome.tagButtonReprendreQuestionnaire982(trancheAgeForTracking),
        recommandationCode: RecommandationCode.INCITER_FINALISER_QUIZ,
        questionnaireCode: questionnaireCode,
      );
    } else if (recommandationCode == RecommandationCode.INCITER_ENREGISTRER_QUIZ) {
      articleQuestionnaire = Article.forQuestionnaire(
        title:
            'Mon questionnaire est complété. Je l’enregistre pour le rendre visible auprès de professionnels de santé.',
        link: SyntheseQuestionnaireAgesClesScreen.routeName,
        linkText: 'Voir et enregistrer mon questionnaire',
        questionnaireTag: TagsHome.tagButtonVoirEtEnregistrerQuestionnaire984(trancheAgeForTracking),
        recommandationCode: RecommandationCode.INCITER_ENREGISTRER_QUIZ,
        questionnaireCode: questionnaireCode,
      );
    } else if (recommandationCode == RecommandationCode.INCITER_AFFICHER_QUIZ) {
      articleQuestionnaire = Article.forQuestionnaire(
        title: 'Mon questionnaire de santé est complété et enregistré dans mes documents de santé.',
        link: SyntheseQuestionnaireAgesClesScreen.routeName,
        linkText: 'Voir mon questionnaire',
        questionnaireTag: TagsHome.tagButtonVoirQuestionnaire983(trancheAgeForTracking),
        recommandationCode: RecommandationCode.INCITER_AFFICHER_QUIZ,
        questionnaireCode: questionnaireCode,
      );
    }
    return state.clone(
      monActuState: state.monActuState.clone(
        questionnaireArticleOptional: Optional.ofNullable(articleQuestionnaire),
      ),
    );
  }
}
