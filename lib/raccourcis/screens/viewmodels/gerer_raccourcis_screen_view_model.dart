/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/raccourcis/domain/raccourcis.dart';
import 'package:fr_cnamts_ens/raccourcis/domain/raccourcis_categorie.dart';
import 'package:fr_cnamts_ens/raccourcis/redux/raccourcis_redux.dart';
import 'package:redux/redux.dart';

class GererRaccourcisScreenViewModel extends Equatable {
  final Map<Categorie, List<Raccourcis>> raccourcisParCategorie;
  final List<Raccourcis> raccourcis;
  final void Function(List<Raccourcis>) updateRaccourcis;

  const GererRaccourcisScreenViewModel._({
    required this.raccourcisParCategorie,
    required this.raccourcis,
    required this.updateRaccourcis,
  });

  factory GererRaccourcisScreenViewModel.from(Store<EnsState> store) {
    return GererRaccourcisScreenViewModel._(
      raccourcisParCategorie: _getRaccourcisParCategorie(store.state.raccourcisState.raccourcisParCategorie),
      raccourcis: [...store.state.raccourcisState.raccourcis],
      updateRaccourcis: (raccourcis) {
        final raccourcisMesures = raccourcis.where((item) => item.categorie == Categorie.MESURES).toList();
        if (raccourcisMesures.isNotEmpty) {
          store.dispatch(AddMesuresToPmlAction(raccourcisMesures: raccourcisMesures));
        }
        store.dispatch(UpdateHomeRaccourcisItemsAction(raccourcis: raccourcis));
      },
    );
  }

  static Map<Categorie, List<Raccourcis>> _getRaccourcisParCategorie(List<Raccourcis> raccourcis) {
    return {
      Categorie.SUIVI_MEDICAL:
          raccourcis.where((raccourcis) => raccourcis.categorie == Categorie.SUIVI_MEDICAL).toList(),
      Categorie.MESURES: raccourcis.where((raccourcis) => raccourcis.categorie == Categorie.MESURES).toList(),
      Categorie.PS: raccourcis.where((raccourcis) => raccourcis.categorie == Categorie.PS).toList(),
      Categorie.DOCUMENTS: raccourcis.where((raccourcis) => raccourcis.categorie == Categorie.DOCUMENTS).toList(),
      Categorie.MESSAGERIE: raccourcis.where((raccourcis) => raccourcis.categorie == Categorie.MESSAGERIE).toList(),
      Categorie.CATALOGUE_SERVICE:
          raccourcis.where((raccourcis) => raccourcis.categorie == Categorie.CATALOGUE_SERVICE).toList(),
      Categorie.PARAMETRES: raccourcis.where((raccourcis) => raccourcis.categorie == Categorie.PARAMETRES).toList(),
    };
  }

  bool shouldDisplayListOfCategorie(List<RaccourcisCategorie> filtreSelectionnes, Categorie categorie) {
    return (filtreSelectionnes.isEmpty || filtreSelectionnes.any((filter) => filter.categorie == categorie)) &&
        raccourcisParCategorie[categorie] != null;
  }

  @override
  List<Object?> get props => [raccourcisParCategorie, raccourcis];
}
