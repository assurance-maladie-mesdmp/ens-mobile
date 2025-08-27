/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:math';

import 'package:equatable/equatable.dart';

class TitleOpacityResult extends Equatable {
  final double title;
  final double bodyTitle;

  const TitleOpacityResult({
    required this.title,
    required this.bodyTitle,
  });

  @override
  List<Object?> get props => [title, bodyTitle];
}

class OpacityUtils {
  static const int OPACITY_ALPHA_MAX_RANGE = 255;
  static const double MAX_OPACITY = 1.0;
  static const double MIN_OPACITY = 0.0;

  static TitleOpacityResult computeTitleOpacity(double offset, double bodyTitleHeight) {
    if (offset <= 0) return const TitleOpacityResult(title: 0, bodyTitle: 1);
    if (offset >= bodyTitleHeight) return const TitleOpacityResult(title: 1, bodyTitle: 0);
    final dsd = offset / bodyTitleHeight;
    return TitleOpacityResult(
      title: dsd >= MAX_OPACITY ? MAX_OPACITY : max(0, dsd),
      bodyTitle: dsd >= MAX_OPACITY ? MIN_OPACITY : min(1, MAX_OPACITY - dsd),
    );
  }

  static int getAlpha(double opacity) {
    assert(opacity >= 0.0 && opacity <= 1.0);
    return (opacity * OPACITY_ALPHA_MAX_RANGE).round();
  }
}
