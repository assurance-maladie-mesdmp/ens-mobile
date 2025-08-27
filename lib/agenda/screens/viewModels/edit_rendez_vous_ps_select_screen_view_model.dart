/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professionnels_de_sante_name_helper.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_autocomplete_input_data_display_model.dart';
import 'package:redux/redux.dart';

class ActeurDeSanteDisplayModel extends Equatable {
  final String nom;
  final bool isPs;
  final String? adresse;
  final String? professionOuActivite;
  final int sortPriority;
  final String? idNat;

  const ActeurDeSanteDisplayModel({
    required this.nom,
    required this.isPs,
    this.adresse,
    this.professionOuActivite,
    required this.sortPriority,
    required this.idNat,
  });

  @override
  List<Object?> get props => [nom, isPs, adresse, professionOuActivite, sortPriority, idNat];
}

class EditRendezVousPsSelectScreenViewModel extends Equatable {
  final Map<EnsAutocompleteInputDataDisplayModel, ActeurDeSanteDisplayModel> professionnelsEtEtablissementsDeSanteMap;

  const EditRendezVousPsSelectScreenViewModel._({required this.professionnelsEtEtablissementsDeSanteMap});

  factory EditRendezVousPsSelectScreenViewModel.from(Store<EnsState> store) {
    final psListState = store.state.professionnelsDeSanteState.professionnelDeSanteListState;
    final esListState = store.state.etablissementsDeSanteState.etablissementDeSanteListState;
    final Map<EnsAutocompleteInputDataDisplayModel, ActeurDeSanteDisplayModel>
        professionnelsEtEtablissementsDeSanteMap = {};
    final List<ActeurDeSanteDisplayModel> acteursDeSante = [];

    if (psListState.status.isSuccess()) {
      final acteurDeSante = psListState.professionnelsDeSante;
      for (final ps in acteurDeSante) {
        final String fullName =
            ProfessionnelsDeSanteInformationHelper.capitalizeAsNames('${ps.firstName} ${ps.lastName}');
        final ActeurDeSanteDisplayModel professionnel = ActeurDeSanteDisplayModel(
          nom: fullName,
          isPs: true,
          adresse: ps.addresses.firstOrNull?.formattedAddress,
          professionOuActivite: ps.profession,
          sortPriority: ps.getSortPriority(),
          idNat: ps.nationalId,
        );
        acteursDeSante.add(professionnel);
      }
    }
    if (esListState.status.isSuccess()) {
      for (final es in esListState.etablissementsDeSante) {
        final String fullName = ProfessionnelsDeSanteInformationHelper.capitalizeAsNames(es.nameWithAlias);
        final ActeurDeSanteDisplayModel etablissement = ActeurDeSanteDisplayModel(
          nom: fullName,
          isPs: false,
          adresse: es.address?.formattedAddress,
          professionOuActivite: es.activity,
          sortPriority: 3,
          idNat: es.idNat,
        );
        acteursDeSante.add(etablissement);
      }
    }

    acteursDeSante.sort((acteurSante1, acteurSante2) {
      final int priority1 = acteurSante1.sortPriority;
      final int priority2 = acteurSante2.sortPriority;
      if (priority1 != priority2) {
        return priority1 - priority2;
      }
      return acteurSante1.nom.toLowerCase().compareTo(acteurSante2.nom.toLowerCase());
    });

    for (final acteurSante in acteursDeSante) {
      professionnelsEtEtablissementsDeSanteMap[EnsAutocompleteInputDataDisplayModel(acteurSante.nom, null)] =
          acteurSante;
    }

    return EditRendezVousPsSelectScreenViewModel._(
      professionnelsEtEtablissementsDeSanteMap: professionnelsEtEtablissementsDeSanteMap,
    );
  }

  @override
  List<Object?> get props => [professionnelsEtEtablissementsDeSanteMap];
}
