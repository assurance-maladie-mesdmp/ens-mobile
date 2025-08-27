/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class LinkedAllergieSection extends StatelessWidget {
  final List<String> allergieNames;
  final Color cardColor;

  const LinkedAllergieSection({required this.allergieNames, this.cardColor = EnsColors.neutral200});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: allergieNames
          .map(
            (name) => Padding(
              padding: const EdgeInsets.only(top: 8, right: 8),
              child: Semantics(
                label: 'Allergie associée : $name',
                child: ExcludeSemantics(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const EnsSvg(
                            EnsImages.ic_allergie_flocon,
                            color: EnsColors.primary,
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(width: 4),
                          Flexible(
                            child: Text(
                              name,
                              style: EnsTextStyle.text14_w600_normal_title,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
