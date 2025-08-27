/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';

class LoadingQuestionnaireWidget extends StatelessWidget {
  const LoadingQuestionnaireWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        children: [
          const SkeletonBox(width: 300, height: 24, radius: 40),
          const SizedBox(height: 16),
          const SkeletonBox(width: 130, height: 24, radius: 40),
          const SizedBox(height: 24),
          const _CardSkeleton(),
          const SizedBox(height: 16),
          const _CardSkeleton(),
          const SizedBox(height: 16),
          const _CardSkeleton(),
          const SizedBox(height: 24),
          EnsButton(
            isLoading: true,
            label: 'Continuer',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _CardSkeleton extends StatelessWidget {
  const _CardSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: EnsColors.neutral200),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: const _ItemSkeleton(),
    );
  }
}

class _ItemSkeleton extends StatelessWidget {
  const _ItemSkeleton();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SkeletonCircle(radius: 40),
        SizedBox(width: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SkeletonBox(width: 140),
            SizedBox(height: 8),
            SkeletonBox(width: 115),
          ],
        ),
      ],
    );
  }
}
