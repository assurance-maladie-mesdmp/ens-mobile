/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professionnels_de_sante_name_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_autocomplete_input_data_display_model.dart';
import 'package:redux/redux.dart';

class NomVaccinateurInputViewModel extends Equatable {
  final Map<EnsAutocompleteInputDataDisplayModel, String> professionnelsDeSanteMap;
  final String? nomVaccinateur;

  const NomVaccinateurInputViewModel._({
    required this.professionnelsDeSanteMap,
    required this.nomVaccinateur,
  });

  @override
  List<Object?> get props => [professionnelsDeSanteMap, nomVaccinateur];

  factory NomVaccinateurInputViewModel.from(Store<EnsState> store) {
    final Map<EnsAutocompleteInputDataDisplayModel, String> professionnelsDeSanteMap = {};
    final psListState = store.state.professionnelsDeSanteState.professionnelDeSanteListState;
    if (psListState.status.isSuccess()) {
      final professionnelsDeSante = List<ProfessionnelDeSante>.from(psListState.professionnelsDeSante);
      professionnelsDeSante.sort((acteurSante1, acteurSante2) {
        final priority1 = acteurSante1.getSortPriority();
        final priority2 = acteurSante2.getSortPriority();
        if (priority1 != priority2) {
          return priority1 - priority2;
        }
        return acteurSante1.firstName.toLowerCase().compareTo(acteurSante2.firstName.toLowerCase());
      });
      for (final ps in professionnelsDeSante) {
        final fullName = ProfessionnelsDeSanteInformationHelper.capitalizeAsNames('${ps.firstName} ${ps.lastName}');
        final key = EnsAutocompleteInputDataDisplayModel(fullName, null);
        professionnelsDeSanteMap[key] = fullName;
      }
    }

    final vaccinateurSelectionne = store.state.professionnelsDeSanteState.addPsState.currentPsSelected;
    final nomVaccinateur = vaccinateurSelectionne != null
        ? ProfessionnelsDeSanteInformationHelper.capitalizeAsNames(
            '${vaccinateurSelectionne.firstName} ${vaccinateurSelectionne.lastName}',
          )
        : null;

    return NomVaccinateurInputViewModel._(
      professionnelsDeSanteMap: professionnelsDeSanteMap,
      nomVaccinateur: nomVaccinateur,
    );
  }
}
