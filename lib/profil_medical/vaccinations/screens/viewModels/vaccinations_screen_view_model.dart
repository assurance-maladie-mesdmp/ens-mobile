/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_pml_section.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/redux/add_item_for_first_time_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccination.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/viewModels/vaccination_item_display_model.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/synthese_pdf/redux/synthese_pdf_redux.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class VaccinationsScreenViewModel extends Equatable {
  final AllPurposesStatus status;
  final List<EnsVaccination> vaccinations;
  final bool isAddVaccinationForFirstTime;
  final bool isProfilPrincipal;
  final String mainFirstName;
  final void Function() onAddVaccinationFirstTime;
  final void Function() loadVaccinations;
  final void Function() exportRubriqueVaccincation;
  final void Function(String vaccinationId) deleteVaccination;
  final void Function() refreshVaccinations;

  const VaccinationsScreenViewModel._internal({
    required this.status,
    required this.vaccinations,
    required this.isAddVaccinationForFirstTime,
    required this.isProfilPrincipal,
    required this.mainFirstName,
    required this.onAddVaccinationFirstTime,
    required this.loadVaccinations,
    required this.exportRubriqueVaccincation,
    required this.deleteVaccination,
    required this.refreshVaccinations,
  });

  factory VaccinationsScreenViewModel.from(Store<EnsState> store) {
    final vaccinationsListState = store.state.vaccinationsState.vaccinationsListState;
    final addVaccinationForFirstTime = store.state.addItemForFirstTimeState;
    final isProfilPrincipal = ProfilsUtils.getCurrentProfilType(store.state).isProfilPrincipal;
    final mainFirstName = store.state.userState.currentProfile.mainFirstName;

    return VaccinationsScreenViewModel._internal(
      status: vaccinationsListState.status,
      vaccinations: vaccinationsListState.vaccinations,
      isAddVaccinationForFirstTime: addVaccinationForFirstTime.firstTimeItemAdded.contains(EnsPmlSection.VACCINATIONS),
      onAddVaccinationFirstTime: () => store.dispatch(AddedItemForFirstTimeAction(EnsPmlSection.VACCINATIONS)),
      loadVaccinations: () {
        store.dispatch(const FetchVaccinationsAction());
        store.dispatch(FetchVaccinsAction());
        store.dispatch(const CheckIsAddItemForFirstTimeAction(EnsPmlSection.VACCINATIONS));
      },
      exportRubriqueVaccincation: () {
        store.dispatch(ExportSyntheseRubriquePmlAction(EnsPmlSection.VACCINATIONS));
      },
      deleteVaccination: (vaccinationId) {
        store.dispatch(DeleteVaccinationAction(vaccinationId));
      },
      refreshVaccinations: () => store.dispatch(const FetchVaccinationsAction(force: true)),
      isProfilPrincipal: isProfilPrincipal,
      mainFirstName: mainFirstName,
    );
  }

  List<VaccinationItemDisplayModel> getVaccinationsItems({VaccineMandatoryFilter filter = VaccineMandatoryFilter.ALL}) {
    switch (filter) {
      case VaccineMandatoryFilter.MANDATORY:
        return vaccinations
            .where((vaccination) => vaccination.recommandation.isObligatoire)
            .map((vaccination) => VaccinationDisplayModelVaccination(vaccination))
            .toList();
      case VaccineMandatoryFilter.RECOMMENDED:
        return vaccinations
            .where((vaccination) => vaccination.recommandation.isRecommande)
            .map((vaccination) => VaccinationDisplayModelVaccination(vaccination))
            .toList();
      case VaccineMandatoryFilter.ALL:
        return vaccinations.map((vaccination) => VaccinationDisplayModelVaccination(vaccination)).toList();
    }
  }

  @override
  List<Object?> get props => [
        status,
        vaccinations,
        isAddVaccinationForFirstTime,
        isProfilPrincipal,
        mainFirstName,
      ];
}

enum VaccineMandatoryFilter {
  MANDATORY,
  RECOMMENDED,
  ALL;

  String get label {
    switch (this) {
      case VaccineMandatoryFilter.MANDATORY:
        return 'Vaccinations obligatoires';
      case VaccineMandatoryFilter.RECOMMENDED:
        return 'Vaccinations recommandées';
      case VaccineMandatoryFilter.ALL:
        return 'Toutes les vaccinations';
    }
  }
}
