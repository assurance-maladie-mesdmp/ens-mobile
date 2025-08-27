/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_input.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_metadata.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_value.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/redux/mesures_redux.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:redux/redux.dart';

class EnsMesureFormBottomSheetViewModel extends AnalyticsViewModel with EquatableMixin {
  final Store _store;
  final String title;
  final String unit;
  final EnsMesureType mesureType;
  final List<EnsMesureMetadataMetric> mesureMetadataMetrics;
  final List<EnsMesureMetadataComment> mesureMetadataComments;
  final bool isSendingData;
  final bool shouldPop;
  final MetadataStatus metadataStatus;
  final bool editMode;
  final EnsMesureValue? mesureToEdit;
  final String? errorText;
  final DateTime minDate;

  List<InputDisplayModel> get displayModels {
    final mesureMetadataDisplayModels = mesureMetadataMetrics.map(
      (metric) => metric.type == EnsMesureType.NIVEAU_DE_DOULEUR
          ? SliderInputDisplayModel(metric, !isSendingData)
          : MetricInputDisplayModel(metric, !isSendingData),
    );

    final commentDisplayModels = mesureMetadataComments.map(
      (comment) => comment.options == null
          ? CommentInputDisplayModel(comment, !isSendingData)
          : DropDownInputDisplayModel(comment, !isSendingData),
    );

    final List<InputDisplayModel> inputs = [];
    inputs.addAll(mesureMetadataDisplayModels);
    inputs.addAll(commentDisplayModels);

    return inputs;
  }

  const EnsMesureFormBottomSheetViewModel._internal(
    this._store, {
    required this.title,
    required this.unit,
    required this.mesureType,
    required this.mesureMetadataMetrics,
    required this.mesureMetadataComments,
    required this.isSendingData,
    required this.shouldPop,
    required this.metadataStatus,
    required this.editMode,
    this.errorText,
    this.mesureToEdit,
    required this.minDate,
  }) : super(_store);

  factory EnsMesureFormBottomSheetViewModel.from(
    Store<EnsState> store,
    EnsMesureType mesureType, {
    String? mesureToEditId,
  }) {
    final mesureState = store.state.mesuresState.mesureStatesByType[mesureType];
    if (mesureState == null) {
      store.dispatch(const FetchLastMesuresAction(force: true));
      return EnsMesureFormBottomSheetViewModel._internal(
        store,
        title: '',
        mesureMetadataMetrics: const [],
        mesureMetadataComments: const [],
        isSendingData: false,
        shouldPop: false,
        unit: '',
        mesureType: mesureType,
        metadataStatus: MetadataStatus.LOADING,
        editMode: false,
        errorText: '',
        minDate: UserSelectors.getBirthdateOrNow(store.state),
      );
    } else {
      final mesureMetadataState = mesureState.mesureMetadataState;
      final mesureHistoryState = mesureState.mesureHistoryState;
      final formStatus = store.state.mesuresState.mesureFormStatus;

      var label = '';
      var unit = '';
      var mesureMetadataMetrics = <EnsMesureMetadataMetric>[];
      var mesureMetadataComments = <EnsMesureMetadataComment>[];
      var isSendingData = false;
      var shouldPop = false;
      var metadataStatus = MetadataStatus.LOADING;
      var editMode = false;
      EnsMesureValue? mesureToEdit;
      String? errorText;

      if (mesureMetadataState.isSuccessWithData) {
        final mesureMetadata = mesureMetadataState.mesureMetadata!;
        metadataStatus = MetadataStatus.SUCCESS;
        label = mesureState.mesure.label;
        unit = mesureMetadata.metrics[0].unit;
        mesureMetadataMetrics = mesureMetadata.metrics;
        mesureMetadataComments = mesureMetadata.comments;
      } else if (mesureMetadataState.isErrorOrSuccessWithoutData) {
        metadataStatus = MetadataStatus.ERROR;
      }

      if (mesureHistoryState.status.isSuccess()) {
        editMode = mesureToEditId != null;
        if (editMode) {
          mesureToEdit = mesureHistoryState.mesureHistory.firstWhereOrNull(
            (mesureHistory) => mesureHistory.id == mesureToEditId,
          );
          if (mesureToEdit == null) {
            editMode = false;
          }
        }
      }

      isSendingData = formStatus.isLoading();
      if (formStatus.isError()) {
        errorText = GENERIC_ERROR_MESSAGE;
      } else if (formStatus.isSuccess()) {
        shouldPop = true;
      }

      return EnsMesureFormBottomSheetViewModel._internal(
        store,
        title: label,
        mesureMetadataMetrics: mesureMetadataMetrics,
        mesureMetadataComments: mesureMetadataComments,
        isSendingData: isSendingData,
        shouldPop: shouldPop,
        unit: unit,
        mesureType: mesureType,
        metadataStatus: metadataStatus,
        editMode: editMode,
        mesureToEdit: mesureToEdit,
        errorText: errorText,
        minDate: UserSelectors.getBirthdateOrNow(store.state),
      );
    }
  }

  void sendMesure(
    DateTime date,
    TimeOfDay time,
    Map<EnsMesureType, String> metrics,
    Map<String, CommentInput> comments,
  ) {
    final DateTime fullDate = DateTime(date.year, date.month, date.day, time.hour, time.minute);
    final List<EnsMesureValueInput> mesureInputs = [];
    final List<EnsMesureCommentInput> commentInputs = [];
    metrics.forEach((type, value) {
      mesureInputs.add(EnsMesureValueInput(type: type, value: value, unit: unit));
    });
    comments.forEach((type, input) {
      commentInputs.add(EnsMesureCommentInput(type: type, value: input.value, extraValue: input.extraValue));
    });

    if (editMode) {
      _store.dispatch(
        UpdateMesureAction(
          EnsMesureInput.updateValue(
            id: mesureToEdit!.id,
            type: mesureType,
            date: fullDate,
            values: mesureInputs,
            comments: commentInputs,
          ),
        ),
      );
    } else {
      _store.dispatch(
        AddMesureAction(
          EnsMesureInput.newValue(type: mesureType, date: fullDate, values: mesureInputs, comments: commentInputs),
        ),
      );
    }
  }

  @override
  List<Object?> get props => [
        title,
        mesureMetadataMetrics,
        mesureMetadataComments,
        isSendingData,
        shouldPop,
        unit,
        mesureType,
        metadataStatus,
        editMode,
        mesureToEdit,
        errorText,
        minDate,
      ];
}

class CommentInput {
  String value;
  String? extraValue;

  CommentInput({required this.value, this.extraValue});
}

enum MetadataStatus { LOADING, ERROR, SUCCESS }

abstract class InputDisplayModel extends Equatable {
  @override
  List<Object?> get props => [];
}

class SliderInputDisplayModel extends InputDisplayModel {
  final EnsMesureMetadataMetric dataMetric;
  final bool enabled;

  SliderInputDisplayModel(this.dataMetric, this.enabled);
}

class MetricInputDisplayModel extends InputDisplayModel {
  final EnsMesureMetadataMetric dataMetric;
  final bool enabled;

  MetricInputDisplayModel(this.dataMetric, this.enabled);
}

class CommentInputDisplayModel extends InputDisplayModel {
  final EnsMesureMetadataComment comment;
  final bool enabled;

  CommentInputDisplayModel(this.comment, this.enabled);
}

class DropDownInputDisplayModel extends InputDisplayModel {
  final EnsMesureMetadataComment comment;
  final bool enabled;

  DropDownInputDisplayModel(this.comment, this.enabled);
}
