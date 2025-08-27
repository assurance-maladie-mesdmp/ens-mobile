/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';

class MonHistoireDeSanteEpisodesSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: EnsColors.light,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 24, bottom: 24, top: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SkeletonCircle(radius: 40),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 4),
                  Padding(
                    padding: EdgeInsets.only(right: 32),
                    child: SkeletonBox(),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.only(right: 72),
                    child: SkeletonBox(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
