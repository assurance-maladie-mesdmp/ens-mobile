/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_datetime_formater.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_value.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/redux/mesures_redux.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';

class MesureHistoryViewModel extends AnalyticsViewModel with EquatableMixin {
  final Store _store;
  final EnsMesureType mesureType;
  final MesureHistoryStatus mesureHistoryStatus;
  final List<MesureHistoryWidgetDisplayModel> mesureHistoryDisplayModels;

  const MesureHistoryViewModel._internal(
    this._store, {
    required this.mesureHistoryStatus,
    required this.mesureType,
    required this.mesureHistoryDisplayModels,
  }) : super(_store);

  factory MesureHistoryViewModel(
    Store<EnsState> store,
    EnsMesureType mesureType, [
    String? selectedValueId,
    LocaleHelper localeHelper = const LocaleHelper(),
  ]) {
    final mesureHistoryState = store.state.mesuresState.mesureStatesByType[mesureType]!.mesureHistoryState;
    final shouldDisplayReferenceText = !store.state.userState.isMainProfile &&
        mesureType.hasCourbesReference &&
        store.state.courbesReferenceState.typeOfCurvesToDisplay.contains(TypeOfCurve.PRINCIPALE);

    var mesureHistoryStatus = MesureHistoryStatus.LOADING;
    var mesureHistoryValues = <EnsMesureValue>[];

    if (mesureHistoryState.status.isSuccess()) {
      mesureHistoryStatus = MesureHistoryStatus.SUCCESS;
      mesureHistoryValues = mesureHistoryState.mesureHistory;
    } else if (mesureHistoryState.status.isError()) {
      mesureHistoryStatus = MesureHistoryStatus.ERROR;
    }

    final List<MesureHistoryWidgetDisplayModel> mesureHistoryDisplayModel = [];

    if (selectedValueId != null) {
      final EnsMesureValue? selectedValue =
          mesureHistoryValues.firstWhereOrNull((value) => value.id == selectedValueId);
      if (selectedValue != null) {
        mesureHistoryDisplayModel.add(
          MesureHistoryWidgetDisplayModel.from(
            mesureHistoryValue: mesureHistoryValues.firstWhere((value) => value.id == selectedValueId),
            localeHelper: localeHelper,
            shouldDisplayReferenceText: shouldDisplayReferenceText,
          ),
        );
      }
    } else {
      mesureHistoryDisplayModel.addAll(
        mesureHistoryValues.map(
          (value) => MesureHistoryWidgetDisplayModel.from(
            mesureHistoryValue: value,
            localeHelper: localeHelper,
            shouldDisplayReferenceText: false,
          ),
        ),
      );
    }

    return MesureHistoryViewModel._internal(
      store,
      mesureHistoryStatus: mesureHistoryStatus,
      mesureType: mesureType,
      mesureHistoryDisplayModels: mesureHistoryDisplayModel,
    );
  }

  void deleteMesure(String mesureId) {
    _store.dispatch(DeleteMesureAction(mesureId, mesureType));
  }

  @override
  List<Object?> get props => [_store, mesureType, mesureHistoryDisplayModels, mesureHistoryStatus];
}

class MesureHistoryWidgetDisplayModel extends Equatable {
  static final _dateFormat = DateFormat('dd/MM/yyyy - HH:mm');

  final String id;
  final String formattedMetricValue;
  final String unit;
  final String formattedDate;
  final List<String> comments;
  final EnsMesureValuePermissions permissions;
  final String? courbeReferenceText;
  final DateTime effectiveDate;
  final EnsMesureDocumentInfo? linkedDocumentInformation;
  final String? formattedAuteur;

  const MesureHistoryWidgetDisplayModel({
    required this.id,
    required this.formattedMetricValue,
    required this.unit,
    required this.formattedDate,
    required this.comments,
    required this.permissions,
    required this.effectiveDate,
    this.courbeReferenceText,
    this.linkedDocumentInformation,
    this.formattedAuteur,
  });

  @override
  List<Object?> get props => [
        id,
        formattedMetricValue,
        unit,
        formattedDate,
        comments,
        permissions,
        courbeReferenceText,
        effectiveDate,
        linkedDocumentInformation,
        formattedAuteur,
      ];

  MesureHistoryWidgetDisplayModel.from({
    required EnsMesureValue mesureHistoryValue,
    required LocaleHelper localeHelper,
    required bool shouldDisplayReferenceText,
  })  : id = mesureHistoryValue.id,
        unit = mesureHistoryValue.unit,
        formattedDate = _dateFormat.format(localeHelper.toLocal(mesureHistoryValue.effectiveDate)),
        formattedMetricValue = mesureHistoryValue.formattedMetricValue,
        comments = mesureHistoryValue.comments
            .map((comment) => '${comment.value}${comment.extraValue != null ? ' - ${comment.extraValue!}' : ''}')
            .toList(),
        permissions = mesureHistoryValue.permissions,
        effectiveDate = mesureHistoryValue.effectiveDate,
        courbeReferenceText = shouldDisplayReferenceText ? mesureHistoryValue.courbeReferenceText : null,
        linkedDocumentInformation = mesureHistoryValue.linkDocumentInfo,
        formattedAuteur = mesureHistoryValue.auteur == null
            ? null
            : 'Par ${mesureHistoryValue.auteur!.firstName.capitalizeName()} ${mesureHistoryValue.auteur!.lastName.capitalizeName()}';
}

enum MesureHistoryStatus { LOADING, ERROR, SUCCESS }
