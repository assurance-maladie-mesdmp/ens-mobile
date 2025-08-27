/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_validator.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';

class EnsInputDateValidator implements EnsValidator<DateTime> {
  static const emptyDateMessage = 'Sélectionner une date';
  static const invalidAnteriorDateMessage = 'La date de début doit être avant la date de fin.';
  static const startDateRequiredMessage = 'Ajouter une date de début';
  static const endDateRequiredMessage = 'Ajouter une date de fin';
  static const invalidDateVaccinationMessage =
      'La date a été supprimée. Saisir une date correspondant au vaccin sélectionné.';

  @override
  String? validate(
    DateTime? value, {
    bool isOptional = false,
    DateTime? anteriorDate,
    String anteriorDateErrorText = invalidAnteriorDateMessage,
    String emptyMessage = emptyDateMessage,
  }) {
    if (!isOptional && value == null) {
      return emptyMessage;
    }
    if (anteriorDate != null && value != null && anteriorDate.isAfter(value)) {
      return anteriorDateErrorText;
    }
    return null;
  }

  String? validateStartDateRange(DateTime? startDate, DateTime? endDate) {
    if (startDate == null && endDate != null) {
      return startDateRequiredMessage;
    }
    return null;
  }

  String? validateEndDateRange(DateTime? startDate, DateTime? endDate) {
    if (startDate != null) {
      if (endDate == null) {
        return endDateRequiredMessage;
      } else if (DateUtils.dateOnly(startDate).isAfter(DateUtils.dateOnly(endDate))) {
        return invalidAnteriorDateMessage;
      }
    }
    return null;
  }

  String? validateDateVaccination(
    DateTime? value, {
    DateTime? anteriorDate,
    String anteriorDateErrorText = invalidAnteriorDateMessage,
    AllPurposesStatus? editVaccinationStatus,
    DateTime? firstDate,
    DateTime? lastDate,
    void Function()? onValidationFailed,
  }) {
    final validation = validate(
      value,
      anteriorDate: anteriorDate,
      anteriorDateErrorText: anteriorDateErrorText,
      isOptional: false,
    );
    if (validation != null) {
      onValidationFailed?.call();
      return validation;
    }
    if (editVaccinationStatus?.isError() == true ||
        (lastDate != null && value != null && value.isAfter(lastDate)) ||
        (firstDate != null && value != null && value.isBefore(firstDate))) {
      onValidationFailed?.call();
      return invalidDateVaccinationMessage;
    }
    return null;
  }
}
