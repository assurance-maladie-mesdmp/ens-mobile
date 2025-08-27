/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_selectors.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_value.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/mesure_history_widget_view_model.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:redux/redux.dart';

class MesureHistoryItemViewModel extends AnalyticsViewModel with EquatableMixin {
  final MesureHistoryWidgetDisplayModel mesureHistory;
  final TypeOfChart typeOfChartCurrentlyDisplayed;
  final DateTime birthdate;
  final bool canBeDeletedOrModified;
  final String formattedTitle;
  final String formattedValue;
  final String formattedAge;
  final EnsMesureDocumentInfo? linkedDocumentInfo;
  final VoidCallback fetchDoc;
  final String? interruptionServiceSnackbarMessage;

  MesureHistoryItemViewModel._internal(
    super.store, {
    required this.mesureHistory,
    required this.typeOfChartCurrentlyDisplayed,
    required this.canBeDeletedOrModified,
    required this.birthdate,
    required this.formattedTitle,
    required this.formattedValue,
    required this.formattedAge,
    required this.linkedDocumentInfo,
    required this.fetchDoc,
    this.interruptionServiceSnackbarMessage,
  });

  factory MesureHistoryItemViewModel(
    Store<EnsState> store,
    MesureHistoryWidgetDisplayModel mesureHistory,
    EnsMesureType mesureType,
  ) {
    final dateOfBirth = UserSelectors.getBirthdateOrNow(store.state);

    final interruptionServiceSnackbarMessage = InterruptionSelectors.getCurrentInterruptionInfos(
      state: store.state,
      domaine: DomaineInterruption.DOCUMENTS,
    )?.messageSnackbar;

    return MesureHistoryItemViewModel._internal(
      store,
      mesureHistory: mesureHistory,
      typeOfChartCurrentlyDisplayed:
          store.state.courbesReferenceState.preferredTypeOfChart[mesureType] ?? TypeOfChart.DYNAMIQUE,
      birthdate: dateOfBirth,
      canBeDeletedOrModified: mesureHistory.permissions.canBeDeleted || mesureHistory.permissions.canBeModified,
      formattedTitle:
          '${mesureHistory.formattedMetricValue} ${mesureHistory.unit}\n${mesureHistory.formattedDate}\n${mesureHistory.comments.isNotEmpty ? mesureHistory.comments.first : ''}\n${mesureHistory.formattedAuteur ?? ''}',
      formattedValue: '${mesureHistory.formattedMetricValue} ${mesureHistory.unit}',
      formattedAge: _getFormattedAge(mesureHistory.effectiveDate, dateOfBirth),
      linkedDocumentInfo: mesureHistory.linkedDocumentInformation,
      fetchDoc: () => store.dispatch(FetchDocumentsAction()),
      interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
    );
  }

  @override
  List<Object?> get props => [
        mesureHistory,
        typeOfChartCurrentlyDisplayed,
        birthdate,
        canBeDeletedOrModified,
        formattedTitle,
        formattedValue,
        formattedAge,
        linkedDocumentInfo,
        interruptionServiceSnackbarMessage,
      ];
}

String _getFormattedAge(DateTime effectiveDate, DateTime birthdate) {
  final periodSince = effectiveDate.difference(birthdate);
  final daysSinceBirth = periodSince.inDays;
  final monthsSinceBirth = daysSinceBirth ~/ 30.4;
  String formattedAge;
  if (monthsSinceBirth <= 36) {
    final monthsSinceBirth = daysSinceBirth ~/ 30.4;
    formattedAge = '$monthsSinceBirth mois';
  } else {
    formattedAge = '${monthsSinceBirth ~/ 12} ans';
    if (monthsSinceBirth % 12 != 0) {
      formattedAge += ' et ${monthsSinceBirth % 12} mois';
    }
  }
  return formattedAge;
}
