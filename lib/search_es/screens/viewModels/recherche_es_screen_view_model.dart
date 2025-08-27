/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/etablissements_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/code_postaux.dart';
import 'package:fr_cnamts_ens/search_es/domain/models/etablissement_de_sante.dart';
import 'package:fr_cnamts_ens/search_es/redux/search_es_redux.dart';
import 'package:fr_cnamts_ens/search_es/screens/recherche_es_screen.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class RechercheEsScreenViewModel extends Equatable {
  final AllPurposesStatus listStatus;
  final AllPurposesStatus ajoutEsStatus;
  final List<EtablissementDeSante> etablissementsDeSante;
  final List<EtablissementDeSante> invalidEtablissementsDeSante;
  final void Function(
    RechercheEsType rechercheEsType,
    String name,
    String? departmentCode,
    String? cityCode,
    List<String> zipCodes,
  ) searchEs;
  final void Function() clearResults;
  final void Function(EtablissementDeSante) addEtablissementDeSante;

  List<EtablissementDeSante> get orderedEtablissementsDeSante =>
      [...etablissementsDeSante, ...invalidEtablissementsDeSante];

  const RechercheEsScreenViewModel._internal({
    required this.listStatus,
    required this.ajoutEsStatus,
    required this.etablissementsDeSante,
    required this.invalidEtablissementsDeSante,
    required this.searchEs,
    required this.clearResults,
    required this.addEtablissementDeSante,
  });

  factory RechercheEsScreenViewModel.from(Store<EnsState> store, bool isAddPharmacieForMessagerie) {
    final searchEsState = store.state.searchEsState;
    final ajoutState = store.state.etablissementsDeSanteState.addEsStatus;

    final es = List<EtablissementDeSante>.from(searchEsState.etablissementsDeSante)..sort();

    return RechercheEsScreenViewModel._internal(
      listStatus: searchEsState.status,
      ajoutEsStatus: ajoutState,
      etablissementsDeSante: isAddPharmacieForMessagerie
          ? es.where((es) => es.active && es.mail != null).toList()
          : es.where((es) => es.active).toList(),
      invalidEtablissementsDeSante: isAddPharmacieForMessagerie
          ? es.where((es) => !es.active || es.mail == null).toList()
          : es.where((es) => !es.active).toList(),
      searchEs: (rechercheEsType, name, departmentCode, cityCode, zipCodes) {
        store.dispatch(
          SearchEsAction(
            rechercheEsType: rechercheEsType,
            name: name,
            departmentCode: departmentCode,
            cityCode: cityCode,
            zipCodes: CodePostaux(zipCodes),
          ),
        );
      },
      clearResults: () => store.dispatch(ClearEsResultsAction()),
      addEtablissementDeSante: (es) => store.dispatch(AddEsAction(es.idNat)),
    );
  }

  @override
  List<Object?> get props => [
        listStatus,
        etablissementsDeSante,
        invalidEtablissementsDeSante,
        ajoutEsStatus,
      ];
}
