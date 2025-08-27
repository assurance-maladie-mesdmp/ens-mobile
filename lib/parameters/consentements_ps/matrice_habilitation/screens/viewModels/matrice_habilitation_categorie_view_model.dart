/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_categorie_document.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/redux/matrice_habilitation_redux.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class MatriceHabilitationCategorieViewModel extends Equatable {
  final ScreenStatus categorieStatus;
  final List<EnsMatriceCategorieDocument> matriceCategoriesDocument;
  final EnsMatriceCategorieDocument selectedCategorie;
  final void Function(EnsMatriceCategorieDocument newCategorieSelected) onNewCategorieSelected;
  final void Function() onReload;

  const MatriceHabilitationCategorieViewModel._({
    required this.categorieStatus,
    required this.matriceCategoriesDocument,
    required this.selectedCategorie,
    required this.onNewCategorieSelected,
    required this.onReload,
  });

  factory MatriceHabilitationCategorieViewModel.from(Store<EnsState> store) {
    final matriceCategorieDocumentState = store.state.matriceHabilitationState.matriceCategorieDocumentState;

    return MatriceHabilitationCategorieViewModel._(
      categorieStatus: ScreenStatus.getFromAllPurposesStatus(matriceCategorieDocumentState.status),
      matriceCategoriesDocument: matriceCategorieDocumentState.status.isSuccess()
          ? matriceCategorieDocumentState.matriceCategoriesDocument
          : [],
      selectedCategorie: store.state.matriceHabilitationState.selectedCategorie,
      onNewCategorieSelected: (newCategorieSelected) =>
          store.dispatch(SelectMatriceCategorieAction(newCategorieSelected)),
      onReload: () => store.dispatch(FetchMatriceCategorieDocumentAction()),
    );
  }

  @override
  List<Object?> get props => [
        categorieStatus,
        matriceCategoriesDocument,
        selectedCategorie,
      ];
}

class MatriceHabilitationScreenArgument {
  final String professionLibelle;
  final int professionCode;

  MatriceHabilitationScreenArgument(this.professionLibelle, this.professionCode);
}
