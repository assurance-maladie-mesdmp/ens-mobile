/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class AddPsOrEsButton extends StatelessWidget {
  final bool isLoading;
  final void Function() onTap;

  const AddPsOrEsButton({required this.isLoading, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return EnsButton(
      label: 'Ajouter',
      isLoading: isLoading,
      hasFixedSize: true,
      leadingIconPath: EnsImages.ic_user_plus,
      verticalPadding: 12,
      size: EnsButtonSize.SMALL,
      onTap: onTap,
      paddingAround: EdgeInsets.zero,
    );
  }
}
