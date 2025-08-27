/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/domain/bilan_de_prevention_questionnaire.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/redux/bilan_de_prevention_redux.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:redux/redux.dart';

class BilanDePreventionScreenViewModel extends Equatable {
  final BilanDePreventionStatus status;
  final List<QuestionnairePreventionDisplayModel> questionnairesAFaireDisplayModels;
  final List<QuestionnairePreventionDisplayModel> questionnairesEnCoursDisplayModels;
  final List<QuestionnairePreventionDisplayModel> questionnairesFinisDisplayModels;
  final Function() reload;

  const BilanDePreventionScreenViewModel._({
    required this.status,
    required this.questionnairesAFaireDisplayModels,
    required this.questionnairesEnCoursDisplayModels,
    required this.questionnairesFinisDisplayModels,
    required this.reload,
  });

  factory BilanDePreventionScreenViewModel(Store<EnsState> store) {
    final bilanDePreventionState = store.state.bilanDePreventionState;
    List<QuestionnairePreventionDisplayModel>? questionnairesAFaireDisplayModels;
    List<QuestionnairePreventionDisplayModel>? questionnairesEnCoursDisplayModels;
    List<QuestionnairePreventionDisplayModel>? questionnairesFinisDisplayModels;

    if (bilanDePreventionState.status == BilanDePreventionStatus.SUCCESS) {
      questionnairesAFaireDisplayModels = _toDisplayModels(
        bilanDePreventionState.questionnairesAFaire,
        BilanDePreventionQuestionnaireStatus.A_FAIRE,
      );
      questionnairesEnCoursDisplayModels = _toDisplayModels(
        bilanDePreventionState.questionnairesEnCours,
        BilanDePreventionQuestionnaireStatus.EN_COURS,
      );
      questionnairesFinisDisplayModels = _toDisplayModels(
        bilanDePreventionState.questionnairesTermines,
        BilanDePreventionQuestionnaireStatus.TERMINE,
      );
    }

    return BilanDePreventionScreenViewModel._(
      status: bilanDePreventionState.status,
      questionnairesAFaireDisplayModels: questionnairesAFaireDisplayModels ?? [],
      questionnairesEnCoursDisplayModels: questionnairesEnCoursDisplayModels ?? [],
      questionnairesFinisDisplayModels: questionnairesFinisDisplayModels ?? [],
      reload: () => store.dispatch(FetchBilanDePreventionQuestionnairesAction()),
    );
  }

  static List<QuestionnairePreventionDisplayModel> _toDisplayModels(
    List<BilanDePreventionQuestionnaire> questionnaires,
    BilanDePreventionQuestionnaireStatus status,
  ) {
    return questionnaires
        .map(
          (questionnaire) => QuestionnairePreventionDisplayModel(
            titre: questionnaire.title,
            availableLabel: _getAvailableLabel(questionnaire, status),
            derniereMajLabel: _getDerniereMajLabel(status, questionnaire),
            status: status,
            trackingTrancheAge: questionnaire.code.getTrancheAgeForTracking(),
            version: questionnaire.userVersion,
            code: questionnaire.code,
            responseId: questionnaire.responseId,
            isDraft: questionnaire.isDraft,
          ),
        )
        .toList();
  }

  static String? _getAvailableLabel(
    BilanDePreventionQuestionnaire questionnaire,
    BilanDePreventionQuestionnaireStatus status,
  ) {
    if (questionnaire.isAvailable) {
      if (status == BilanDePreventionQuestionnaireStatus.A_FAIRE) {
        return 'Disponible jusqu\'au ${EnsDateUtils.formatSimpleDayPlainTextMonthAndYear(questionnaire.dateDeDisponibilite)}';
      } else {
        return 'Modifiable jusqu\'au ${EnsDateUtils.formatSimpleDayPlainTextMonthAndYear(questionnaire.dateDeDisponibilite)}';
      }
    } else {
      return null;
    }
  }

  static String? _getDerniereMajLabel(
    BilanDePreventionQuestionnaireStatus status,
    BilanDePreventionQuestionnaire questionnaire,
  ) {
    if (status == BilanDePreventionQuestionnaireStatus.A_FAIRE) {
      return null;
    } else {
      if (status == BilanDePreventionQuestionnaireStatus.TERMINE) {
        return 'Terminé le ${EnsDateUtils.formatSimpleDayPlainTextMonthAndYear(questionnaire.dateDeDerniereMiseAJour ?? DateTime.now())}';
      } else {
        return 'Mis à jour le ${EnsDateUtils.formatSimpleDayPlainTextMonthAndYear(questionnaire.dateDeDerniereMiseAJour ?? DateTime.now())}';
      }
    }
  }

  @override
  List<Object?> get props => [
        status,
        questionnairesAFaireDisplayModels,
        questionnairesEnCoursDisplayModels,
        questionnairesFinisDisplayModels,
      ];
}

class QuestionnairePreventionDisplayModel extends Equatable {
  final String titre;
  final BilanDePreventionQuestionnaireStatus status;
  final String trackingTrancheAge;
  final String version;
  final QuestionnaireCode code;
  final bool isDraft;
  final String? availableLabel;
  final String? derniereMajLabel;
  final String? responseId;

  const QuestionnairePreventionDisplayModel({
    required this.titre,
    required this.status,
    required this.trackingTrancheAge,
    required this.version,
    required this.code,
    required this.isDraft,
    required this.availableLabel,
    required this.derniereMajLabel,
    required this.responseId,
  });

  @override
  List<Object?> get props => [
        titre,
        status,
        trackingTrancheAge,
        version,
        code,
        availableLabel,
        derniereMajLabel,
        responseId,
        isDraft,
      ];
}

enum BilanDePreventionQuestionnaireStatus {
  A_FAIRE,
  EN_COURS,
  TERMINE,
}
