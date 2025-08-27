/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_answer.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_item.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/redux/habitudes_de_vie_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class HabitudesDeVieDetailsScreenViewModel extends Equatable {
  final ScreenStatus status;
  final String title;
  final String description;
  final String image;
  final String categoryTag;
  final List<HabitudeDeVieDetailsItemDisplayModel> items;
  final HabitudeDeVieCategoryCode categoryCode;
  final void Function() reloadHabitudesVieAnswer;
  final void Function(String?) deleteHabitudesVieAnswer;
  final bool isProfilPrincipal;

  const HabitudesDeVieDetailsScreenViewModel._internal({
    required this.status,
    required this.title,
    required this.description,
    required this.image,
    required this.categoryTag,
    required this.items,
    required this.categoryCode,
    required this.reloadHabitudesVieAnswer,
    required this.deleteHabitudesVieAnswer,
    required this.isProfilPrincipal,
  });

  factory HabitudesDeVieDetailsScreenViewModel.from(Store<EnsState> store, HabitudeDeVieCategoryCode categoryCode) {
    final HabitudesDeVieState habitudesDeVieState = store.state.habitudesDeVieState;
    final category = habitudesDeVieState.habitudesDeVieListState.categories
        .where((categorie) => categorie.code == categoryCode)
        .firstOrNull;
    final categoryAnswer = habitudesDeVieState.habitudesDeVieAnswersState.answers.entries
        .where((answer) => answer.key == categoryCode)
        .firstOrNull
        ?.value;

    final title = category?.label ?? '';
    final image = category?.code != null ? _getImage(category!.code) : '';
    final categoryTag = category?.categoryTag ?? '';
    final isProfilPrincipal = ProfilsUtils.getCurrentProfilType(store.state).isProfilPrincipal;
    final age = UserSelectors.getAge(store.state);

    final status = ScreenStatus.getFromAllPurposesStatus(habitudesDeVieState.habitudesDeVieAnswersState.status);
    List<HabitudeDeVieDetailsItemDisplayModel> items = [];
    if (habitudesDeVieState.habitudesDeVieAnswersState.status.isSuccess()) {
      if (category != null) {
        items = category.items
            .map(
              (item) => _toItemDisplayModel(
                item: item,
                categoryAnswer: categoryAnswer,
                categoryTag: categoryTag,
                questionnaireCode: store.state.questionnaireAgesClesState.questionnaireVersionState.questionnaireCode,
                categoryCode: categoryCode,
                age: age,
              ),
            )
            .toList();
      }
    }

    return HabitudesDeVieDetailsScreenViewModel._internal(
      status: status,
      title: title,
      description: _getDescription(categoryCode, isProfilPrincipal),
      image: image,
      categoryTag: categoryTag,
      items: items,
      categoryCode: categoryCode,
      reloadHabitudesVieAnswer: () {
        store.dispatch(FetchHabitudesDeVieAnswerAction(categoryCode: categoryCode));
      },
      deleteHabitudesVieAnswer: (id) {
        if (id != null) {
          store.dispatch(DeleteHabitudesDeVieAnswerAction(id));
        }
      },
      isProfilPrincipal: isProfilPrincipal,
    );
  }

  static HabitudeDeVieDetailsItemDisplayModel _toItemDisplayModel({
    required HabitudeDeVieItem item,
    required List<HabitudeDeVieCategoryDetails>? categoryAnswer,
    required String categoryTag,
    required QuestionnaireCode questionnaireCode,
    required HabitudeDeVieCategoryCode categoryCode,
    required int? age,
  }) {
    final itemAnswer = categoryAnswer?.where((answer) => answer.itemCode == item.code).firstOrNull;

    final lastModificationDate =
        itemAnswer?.effectiveDate != null ? EnsDateUtils.formatddmmyyyy(itemAnswer!.effectiveDate) : null;

    final lastModificationDateLabel = _getLastModificationDateLabel(
      lastModificationDate,
      itemAnswer,
      questionnaireCode,
    );

    final answersLabels = itemAnswer?.answers.map((answer) => answer.label).toList();

    bool canModify = true;
    switch (categoryCode) {
      case HabitudeDeVieCategoryCode.TOBACCO:
      case HabitudeDeVieCategoryCode.ALCOOL:
        canModify = age == null || age >= 15;
      case HabitudeDeVieCategoryCode.FOOD:
      case HabitudeDeVieCategoryCode.PHYSICAL_ACTIVITY:
        canModify = age == null || age >= 3;
      case HabitudeDeVieCategoryCode.SOMMEIL:
      case HabitudeDeVieCategoryCode.ECRANS:
        canModify = true;
    }
    return HabitudeDeVieDetailsItemDisplayModel(
      code: item.code,
      title: item.details.first.label,
      updateLabel: lastModificationDateLabel,
      itemTag: '${categoryTag}_${item.itemTag}',
      answers: answersLabels,
      isAnswered: itemAnswer != null,
      answerId: itemAnswer?.id,
      canModify: canModify,
    );
  }

  static String? _getLastModificationDateLabel(
    String? lastModificationDate,
    HabitudeDeVieCategoryDetails? itemAnswer,
    QuestionnaireCode questionnaireCode,
  ) {
    if (lastModificationDate != null) {
      if (itemAnswer?.lastModifiedType == HabitudeDeVieCreationType.QUESTIONNAIRE) {
        return switch (questionnaireCode) {
          QuestionnaireCode.QUIZ_18_25_CODE =>
            'Mis à jour le $lastModificationDate depuis le questionnaire de santé 18-25 ans',
          QuestionnaireCode.QUIZ_45_50_CODE =>
            'Mis à jour le $lastModificationDate depuis le questionnaire de santé 45-50 ans',
          QuestionnaireCode.QUIZ_60_65_CODE =>
            'Mis à jour le $lastModificationDate depuis le questionnaire de santé 60-65 ans',
          QuestionnaireCode.QUIZ_70_75_CODE =>
            'Mis à jour le $lastModificationDate depuis le questionnaire de santé 70-75 ans',
          _ => 'Mis à jour le $lastModificationDate depuis le questionnaire de santé',
        };
      } else {
        return 'Mis à jour le $lastModificationDate';
      }
    }
    return null;
  }

  static String _getImage(HabitudeDeVieCategoryCode categoryCode) {
    switch (categoryCode) {
      case HabitudeDeVieCategoryCode.FOOD:
        return EnsImages.alimentation;
      case HabitudeDeVieCategoryCode.TOBACCO:
        return EnsImages.tabac;
      case HabitudeDeVieCategoryCode.PHYSICAL_ACTIVITY:
        return EnsImages.activite_physique;
      case HabitudeDeVieCategoryCode.SOMMEIL:
        return EnsImages.activite_sommeil;
      case HabitudeDeVieCategoryCode.ALCOOL:
        return EnsImages.activite_alcool;
      case HabitudeDeVieCategoryCode.ECRANS:
        return EnsImages.activite_ecran;
    }
  }

  @override
  List<Object?> get props => [
        status,
        title,
        categoryTag,
        description,
        image,
        items,
        categoryCode,
        isProfilPrincipal,
      ];

  static String _getDescription(HabitudeDeVieCategoryCode categoryCode, bool isProfilPrincipal) {
    return switch (categoryCode) {
      HabitudeDeVieCategoryCode.FOOD =>
        'Je peux répondre aux questions concernant ${isProfilPrincipal ? 'mon' : 'son'} alimentation pour améliorer le suivi de ${isProfilPrincipal ? 'ma' : 'sa'} santé.',
      HabitudeDeVieCategoryCode.TOBACCO =>
        'Je peux répondre aux questions concernant ${isProfilPrincipal ? 'ma' : 'sa'} consommation de tabac pour améliorer le suivi de ${isProfilPrincipal ? 'ma' : 'sa'} santé.',
      HabitudeDeVieCategoryCode.PHYSICAL_ACTIVITY =>
        'Je peux répondre aux questions concernant ${isProfilPrincipal ? 'mon' : 'son'} activité physique pour améliorer le suivi de ${isProfilPrincipal ? 'ma' : 'sa'} santé.',
      HabitudeDeVieCategoryCode.SOMMEIL =>
        'Je peux répondre aux questions concernant ${isProfilPrincipal ? 'mon' : 'son'} sommeil pour améliorer le suivi de ${isProfilPrincipal ? 'ma' : 'sa'} santé.',
      HabitudeDeVieCategoryCode.ALCOOL =>
        'Je peux répondre aux questions concernant ${isProfilPrincipal ? 'ma' : 'sa'} consommation d’alcool pour améliorer le suivi de ${isProfilPrincipal ? 'ma' : 'sa'} santé.',
      HabitudeDeVieCategoryCode.ECRANS =>
        'Je peux répondre aux questions concernant les écrans pour améliorer le suivi de ${isProfilPrincipal ? 'ma' : 'sa'} santé.',
    };
  }
}

class HabitudeDeVieDetailsItemDisplayModel extends Equatable {
  final String code;
  final String title;
  final List<String>? answers;
  final String? updateLabel;
  final String itemTag;
  final bool isAnswered;
  final String? answerId;
  final bool canModify;

  const HabitudeDeVieDetailsItemDisplayModel({
    required this.code,
    required this.title,
    required this.updateLabel,
    required this.itemTag,
    required this.isAnswered,
    required this.answerId,
    this.answers,
    required this.canModify,
  });

  @override
  List<Object?> get props => [code, title, answers, itemTag, updateLabel, isAnswered, answerId, canModify];
}

class HabitudesDeVieDetailsScreenArgument {
  final HabitudeDeVieCategoryCode categoryCode;

  HabitudesDeVieDetailsScreenArgument(this.categoryCode);
}
