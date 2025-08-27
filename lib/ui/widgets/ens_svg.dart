/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore_for_file: dont_use_svg_picture_asset
class EnsSvg extends StatelessWidget {
  final Key? svgKey;
  final String svgName;
  final double? width;
  final double? height;
  final Color? color;
  final String? semanticsLabel;
  final BoxFit fit;
  final bool allowDrawingOutsideViewBox;
  final Clip clipBehavior;
  final WidgetBuilder? placeholderBuilder;
  final AlignmentGeometry alignment;

  const EnsSvg(
    this.svgName, {
    this.svgKey,
    this.width,
    this.height,
    this.color,
    this.semanticsLabel,
    this.fit = BoxFit.contain,
    this.allowDrawingOutsideViewBox = false,
    this.clipBehavior = Clip.hardEdge,
    this.placeholderBuilder,
    this.alignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: semanticsLabel,
      child: SvgPicture.asset(
        key: svgKey,
        svgName,
        width: width,
        height: height,
        colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
        excludeFromSemantics: true,
        fit: fit,
        allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
        clipBehavior: clipBehavior,
        placeholderBuilder: placeholderBuilder,
        alignment: alignment,
      ),
    );
  }
}
