/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_item.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/domain/models/ens_datamatrix.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_states.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/edit_vaccination_screen.dart';
import 'package:redux/redux.dart';

class MonHistoireDeSanteItemsDetailViewModel extends Equatable {
  final TraitementInMedicamentStatus traitementInMedicamentStatus;
  final void Function() getVaccinByCodeCip;
  final VaccinFromCodeCip? vaccinFromCodeCip;

  const MonHistoireDeSanteItemsDetailViewModel._internal({
    required this.traitementInMedicamentStatus,
    required this.getVaccinByCodeCip,
    this.vaccinFromCodeCip,
  });

  factory MonHistoireDeSanteItemsDetailViewModel.from(
    Store<EnsState> store, {
    String? traitementName,
    DateTime? traitementDate,
    double? typeCodage,
    String? codeCIP,
  }) {
    final traitementState = store.state.traitementsState.traitementsListState;

    EnsDataMatrix? datamatrix;
    final isCipCodeDecodable = typeCodage == 1 && codeCIP != null;
    if (isCipCodeDecodable) {
      datamatrix = EnsDataMatrix(cip: codeCIP);
    }

    return MonHistoireDeSanteItemsDetailViewModel._internal(
      traitementInMedicamentStatus: _getTraitementStatus(store.state, traitementState, traitementName, traitementDate),
      getVaccinByCodeCip: () {
        if (datamatrix != null) {
          store.dispatch(FetchVaccinByCipAction(cipCode: datamatrix.cip));
        }
      },
      vaccinFromCodeCip: VaccinFromCodeCip(
        vaccinFromCip: store.state.vaccinationsState.vaccinByCipState.initialVaccinByCip,
        lotFromScan: datamatrix?.lot,
      ),
    );
  }

  @override
  List<Object?> get props => [traitementInMedicamentStatus, vaccinFromCodeCip];
}

TraitementInMedicamentStatus _getTraitementStatus(
  EnsState state,
  TraitementsListState traitementListState,
  String? traitementName,
  DateTime? traitementDate,
) {
  if (traitementName == null || traitementDate == null) return TraitementInMedicamentStatus.NOT_ADDED;
  if (traitementListState.status.isNotSuccess()) return TraitementInMedicamentStatus.LOADING;
  return traitementListState.traitements.any(
    (traitement) =>
        traitementName.toLowerCase().startsWith(traitement.name.toLowerCase()) &&
        traitement.startDate.toDateTime() == traitementDate,
  )
      ? TraitementInMedicamentStatus.ADDED
      : TraitementInMedicamentStatus.NOT_ADDED;
}
