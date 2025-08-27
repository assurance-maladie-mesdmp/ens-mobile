/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/professionnels_de_sante_screen_view_model.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class ProfessionnelsDeSanteScreenAutocompleteViewModel extends Equatable {
  final ActeurDeSanteListStatus listStatus;
  final List<ActeurDeSanteAutocompletionDisplayModel> displayModels;

  const ProfessionnelsDeSanteScreenAutocompleteViewModel._internal({
    required this.listStatus,
    required this.displayModels,
  });

  factory ProfessionnelsDeSanteScreenAutocompleteViewModel.from(Store<EnsState> store) {
    final psListState = store.state.professionnelsDeSanteState.professionnelDeSanteListState;
    final esListState = store.state.etablissementsDeSanteState.etablissementDeSanteListState;
    final noPsOrEs = psListState.isEmpty && esListState.isEmpty;
    ActeurDeSanteListStatus listStatus = ActeurDeSanteListStatus.LOADING;
    final List<ActeurDeSanteAutocompletionDisplayModel> professionnelsDeSanteScreenItemDisplayModel = [];
    final List<ActeurDeSanteAutocompletionDisplayModel> acteursDeSanteDisplayModels = [];

    if (psListState.status.isError() || esListState.status.isError()) {
      listStatus = ActeurDeSanteListStatus.ERROR;
    } else if (psListState.status.isNotLoadedOrLoading() || esListState.status.isNotLoadedOrLoading()) {
      listStatus = ActeurDeSanteListStatus.LOADING;
    } else if (psListState.status.isSuccess() || esListState.status.isSuccess() || noPsOrEs) {
      listStatus = ActeurDeSanteListStatus.LISTE_SUCCESS;
    }

    if (psListState.status.isSuccess()) {
      for (final ps in psListState.professionnelsDeSante) {
        final isMedecinTraitant = ps.isMedecinTraitantDeclare ||
            ps.role?.isMedecinTraitant == true &&
                psListState.professionnelsDeSante.none(
                  (addedPs) => addedPs.isMedecinTraitantDeclare && addedPs.idForDelete != ps.idForDelete,
                );

        acteursDeSanteDisplayModels.add(
          ActeurDeSanteAutocompletionDisplayModel(
            id: ps.idForDelete,
            idNat: ps.nationalId ?? '',
            isMedecinTraitant: isMedecinTraitant,
            isMedecinTraitantDeclare: ps.isMedecinTraitantDeclare,
            displayedName: '${ps.firstName.capitalizeName()} ${ps.lastName.capitalizeName()}',
            speciality: ps.profession ?? ps.exercices?.firstOrNull?.profession,
            addresse: ps.addresses.firstOrNull?.formattedAddress,
            type: TypeOfActeurDeSante.PS,
          ),
        );
      }
    }

    if (esListState.status.isSuccess()) {
      acteursDeSanteDisplayModels.addAll(
        esListState.etablissementsDeSante.map(
          (es) => ActeurDeSanteAutocompletionDisplayModel(
            id: es.organizationId ?? '',
            idNat: es.idNat,
            isMedecinTraitant: false,
            isMedecinTraitantDeclare: false,
            displayedName: es.nameWithAlias,
            speciality: es.activity,
            addresse: es.address?.formattedAddress,
            type: TypeOfActeurDeSante.ES,
          ),
        ),
      );
    }
    acteursDeSanteDisplayModels.sort((a, b) {
      if (a.isMedecinTraitant) return -1;
      if (b.isMedecinTraitant) return 1;
      return a.displayedName.toLowerCase().compareTo(b.displayedName.toLowerCase());
    });

    professionnelsDeSanteScreenItemDisplayModel.addAll(acteursDeSanteDisplayModels);

    return ProfessionnelsDeSanteScreenAutocompleteViewModel._internal(
      listStatus: listStatus,
      displayModels: professionnelsDeSanteScreenItemDisplayModel,
    );
  }

  @override
  List<Object?> get props => [listStatus, displayModels];
}

class ActeurDeSanteAutocompletionDisplayModel extends Equatable {
  final String id;
  final String idNat;
  final bool isMedecinTraitant;
  final bool isMedecinTraitantDeclare;
  final String displayedName;
  final String? speciality;
  final String? addresse;
  final TypeOfActeurDeSante type;

  const ActeurDeSanteAutocompletionDisplayModel({
    required this.id,
    required this.idNat,
    required this.isMedecinTraitant,
    required this.isMedecinTraitantDeclare,
    required this.displayedName,
    this.speciality,
    this.addresse,
    required this.type,
  });

  @override
  List<Object?> get props =>
      [id, idNat, isMedecinTraitant, isMedecinTraitantDeclare, displayedName, speciality, addresse, type];
}
