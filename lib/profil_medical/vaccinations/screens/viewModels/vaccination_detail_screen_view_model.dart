/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccination.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_selectors.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class VaccinationDetailScreenViewModel extends Equatable {
  final EnsVaccination? vaccination;
  final ScreenStatus status;
  final void Function() deleteVaccination;
  final void Function() reloadVaccinations;

  const VaccinationDetailScreenViewModel._internal({
    this.vaccination,
    required this.status,
    required this.deleteVaccination,
    required this.reloadVaccinations,
  });

  factory VaccinationDetailScreenViewModel(Store<EnsState> store, String vaccinationId) {
    final vaccinationsListState = store.state.vaccinationsState.vaccinationsListState;
    ScreenStatus status = ScreenStatus.LOADING;
    EnsVaccination? vaccination;

    if (vaccinationsListState.status.isSuccess()) {
      vaccination = VaccinationsSelectors.getVaccinationById(store.state, vaccinationId);
      status = vaccination == null ? ScreenStatus.ERROR : ScreenStatus.SUCCESS;
    } else if (vaccinationsListState.status.isError()) {
      status = ScreenStatus.ERROR;
    }

    return VaccinationDetailScreenViewModel._internal(
      vaccination: vaccination,
      status: status,
      deleteVaccination: () {
        if (vaccination != null) {
          store.dispatch(DeleteVaccinationAction(vaccination.id));
        }
      },
      reloadVaccinations: () => store.dispatch(const FetchVaccinationsAction()),
    );
  }

  @override
  List<Object?> get props => [vaccination, status];
}
