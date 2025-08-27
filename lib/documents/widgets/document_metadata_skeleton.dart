/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';

class DocumentMetadataSkeleton extends StatelessWidget {
  const DocumentMetadataSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: SkeletonBox(width: 160, height: 28)),
        SizedBox(height: 32),
        SkeletonBox(width: 152, height: 16),
        SizedBox(height: 8),
        SkeletonBox(width: 112, height: 16),
        SizedBox(height: 32),
        SkeletonBox(width: 112, height: 16),
        SizedBox(height: 8),
        SkeletonBox(width: 140, height: 16),
        SizedBox(height: 32),
        SkeletonBox(width: 160, height: 16),
        SizedBox(height: 8),
        SkeletonBox(width: 160, height: 16),
        SizedBox(height: 32),
        SkeletonBox(width: 124, height: 16),
        SizedBox(height: 8),
        SkeletonBox(width: 304, height: 16),
        SizedBox(height: 4),
        SkeletonBox(width: 328, height: 16),
        SizedBox(height: 4),
        SkeletonBox(width: 244, height: 16),
      ],
    );
  }
}
