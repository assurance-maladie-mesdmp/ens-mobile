/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

class EnsLinearProgressBar extends StatefulWidget {
  /// [progress] can vary from 0 (empty progress) to 1 (max progress)
  final double progress;

  /// [animated] (default false) will animate progress from 0 to [progress] in 300 millis
  final bool animated;

  final double height;

  const EnsLinearProgressBar({
    required this.progress,
    this.animated = false,
    this.height = 8,
  }) : assert(progress >= 0 && progress <= 1);

  @override
  State<EnsLinearProgressBar> createState() => _EnsLinearProgressBarState();
}

class _EnsLinearProgressBarState extends State<EnsLinearProgressBar> {
  bool initialAnimationDone = false;

  @override
  void initState() {
    super.initState();
    if (widget.animated) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        setState(() {
          initialAnimationDone = true;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: EnsColors.neutral200,
          ),
          height: widget.height,
          width: constraints.maxWidth,
          child: Align(
            alignment: Alignment.centerLeft,
            child: AnimatedContainer(
              height: widget.height,
              width: initialAnimationDone || !widget.animated ? widget.progress * constraints.maxWidth : 0,
              decoration: BoxDecoration(
                color: EnsColors.primary,
                borderRadius: BorderRadius.circular(8),
              ),
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOutQuad,
            ),
          ),
        );
      },
    );
  }
}
