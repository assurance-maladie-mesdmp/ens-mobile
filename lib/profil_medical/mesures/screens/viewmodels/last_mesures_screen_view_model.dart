/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_datetime_formater.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/redux/mesures_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';

class LastMesuresScreenViewModel extends Equatable {
  final LastMesuresStatus lastMesuresStatus;
  final List<LastMesuresScreenItemDisplayModel> lastMesuresDisplayModels;
  final void Function() loadLastMesures;
  final bool isProfilPrincipal;
  final String mainFirstName;

  const LastMesuresScreenViewModel._internal({
    required this.lastMesuresStatus,
    required this.lastMesuresDisplayModels,
    required this.loadLastMesures,
    required this.isProfilPrincipal,
    required this.mainFirstName,
  });

  factory LastMesuresScreenViewModel(Store<EnsState> store, [LocaleHelper localeHelper = const LocaleHelper()]) {
    final lastMesuresState = store.state.mesuresState.lastMesuresState;
    final mesuresTilesCustomizationListState =
        store.state.mesuresState.mesuresTilesCustomizationState.mesuresTilesCustomizationListState;

    var listStatus = LastMesuresStatus.LOADING;
    final List<LastMesuresScreenItemDisplayModel> lastMesuresDisplayModel = [LastMesuresScreenHeaderDisplayModel()];

    if (lastMesuresState.status.isSuccess() && mesuresTilesCustomizationListState.status.isSuccess()) {
      listStatus = LastMesuresStatus.SUCCESS;
      final visibleMesures = MesuresSelectors.getMesuresMarkedAsVisibleByUser(store.state);
      final lastMesures = lastMesuresState.lastMesures
          .map((type) => store.state.mesuresState.mesureStatesByType[type]?.mesure)
          .nonNulls
          .where((mesure) => visibleMesures.contains(mesure.type))
          .toList();

      lastMesuresDisplayModel.addAll(
        lastMesures.map((lastMesure) => LastMesureDisplayModel.from(lastMesure, localeHelper)),
      );
    } else if (lastMesuresState.status.isError()) {
      listStatus = LastMesuresStatus.ERROR;
    }

    return LastMesuresScreenViewModel._internal(
      lastMesuresStatus: listStatus,
      lastMesuresDisplayModels: lastMesuresDisplayModel,
      loadLastMesures: () => store.dispatch(const FetchLastMesuresAction(force: true)),
      isProfilPrincipal: ProfilsUtils.getCurrentProfilType(store.state).isProfilPrincipal,
      mainFirstName: store.state.userState.currentProfile.mainFirstName,
    );
  }

  @override
  List<Object?> get props => [
        lastMesuresStatus,
        lastMesuresDisplayModels,
        isProfilPrincipal,
        mainFirstName,
      ];
}

abstract class LastMesuresScreenItemDisplayModel extends Equatable {
  @override
  List<Object?> get props => [];
}

enum AdditionalViewSection {
  TARGET,
  DATE_INTERVAL;

  double sectionHeight(double textScalingFactor) {
    switch (this) {
      case TARGET:
        if (textScalingFactor <= 1.2) {
          return 110;
        } else if (textScalingFactor <= 1.9) {
          return 114 * textScalingFactor;
        } else if (textScalingFactor <= 2.5) {
          return 150 * textScalingFactor;
        } else {
          return 186 * textScalingFactor;
        }
      case DATE_INTERVAL:
        return 52.0;
    }
  }

  double numberOfTextToAccountFor() {
    return switch (this) { TARGET => 2, DATE_INTERVAL => 1 };
  }
}

class LastMesuresScreenHeaderDisplayModel extends LastMesuresScreenItemDisplayModel {}

class LastMesureDisplayModel extends LastMesuresScreenItemDisplayModel {
  static final _dateFormat = DateFormat('dd/MM/yyyy - HH:mm');

  final String label;
  final String formattedMetricValue;
  final String unit;
  final String formattedDate;
  final EnsMesureType type;
  final String? formattedTargetedValue;
  final String? meanInfoForGlucose;

  LastMesureDisplayModel(
    this.label,
    this.formattedMetricValue,
    this.unit,
    this.formattedDate,
    this.type, [
    this.formattedTargetedValue,
    this.meanInfoForGlucose,
  ]);

  @override
  List<Object?> get props => [
        label,
        formattedMetricValue,
        unit,
        formattedDate,
        type,
        formattedTargetedValue,
        meanInfoForGlucose,
      ];

  LastMesureDisplayModel.from(
    EnsMesure mesure,
    LocaleHelper localeHelper, [
    this.meanInfoForGlucose,
  ])  : label = mesure.label,
        type = mesure.type,
        formattedDate = mesure.lastValue != null
            ? _dateFormat.format(localeHelper.toLocal(mesure.lastValue!.effectiveDate))
            : 'Aucune valeur',
        formattedMetricValue = mesure.lastValue != null ? mesure.lastValue!.formattedMetricValue : '-',
        unit = mesure.lastValue != null ? mesure.lastValue!.unit : '',
        formattedTargetedValue = mesure.targetedValue?.value.toString().replaceAll('.', ',');

  AdditionalViewSection? hasAdditionalViewSection() {
    if (type.targetCanBeDefined) {
      return AdditionalViewSection.TARGET;
    } else if (meanInfoForGlucose != null) {
      return AdditionalViewSection.DATE_INTERVAL;
    } else {
      return null;
    }
  }
}

enum LastMesuresStatus { LOADING, ERROR, SUCCESS }
