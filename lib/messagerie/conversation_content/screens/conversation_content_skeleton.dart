/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';

class ConversationContentSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(24.0, 32.0, 24.0, 16.0),
          color: EnsColors.neutral100,
          width: double.infinity,
          height: 88,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SkeletonBox(width: 197.0, height: 12.0),
              SizedBox(height: 16),
              SkeletonBox(width: 225.0, height: 12.0),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 16.0),
          color: Colors.white,
          width: double.infinity,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SkeletonBox(width: 225.0, height: 12.0),
                  SkeletonBox(width: 35.0, height: 12.0),
                ],
              ),
              SizedBox(height: 12),
              SkeletonBox(width: 121.0, height: 12.0),
              SizedBox(height: 22),
              Divider(height: 2, color: EnsColors.neutral200),
              SizedBox(height: 32),
              SkeletonBox(width: 121.0, height: 12.0),
              SizedBox(height: 24),
              SkeletonBox(width: double.infinity, height: 12.0),
              SizedBox(height: 8),
              SkeletonBox(width: double.infinity, height: 12.0),
              SizedBox(height: 8),
              SkeletonBox(width: double.infinity, height: 12.0),
              SizedBox(height: 8),
              SkeletonBox(width: double.infinity, height: 12.0),
              SizedBox(height: 8),
              SkeletonBox(width: 80.0, height: 12.0),
            ],
          ),
        ),
      ],
    );
  }
}
