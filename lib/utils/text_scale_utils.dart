/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';

class TextScaleUtils {
  static double getTextScaleFactor(BuildContext context, {double fontSize = 14}) {
    final defaultTextFactor = TextScaler.noScaling.scale(fontSize);
    final currentTextFactor = MediaQuery.of(context).textScaler.scale(fontSize);
    return currentTextFactor / defaultTextFactor;
  }
}
