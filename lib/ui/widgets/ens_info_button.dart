/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EnsInfoButton extends StatelessWidget {
  final void Function() onTap;

  const EnsInfoButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Semantics(
        label: Platform.isAndroid ? 'Information' : '', // iOS Voice Over use the tooltip / Android TalkBack not.
        child: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: IconButton(
            onPressed: onTap,
            tooltip: 'Information',
            icon: const EnsSvg(EnsImages.ic_info_circle_outlined),
            splashRadius: 28,
          ),
        ),
      ),
    );
  }
}
