/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';

extension FormGlobalKeyExtension on GlobalKey<FormState> {
  FormValidationResult validate({bool additionalCondition = true}) {
    final currentState = this.currentState;
    if (additionalCondition && currentState != null && currentState.validate()) {
      return FormValidationResult._(true);
    } else {
      return FormValidationResult._(false);
    }
  }
}

class FormValidationResult {
  final bool isValid;

  FormValidationResult._(this.isValid);

  FormValidationResult onValid(Function() callback) {
    if (isValid) {
      callback();
    }
    return this;
  }

  FormValidationResult onInvalid(Function() callback) {
    if (!isValid) {
      callback();
    }
    return this;
  }
}
