/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/carte_vaccinations.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_redux.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class CarteVaccinationsDetailScreenViewModel extends Equatable {
  final AllPurposesStatus carteVaccinationsStatus;
  final CarteVaccinations? carteVaccinations;
  final void Function() fetchCarteVaccination;

  const CarteVaccinationsDetailScreenViewModel._({
    required this.carteVaccinationsStatus,
    required this.carteVaccinations,
    required this.fetchCarteVaccination,
  });

  factory CarteVaccinationsDetailScreenViewModel.from(Store<EnsState> store) {
    final carteVaccinationsState = store.state.vaccinationsState.carteVaccinationsState;

    return CarteVaccinationsDetailScreenViewModel._(
      carteVaccinationsStatus: carteVaccinationsState.status,
      carteVaccinations: carteVaccinationsState.carteVaccinations,
      fetchCarteVaccination: () {
        store.dispatch(FetchCarteVaccinationsAction());
      },
    );
  }

  @override
  List<Object?> get props => [carteVaccinationsStatus, carteVaccinations];
}
