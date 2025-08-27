/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_categorie_document.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_profession.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/redux/matrice_habilitation_redux.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class MatriceHabilitationResultatViewModel extends Equatable {
  final ScreenStatusOnEmpty resultatStatus;
  final List<MatriceResultatDisplayModel> displayModels;
  final EmptyPageDisplayModel emptyPageDisplayModel;
  final void Function() onReload;

  const MatriceHabilitationResultatViewModel._({
    required this.resultatStatus,
    required this.displayModels,
    required this.emptyPageDisplayModel,
    required this.onReload,
  });

  factory MatriceHabilitationResultatViewModel.from(
    Store<EnsState> store, {
    required EnsMatriceProfession profession,
    required bool isAccessible,
  }) {
    final matriceHabilitationState = store.state.matriceHabilitationState;

    final EmptyPageDisplayModel emptyPageDisplayModel = EmptyPageDisplayModel(
      isAccessible
          ? 'Aucun document accessible pour ces professionnels de santé.'
          : 'Aucun document non accessible pour ces professionnels de santé.',
    );

    final List<MatriceResultatDisplayModel> resultatsDisplayModels = _convertResultatsToDisplayModels(
      matriceHabilitationState,
      isAccessible,
      matriceHabilitationState.selectedCategorie,
      profession,
    );
    return MatriceHabilitationResultatViewModel._(
      resultatStatus: _getResultatStatus(matriceHabilitationState, resultatsDisplayModels),
      displayModels: resultatsDisplayModels,
      emptyPageDisplayModel: emptyPageDisplayModel,
      onReload: () {
        store.dispatch(FetchMatriceResultatAction(profession.codeProfession));
      },
    );
  }

  @override
  List<Object?> get props => [resultatStatus, displayModels, emptyPageDisplayModel];
}

List<MatriceResultatDisplayModel> _convertResultatsToDisplayModels(
  MatriceHabilitationState matriceHabiliationState,
  bool isAccessible,
  EnsMatriceCategorieDocument selectedCategorie,
  EnsMatriceProfession profession,
) {
  final List<MatriceResultatDisplayModel> resultatsDisplayModels = _getInfoBoxDisplayModel(isAccessible, profession);

  final MatriceHabilitationResultatState matriceResultatState = matriceHabiliationState.matriceResultatState;
  if (matriceResultatState.isSuccessWithData) {
    final matriceResultat = matriceResultatState.matriceResultat!;
    final resultats = isAccessible ? matriceResultat.resultatsAccessibles : matriceResultat.resultatsNonAccessibles;

    resultats.forEach((categorie, listeDoc) {
      if (selectedCategorie.codeCategorie != 0 && selectedCategorie.codeCategorie != categorie.codeCategorie) {
        return;
      }
      resultatsDisplayModels.add(CategorieTitleResultatDisplayModel(categorie.libelle, categorie.codeCategorie));
      resultatsDisplayModels
          .addAll(listeDoc.map((e) => TypeDocumentResultatDisplayModel(e.libelle, categorie.codeCategorie)));
    });
  }

  return resultatsDisplayModels;
}

List<MatriceResultatDisplayModel> _getInfoBoxDisplayModel(bool isAccessible, EnsMatriceProfession profession) {
  final List<MatriceResultatDisplayModel> resultatsDisplayModels = [
    InfoBoxDisplayModel(
      isAccessible
          ? 'Les ${profession.libelle.toLowerCase()} autorisés peuvent accéder aux documents suivants.'
          : 'Les ${profession.libelle.toLowerCase()} ne peuvent pas accéder aux documents suivants.',
    ),
  ];
  return resultatsDisplayModels;
}

ScreenStatusOnEmpty _getResultatStatus(
  MatriceHabilitationState matriceState,
  List<MatriceResultatDisplayModel> resultatsDisplayModels,
) {
  if (matriceState.matriceResultatState.status.isNotLoadedOrLoading()) {
    return ScreenStatusOnEmpty.LOADING;
  } else if (matriceState.matriceResultatState.isErrorOrSuccessWithoutData) {
    return ScreenStatusOnEmpty.ERROR;
  } else if (resultatsDisplayModels.length == 1) {
    return ScreenStatusOnEmpty.EMPTY;
  }
  return ScreenStatusOnEmpty.SUCCESS;
}

class EmptyPageDisplayModel with EquatableMixin {
  final String message;

  EmptyPageDisplayModel(this.message);

  @override
  List<Object?> get props => [message];
}

abstract class MatriceResultatDisplayModel with EquatableMixin {
  final String libelle;
  final int codeCategorie;

  MatriceResultatDisplayModel(this.libelle, this.codeCategorie);

  @override
  List<Object?> get props => [libelle, codeCategorie];
}

class InfoBoxDisplayModel extends MatriceResultatDisplayModel {
  InfoBoxDisplayModel(String libelle) : super(libelle, 0);
}

class CategorieTitleResultatDisplayModel extends MatriceResultatDisplayModel {
  CategorieTitleResultatDisplayModel(super.libelle, super.codeCategorie);
}

class TypeDocumentResultatDisplayModel extends MatriceResultatDisplayModel {
  TypeDocumentResultatDisplayModel(super.libelle, super.codeCategorie);
}

void tagPage(BuildContext context, MatriceHabilitationResultatViewModel vm, bool isAccessibleTab) {
  switch (vm.resultatStatus) {
    case ScreenStatusOnEmpty.EMPTY:
      if (isAccessibleTab) {
        context.tagAction(TagsParameters.tag_781_compte_aucun_resultat_accessible_matrice_habilitation);
      } else {
        context.tagAction(TagsParameters.tag_781_compte_aucun_resultat_non_accessible_matrice_habilitation);
      }
    case ScreenStatusOnEmpty.SUCCESS:
      if (isAccessibleTab) {
        context.tagAction(TagsParameters.tag_777_compte_resultat_accessible_matrice_habilitation);
      } else {
        context.tagAction(TagsParameters.tag_780_compte_resultat_non_accessible_matrice_habilitation);
      }
    default:
      break;
  }
}
