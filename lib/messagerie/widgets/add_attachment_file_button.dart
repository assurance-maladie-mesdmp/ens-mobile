/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class AddAttachmentFileButton extends StatelessWidget {
  final String label;
  final void Function() onTap;

  const AddAttachmentFileButton({required this.onTap, required this.label});

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: onTap,
      child: Ink(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            const EnsSvg(EnsImages.ic_attachment, width: 24, height: 24),
            const SizedBox(width: 12),
            Expanded(child: Text(label, style: EnsTextStyle.text16_w700_primary)),
          ],
        ),
      ),
    );
  }
}
