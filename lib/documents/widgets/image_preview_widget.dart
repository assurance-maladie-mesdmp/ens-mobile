/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

class ImagePreviewWidget extends StatelessWidget {
  final Uint8List fileBinary;
  final String name;

  const ImagePreviewWidget(this.fileBinary, this.name);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Material(
          color: EnsColors.background,
          child: ExtendedImage.memory(
            fileBinary,
            semanticLabel: name,
            fit: BoxFit.contain,
            alignment: Alignment.center,
            mode: ExtendedImageMode.gesture,
            initGestureConfigHandler: (state) {
              return GestureConfig(
                minScale: 1,
                animationMinScale: 0.7,
                maxScale: 15.0,
                animationMaxScale: 15.5,
                speed: 1.0,
                inertialSpeed: 100.0,
                initialScale: 1.0,
                inPageView: false,
                initialAlignment: InitialAlignment.center,
              );
            },
          ),
        );
      },
    );
  }
}
