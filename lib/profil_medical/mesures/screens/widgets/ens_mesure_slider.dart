/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';

class EnsMesureSlider extends FormField<String> {
  final int min;
  final int max;
  final double thumbRadius;
  final int? division;
  final EdgeInsetsGeometry padding;
  final TextEditingController controller;

  EnsMesureSlider({
    super.key,
    this.min = 0,
    this.max = 10,
    this.division,
    this.padding = EdgeInsets.zero,
    this.thumbRadius = 20,
    required this.controller,
    bool enabled = true,
  }) : super(
          initialValue: controller.text.isNotEmpty ? controller.text : '5',
          builder: (FormFieldState<String> state) {
            return Padding(
              padding: padding,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(min.toString(), style: EnsTextStyle.text16_w600_body),
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(state.context).copyWith(
                        trackHeight: 4,
                        trackShape: CustomTrackShape(),
                        thumbShape: CustomSliderThumbCircle(thumbRadius: thumbRadius, enabled: enabled),
                        activeTrackColor: EnsColors.body,
                        inactiveTrackColor: EnsColors.body,
                        activeTickMarkColor: EnsColors.body,
                        inactiveTickMarkColor: EnsColors.body,
                        tickMarkShape: CustomTickMarkShape(),
                        overlayColor: EnsColors.neutral200,
                      ),
                      child: Slider(
                        activeColor: EnsColors.body,
                        value: double.parse(state.value!),
                        onChanged: enabled
                            ? (double newValue) {
                                controller.text = newValue.toString();
                                state.didChange(newValue.toString());
                              }
                            : (_) {},
                        min: min.toDouble(),
                        max: max.toDouble(),
                        divisions: division,
                      ),
                    ),
                  ),
                  Text(max.toString(), style: EnsTextStyle.text16_w600_body),
                ],
              ),
            );
          },
        );
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    Offset? secondaryOffset,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    bool isDiscrete = false,
    bool isEnabled = false,
    double additionalActiveTrackHeight = 2,
  }) {
    super.paint(
      context,
      offset,
      parentBox: parentBox,
      sliderTheme: sliderTheme,
      enableAnimation: enableAnimation,
      textDirection: textDirection,
      thumbCenter: thumbCenter,
      isDiscrete: isDiscrete,
      isEnabled: isEnabled,
      additionalActiveTrackHeight: 0,
    );
  }
}

class CustomSliderThumbCircle extends SliderComponentShape {
  final double thumbRadius;
  final int min;
  final int max;
  final bool enabled;

  const CustomSliderThumbCircle({required this.thumbRadius, this.min = 0, this.max = 10, this.enabled = true});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) => Size.fromRadius(thumbRadius);

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final paint = Paint()..style = PaintingStyle.fill;

    if (enabled) {
      paint.shader = EnsColors.gradient01.createShader(Rect.fromCircle(center: center, radius: thumbRadius));
    } else {
      paint.color = EnsColors.disabled;
    }

    final TextSpan span = TextSpan(
      style: TextStyle(fontSize: thumbRadius * .9, fontWeight: FontWeight.w700, color: EnsColors.light),
      text: getValue(value),
    );

    final TextPainter tp = TextPainter(text: span, textAlign: TextAlign.center, textDirection: TextDirection.ltr);

    tp.layout();
    final Offset textCenter = Offset(center.dx - (tp.width / 2), center.dy - (tp.height / 2));

    canvas.drawCircle(center, thumbRadius * .9, paint);
    tp.paint(canvas, textCenter);
  }

  String getValue(double value) => (min + (max - min) * value).round().toString();
}

class CustomTickMarkShape extends SliderTickMarkShape {
  final double width;
  final double height;

  CustomTickMarkShape({this.width = 4, this.height = 8});

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    required bool isEnabled,
  }) {
    final Canvas canvas = context.canvas;

    final paint = Paint()
      ..color = EnsColors.body
      ..style = PaintingStyle.fill;

    canvas.drawRRect(
      RRect.fromRectAndRadius(Rect.fromCenter(center: center, width: width, height: height), const Radius.circular(4)),
      paint,
    );
  }

  @override
  Size getPreferredSize({required SliderThemeData sliderTheme, required bool isEnabled}) =>
      Size.fromRadius(sliderTheme.trackHeight! / 4);
}
