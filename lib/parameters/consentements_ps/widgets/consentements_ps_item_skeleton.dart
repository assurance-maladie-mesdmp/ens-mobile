/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';

class ConsentementPsItemSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 24, bottom: 24, top: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SkeletonCircle(radius: 20),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4),
                SkeletonBox(width: 225.0),
                SizedBox(height: 20),
                SkeletonBox(width: 121.0),
                SizedBox(height: 8),
                SkeletonBox(width: 72.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
