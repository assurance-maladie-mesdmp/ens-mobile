/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/messages_pannes/domain/models/ens_message_panne.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_cross_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_html.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/utils/text_scale_utils.dart';

class EnsMessagePanneWidget extends StatelessWidget {
  final EnsMessagePanne message;
  final void Function()? onCloseCallback;
  final bool headerOnly;

  const EnsMessagePanneWidget({super.key, required this.message, this.onCloseCallback, this.headerOnly = false});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: EnsColors.light,
        boxShadow: [BoxShadow(color: EnsColors.neutral300, blurRadius: 6, offset: Offset(0, 6))],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        if (TextScaleUtils.getTextScaleFactor(context) <= 1.5) ...[
                          EnsSvg(message.type.svgPath, height: 24, width: 24),
                          const SizedBox(width: 8),
                        ],
                        Expanded(child: Text(message.title, style: EnsTextStyle.text14_w600_normal_title)),
                      ],
                    ),
                    if (!headerOnly && message.content != null) ...[
                      EnsHtml(
                        data: message.content!,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        textColor: EnsColors.body,
                      ),
                    ],
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 4),
              child: EnsCrossButton(
                accessibilityLabel: 'fermer le bandeau d\'information',
                onTap: onCloseCallback,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
