/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/datetime_extension.dart';

mixin EnsInputDateMixin {
  static Future<void> selectDate(
    BuildContext context,
    ValueNotifier<DateTime?> controller,
    FormFieldState<DateTime?> state,
    DateTime? firstDate,
    DateTime? lastDate,
    bool startWithKeyboardInput, {
    DateTime? initialValue,
  }) async {
    final DateTime endDate = lastDate ?? EnsDateUtils.maximalInputDate; // Material picker need an endDate
    final DateTime initialDate = initialValue ?? (DateTime.now().isAfter(endDate) ? endDate : DateTime.now());
    final DateTime startDate;
    if (firstDate != null && (firstDate.isSameDate(initialDate))) {
      startDate = initialDate;
    } else {
      startDate = firstDate ?? EnsDateUtils.minimalInputDate;
    }

    final ThemeData theme = Theme.of(context);
    switch (theme.platform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        _buildIosDatePicker(context, controller, state, startDate, endDate, initialDate);
      default:
        _buildMaterialDatePicker(context, controller, state, startDate, endDate, initialDate, startWithKeyboardInput);
    }
  }

  static Future<void> _buildMaterialDatePicker(
    BuildContext context,
    ValueNotifier<DateTime?> controller,
    FormFieldState<DateTime?> state,
    DateTime startDate,
    DateTime endDate,
    DateTime initialDate,
    bool startWithKeyboardInput,
  ) async {
    final AndroidDeviceInfo? androidInfo = Platform.isAndroid ? await DeviceInfoPlugin().androidInfo : null;
    final isSamsung = androidInfo?.manufacturer == 'samsung';
    if (context.mounted) {
      final selectedDate = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: startDate,
        lastDate: endDate,
        initialEntryMode: startWithKeyboardInput ? DatePickerEntryMode.input : DatePickerEntryMode.calendar,
        builder: (context, child) {
          // FIX for showDatePicker in order to always have enough space for errors text on 2 lines
          return MediaQuery.withClampedTextScaling(child: child!, minScaleFactor: 1.2);
        },
        keyboardType: isSamsung ? TextInputType.url : TextInputType.datetime,
        errorFormatText: 'Saisir une date réelle\nau format jj/mm/aaaa',
        errorInvalidText: _getErrorInvalidText(startDate, endDate),
      );
      controller.value = selectedDate;
      state.didChange(selectedDate);
      state.validate();
    }
  }

  static String _getErrorInvalidText(DateTime startDate, DateTime endDate) {
    if (endDate == EnsDateUtils.maximalInputDate) {
      if (startDate.isToday()) {
        return 'Saisir la date d\’aujourd\'hui\n'
            'ou une date future';
      } else {
        return 'Saisir une date\n'
            'à partir ${_getYearOrExpliciteDate(startDate, 'de ', 'du ')}';
      }
    } else {
      return 'Saisir une date comprise\n'
          'entre ${_getSmartDate(startDate)}\n'
          'et ${_getSmartDate(endDate)}';
    }
  }

  static String _getSmartDate(DateTime startDate) {
    return startDate.isToday() ? 'aujourd\’hui' : _getYearOrExpliciteDate(startDate, '', 'le ');
  }

  static String _getYearOrExpliciteDate(DateTime startDate, String yearPrefix, String expliciteDatePrefix) =>
      startDate.isSameDate(EnsDateUtils.minimalInputDate)
          ? yearPrefix + startDate.year.toString()
          : expliciteDatePrefix + startDate.toExpliciteDateWithoutWeekDay();

  static void _buildIosDatePicker(
    BuildContext context,
    ValueNotifier<DateTime?> controller,
    FormFieldState<DateTime?> state,
    DateTime startDate,
    DateTime endDate,
    DateTime initialDate,
  ) {
    controller.value = initialDate;
    state.didChange(initialDate);
    state.validate();
    showModalBottomSheet(
      barrierLabel: 'Valider, Bouton',
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: MediaQuery.of(context).copyWith().size.height / 3,
          color: Colors.white,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            onDateTimeChanged: (selectedDate) {
              controller.value = selectedDate;
              state.didChange(selectedDate);
              state.validate();
            },
            initialDateTime: initialDate,
            minimumDate: startDate,
            maximumDate: endDate,
          ),
        );
      },
    );
  }
}

mixin EnsInputTimeMixin {
  static Future<void> selectTime(
    BuildContext context,
    ValueNotifier<TimeOfDay?> controller,
    FormFieldState<TimeOfDay?> state,
    TimeOfDay? initialTime,
  ) async {
    final ThemeData theme = Theme.of(context);
    switch (theme.platform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        _buildCupertinoTimePicker(context, controller, state, initialTime);
      default:
        _buildMaterialTimePicker(context, controller, state, initialTime);
    }
  }

  static Future<void> _buildMaterialTimePicker(
    BuildContext context,
    ValueNotifier<TimeOfDay?> controller,
    FormFieldState<TimeOfDay?> state,
    TimeOfDay? initialTime,
  ) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: initialTime ?? TimeOfDay(hour: DateTime.now().hour, minute: DateTime.now().minute),
    );
    controller.value = selectedTime;
    state.didChange(selectedTime);
    state.validate();
  }

  static void _buildCupertinoTimePicker(
    BuildContext context,
    ValueNotifier<TimeOfDay?> controller,
    FormFieldState<TimeOfDay?> state,
    TimeOfDay? initialTime,
  ) {
    final DateTime initialDate = DateTime(
      EnsDateUtils.minimalInputDate.year,
      EnsDateUtils.minimalInputDate.month,
      EnsDateUtils.minimalInputDate.day,
      initialTime?.hour ?? DateTime.now().hour,
      initialTime?.minute ?? DateTime.now().minute,
    );
    final initialTimeValue = initialTime ?? TimeOfDay(hour: DateTime.now().hour, minute: DateTime.now().minute);
    controller.value = initialTimeValue;
    state.didChange(initialTimeValue);
    state.validate();

    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: MediaQuery.of(context).copyWith().size.height / 3,
          color: Colors.white,
          child: CupertinoDatePicker(
            initialDateTime: initialDate,
            use24hFormat: true,
            mode: CupertinoDatePickerMode.time,
            onDateTimeChanged: (selectedTime) {
              controller.value = TimeOfDay.fromDateTime(selectedTime);
              state.didChange(TimeOfDay.fromDateTime(selectedTime));
              state.validate();
            },
          ),
        );
      },
    );
  }
}
