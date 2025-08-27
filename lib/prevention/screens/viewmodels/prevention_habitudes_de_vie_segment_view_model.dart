/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/prevention/screens/habitudes_de_vie_labels.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_answer.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/redux/habitudes_de_vie_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:redux/redux.dart';

class PreventionHabitudesDeVieSegmentViewModel extends Equatable {
  final List<PreventionHabitudeDeVieDisplayModel> habitudesDeVieDisplayModels;
  final PreventionPersonnaliseHabitudesDeVieLabels cardLabels;
  final PreventionPersonnaliseHabitudesDeVieCategorieLabels? incitationLabels;
  final void Function() fetchHabitudesDeVie;
  final void Function() fetchInitialHabitudesDeVieAnswers;

  const PreventionHabitudesDeVieSegmentViewModel._internal({
    required this.habitudesDeVieDisplayModels,
    required this.cardLabels,
    required this.incitationLabels,
    required this.fetchHabitudesDeVie,
    required this.fetchInitialHabitudesDeVieAnswers,
  });

  factory PreventionHabitudesDeVieSegmentViewModel.from(Store<EnsState> store) {
    final habitudesDeVieState = store.state.habitudesDeVieState.habitudesDeVieListState;
    final habitudesDeVieAnswersState = store.state.habitudesDeVieState.habitudesDeVieAnswersState;
    final habitudesDeVieToDisplay = <PreventionHabitudeDeVieDisplayModel>[];

    HabitudeDeVieCategoryCode currentCategorie = HabitudeDeVieCategoryCode.FOOD;

    if (habitudesDeVieState.status.isSuccess()) {
      for (final categorie in habitudesDeVieState.categories) {
        habitudesDeVieToDisplay.addAll(_buildDisplayModelFromCategorie(categorie, habitudesDeVieAnswersState));
        currentCategorie = categorie.code;
        if (habitudesDeVieToDisplay.isNotEmpty) break;
      }
    }

    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    return PreventionHabitudesDeVieSegmentViewModel._internal(
      habitudesDeVieDisplayModels: habitudesDeVieToDisplay,
      cardLabels: profilType.isProfilPrincipal
          ? PreventionPersonnaliseHabitudesDeVieLabels.POUR_MOI
          : PreventionPersonnaliseHabitudesDeVieLabels.POUR_UN_TIERS,
      incitationLabels: habitudesDeVieToDisplay.isNotEmpty ? _buildLabels(currentCategorie) : null,
      fetchHabitudesDeVie: () => store.dispatch(FetchHabitudesDeVieAction()),
      fetchInitialHabitudesDeVieAnswers: () => store.dispatch(FetchInitialHabitudesDeVieAnswersAction()),
    );
  }

  static PreventionPersonnaliseHabitudesDeVieCategorieLabels? _buildLabels(currentCategorie) {
    return switch (currentCategorie) {
      HabitudeDeVieCategoryCode.FOOD => PreventionPersonnaliseHabitudesDeVieCategorieLabels.ALIMENTATION,
      HabitudeDeVieCategoryCode.PHYSICAL_ACTIVITY =>
        PreventionPersonnaliseHabitudesDeVieCategorieLabels.ACTIVITE_PHYSIQUE,
      HabitudeDeVieCategoryCode.TOBACCO => PreventionPersonnaliseHabitudesDeVieCategorieLabels.TABAC,
      _ => null,
    };
  }

  static List<PreventionHabitudeDeVieDisplayModel> _buildDisplayModelFromCategorie(
    HabitudeDeVieCategory currentCategorie,
    HabitudesDeVieAnswersState habitudesDeVieAnswersState,
  ) {
    const keyHabitudesDeVie = [
      HabitudeDeVieCategoryCode.FOOD,
      HabitudeDeVieCategoryCode.PHYSICAL_ACTIVITY,
      HabitudeDeVieCategoryCode.TOBACCO,
    ];
    final List<PreventionHabitudeDeVieDisplayModel> displayModels = [];

    if (keyHabitudesDeVie.contains(currentCategorie.code)) {
      final categorieAnswers = habitudesDeVieAnswersState.answers.entries
          .where((answer) => answer.key == currentCategorie.code)
          .firstOrNull
          ?.value;

      if (_shouldBeDisplayed(currentCategorie, categorieAnswers)) {
        for (final item in currentCategorie.items) {
          final HabitudeDeVieCategoryDetails? itemAnswer =
              categorieAnswers?.where((answer) => answer.itemCode == item.code).firstOrNull;
          final lastModificationDate =
              itemAnswer?.effectiveDate != null ? EnsDateUtils.formatddmmyyyy(itemAnswer!.effectiveDate) : null;

          displayModels.add(
            PreventionHabitudeDeVieDisplayModel(
              label: item.details.first.label,
              answer: itemAnswer?.answers.first.label,
              updatedDate: lastModificationDate,
            ),
          );
        }
      }
    }
    return displayModels;
  }

  static bool _shouldBeDisplayed(
    HabitudeDeVieCategory currentCategorie,
    List<HabitudeDeVieCategoryDetails>? categorieAnswers,
  ) {
    var shouldBeDisplayed = false;
    for (final item in currentCategorie.items) {
      final itemAnswer = categorieAnswers?.where((answer) => answer.itemCode == item.code).firstOrNull;

      if (itemAnswer == null) shouldBeDisplayed = true;
    }
    return shouldBeDisplayed;
  }

  @override
  List<Object?> get props => [habitudesDeVieDisplayModels, cardLabels, incitationLabels];
}

class PreventionHabitudeDeVieDisplayModel {
  final String label;
  final String? answer;
  final String? updatedDate;

  PreventionHabitudeDeVieDisplayModel({required this.label, required this.answer, required this.updatedDate});
}
