/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';

class PmlDetailsScreenSkeleton extends StatelessWidget {
  const PmlDetailsScreenSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Divider(height: 2, thickness: 1, color: EnsColors.neutral200),
        ColoredBox(
          color: EnsColors.light,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonBox(width: 100),
                SizedBox(height: 8),
                SkeletonBox(width: 140),
                SizedBox(height: 16),
                SkeletonBox(width: 100),
                SizedBox(height: 8),
                SkeletonBox(width: 140),
                SizedBox(height: 16),
                SkeletonBox(width: 100),
                SizedBox(height: 8),
                SkeletonBox(width: 140),
              ],
            ),
          ),
        ),
        Divider(height: 2, thickness: 1, color: EnsColors.neutral200),
        ColoredBox(
          color: EnsColors.light,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonBox(width: 112),
                SizedBox(height: 24),
                SkeletonBox(width: 220, height: 40),
                SizedBox(height: 16),
                SkeletonBox(width: 320, height: 40),
                SizedBox(height: 16),
                SkeletonBox(width: 400),
                SizedBox(height: 8),
                SkeletonBox(width: 300),
              ],
            ),
          ),
        ),
        Divider(height: 2, thickness: 2, color: EnsColors.neutral200),
      ],
    );
  }
}
