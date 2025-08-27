/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/editing_vaccination.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccin.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_redux.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_autocomplete_input_data_display_model.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/datetime_extension.dart';
import 'package:redux/redux.dart';

class EditVaccinationScreenViewModel extends Equatable {
  final AllPurposesStatus editStatus;
  final AllPurposesStatus scannerStatus;
  final List<EnsVaccin> vaccins;
  final Map<EnsAutocompleteInputDataDisplayModel, EnsVaccin> vaccinInfoMap;
  final DateTime? birthdate;
  final Function(EditingVaccination editingVaccination, bool isUpdateAction) editVaccination;
  final Function() resetVaccinationScanner;
  final Function() resetVaccinationEdit;
  final void Function() fetchVaccins;

  @override
  List<Object?> get props => [
        editStatus,
        scannerStatus,
        vaccins,
        vaccinInfoMap,
        birthdate,
      ];

  const EditVaccinationScreenViewModel._internal({
    required this.editStatus,
    required this.scannerStatus,
    required this.vaccins,
    required this.vaccinInfoMap,
    required this.birthdate,
    required this.editVaccination,
    required this.resetVaccinationScanner,
    required this.resetVaccinationEdit,
    required this.fetchVaccins,
  });

  factory EditVaccinationScreenViewModel.from(Store<EnsState> store) {
    final vaccinationsEditStatus = store.state.vaccinationsState.vaccinationsEditStatus;
    final vaccinsListState = store.state.vaccinationsState.vaccinsListState;
    final scannerStatus = store.state.vaccinationsState.vaccinByCipState.status;

    final vaccins = vaccinsListState.vaccins.filterWithBirthDay(UserSelectors.getBirthdateOrNow(store.state))..sort();
    final vaccinsMap = _computeVaccinsMap(vaccins);

    return EditVaccinationScreenViewModel._internal(
      editStatus: vaccinationsEditStatus,
      scannerStatus: scannerStatus,
      vaccins: vaccins,
      vaccinInfoMap: vaccinsMap,
      birthdate: UserSelectors.getBirthdate(store.state),
      editVaccination: (editingVaccination, isUpdateAction) {
        if (isUpdateAction) {
          store.dispatch(UpdateVaccinationAction(editingVaccination));
        } else {
          store.dispatch(AddVaccinationAction(editingVaccination));
        }
      },
      resetVaccinationScanner: () => store.dispatch(ResetVaccinationScannerAction()),
      resetVaccinationEdit: () => store.dispatch(InitVaccinationEditionAction()),
      fetchVaccins: () {
        store.dispatch(FetchVaccinsAction());
      },
    );
  }

  String getAppBarTitle(bool isUpdate) {
    if (isUpdate) {
      return 'Modifier une vaccination';
    } else {
      return 'Ajouter une vaccination';
    }
  }

  static Map<EnsAutocompleteInputDataDisplayModel, EnsVaccin> _computeVaccinsMap(List<EnsVaccin> vaccins) => {
        for (final vaccin in vaccins)
          _computeVaccinInfo(vaccin.label, vaccin.pathologies, vaccin.marketingStart, vaccin.marketingEnd): vaccin,
      };

  static String _computeVaccinLabel(String label, String pathologies) => '$label - $pathologies';

  static EnsAutocompleteInputDataDisplayModel _computeVaccinInfo(
    String label,
    String pathologies,
    DateTime? marketingStart,
    DateTime? marketingEnd,
  ) {
    return EnsAutocompleteInputDataDisplayModel(
      _computeVaccinLabel(label, pathologies),
      EnsDateUtils.formatInterval(marketingStart, marketingEnd),
    );
  }

  static bool specificSelector(String cleanedLabel, String cleanedSelectionPattern) {
    final wordsOfCleanedPattern = cleanedSelectionPattern.split(' ');
    bool result = true;
    bool dtpOrRorPattern = false;
    if (wordsOfCleanedPattern.contains('dtp')) {
      if (!['diphterie', 'tetanos', 'poliomyelite'].every((element) => cleanedLabel.contains(element))) {
        return false;
      }
      dtpOrRorPattern = true;
    }
    if (wordsOfCleanedPattern.contains('ror')) {
      if (!['rougeole', 'oreillon', 'rubeole'].every((element) => cleanedLabel.contains(element))) {
        return false;
      }
      dtpOrRorPattern = true;
    }
    if (!dtpOrRorPattern) {
      result = cleanedLabel.contains(cleanedSelectionPattern);
    }
    return result;
  }

  static bool labelOrPathologiesStartWithPattern(String cleanedLabelAndPathologies, String cleanedPattern) {
    final List<String> words = cleanedLabelAndPathologies.split(' ');
    return words.firstWhere((word) => word.startsWith(cleanedPattern), orElse: () => '').isNotEmpty;
  }
}

extension _VaccinFilter on List<EnsVaccin> {
  List<EnsVaccin> filterWithBirthDay(DateTime birthdate) {
    return where((vaccin) => vaccin.marketingEnd == null || vaccin.marketingEnd!.addYear(2).isAfter(birthdate))
        .toList();
  }
}
