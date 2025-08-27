/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';

class HomeButtonSkeleton extends StatelessWidget {
  const HomeButtonSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _SingleHomeButtonSkeleton(),
        const SizedBox(width: 16),
        _SingleHomeButtonSkeleton(),
      ],
    );
  }
}

class _SingleHomeButtonSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
      width: 152,
      decoration: BoxDecoration(
        color: EnsColors.light,
        border: Border.all(color: EnsColors.neutral200),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        children: [
          SkeletonCircle(radius: 48),
          SizedBox(width: 8),
          Column(
            children: [
              SkeletonBox(width: 68, height: 12),
              SizedBox(height: 8),
              SkeletonBox(width: 68, height: 12),
            ],
          ),
        ],
      ),
    );
  }
}
