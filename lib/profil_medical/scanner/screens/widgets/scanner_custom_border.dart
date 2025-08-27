/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

class ScannerCustomBorder extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..strokeWidth = 3
      ..color = EnsColors.primary
      ..style = PaintingStyle.stroke
      ..strokeJoin = StrokeJoin.round
      ..strokeCap = StrokeCap.round;

    final Path path = Path()
      ..moveTo(size.width / 4, 1.5)
      ..lineTo(8, 1.5)
      ..addArc(Rect.fromCenter(center: const Offset(9.5, 9.5), width: 16, height: 16), 3 * pi / 2, -pi / 2)
      ..moveTo(1.5, 8)
      ..lineTo(1.5, size.height - 8)
      ..addArc(Rect.fromCenter(center: Offset(9.5, size.height - 9.5), width: 16, height: 16), pi, -pi / 2)
      ..lineTo(size.width / 4, size.height - 1.5)
      ..moveTo(size.width * 3 / 4, 1.5)
      ..lineTo(size.width - 8, 1.5)
      ..addArc(Rect.fromCenter(center: Offset(size.width - 9.5, 9.5), width: 16, height: 16), 3 * pi / 2, pi / 2)
      ..lineTo(size.width - 1.5, size.height - 9.5)
      ..addArc(Rect.fromCenter(center: Offset(size.width - 9.5, size.height - 9.5), width: 16, height: 16), 0, pi / 2)
      ..lineTo(size.width * 3 / 4, size.height - 1.5);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
