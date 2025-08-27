/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';

class CarouselSkeleton extends StatelessWidget {
  final bool isScreenshotsCarousel;

  const CarouselSkeleton({super.key, this.isScreenshotsCarousel = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: isScreenshotsCarousel ? 0 : 24),
          child: isScreenshotsCarousel
              ? const SkeletonBox(width: 312, height: 172)
              : Container(
                  padding: const EdgeInsets.all(24),
                  width: 312,
                  decoration: BoxDecoration(
                    color: EnsColors.light,
                    border: Border.all(color: EnsColors.neutral200),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SkeletonBox(width: 172, height: 20),
                      SizedBox(height: 12),
                      SkeletonBox(width: 208, height: 12),
                      SizedBox(height: 12),
                      SkeletonBox(width: 208, height: 12),
                      SizedBox(height: 12),
                      SkeletonBox(width: 160, height: 12),
                      SizedBox(height: 20),
                      SkeletonBox(width: 188, height: 12),
                    ],
                  ),
                ),
        ),
        const SizedBox(height: 24),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SkeletonCircle(radius: 24),
            SizedBox(width: 76),
            SkeletonCircle(radius: 24),
          ],
        ),
      ],
    );
  }
}
