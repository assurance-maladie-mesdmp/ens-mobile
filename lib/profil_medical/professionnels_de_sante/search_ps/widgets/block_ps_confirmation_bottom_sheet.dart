/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/block_ps_view_model.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';

enum BlockPsConfirmationBottomSheetFrom {
  BLOCK_PS_LIST,
  BLOCK_PS_DETAIL;

  bool get isFromDetail => this == BLOCK_PS_DETAIL;
}

class BlockPsConfirmationBottomSheet extends StatelessWidget {
  static const POP_VALUE = true;
  final String psIdNat;
  final String psName;
  final BlockPsConfirmationBottomSheetFrom from;

  const BlockPsConfirmationBottomSheet({required this.psIdNat, required this.psName, required this.from});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, BlockPsViewModel>(
      converter: (store) => BlockPsViewModel.from(store),
      distinct: true,
      builder: (_, vm) => ConfirmationBottomSheet(
        title: 'Bloquer ce professionnel de santé ?',
        content: const ConfirmationBottomSheetDefaultTextContent(
          'Le professionnel de santé ne pourra plus accéder à mes Documents, mes rubriques Vaccinations, Histoire de santé, Entourage et volontés du Profil médical.',
        ),
        areButtonsOnSameRow: false,
        positiveButtonLabel: 'Bloquer ce professionnel de santé',
        positiveButtonHandler: () {
          if (from.isFromDetail) {
            Navigator.pop(context);
            Navigator.pop(context, POP_VALUE);
          } else {
            Navigator.pop(context, POP_VALUE);
          }
          vm.blockPs(psIdNat, psName);
        },
      ),
    );
  }
}
