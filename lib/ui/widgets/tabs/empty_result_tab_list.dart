/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/widgets.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EmptyResultTabListView extends StatelessWidget {
  final String message;
  final double topSpace;

  const EmptyResultTabListView({required this.message, this.topSpace = 0});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: topSpace),
            const EnsSvg(EnsImages.information, height: 160, width: 160),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text(message, style: EnsTextStyle.text16_w400_normal_body),
              ),
            ),
          ],
        ),
      );
}
