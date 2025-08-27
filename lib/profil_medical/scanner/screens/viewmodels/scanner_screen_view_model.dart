/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/domain/models/ens_datamatrix.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccin.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_redux.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class ScannerScreenViewModel extends Equatable {
  final void Function(String codeCip) getNomTraitementByCodeCip;
  final void Function(EnsDataMatrix dataMatrix) getVaccinByCodeCip;
  final EnsVaccin? resultatVaccin;
  final AllPurposesStatus getVaccinStatut;

  const ScannerScreenViewModel._({
    required this.getNomTraitementByCodeCip,
    required this.getVaccinByCodeCip,
    required this.resultatVaccin,
    required this.getVaccinStatut,
  });

  factory ScannerScreenViewModel.from(Store<EnsState> store) {
    final vaccinByCipState = store.state.vaccinationsState.vaccinByCipState;
    return ScannerScreenViewModel._(
      getNomTraitementByCodeCip: (codeCip) {
        store.dispatch(FetchNomTraitementByCodeCipAction(codeCip: codeCip));
      },
      getVaccinByCodeCip: (dataMatrix) {
        store.dispatch(FetchVaccinByCipAction(cipCode: dataMatrix.cip));
      },
      resultatVaccin: vaccinByCipState.initialVaccinByCip,
      getVaccinStatut: vaccinByCipState.status,
    );
  }

  @override
  List<Object?> get props => [resultatVaccin, getVaccinStatut];
}
