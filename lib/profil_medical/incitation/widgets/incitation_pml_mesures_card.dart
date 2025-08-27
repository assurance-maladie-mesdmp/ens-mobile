/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/viewmodels/mesures_card_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/widgets/incitation_pml_card.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/ens_mesure_form_bottom_sheet.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/mesure_icon.dart';

class IncitationPmlMesuresCard extends StatelessWidget {
  final EnsMesureType mesureType;

  const IncitationPmlMesuresCard({required this.mesureType});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, MesuresCardViewModel>(
      converter: (store) => MesuresCardViewModel.from(store, mesureType),
      distinct: true,
      builder: (context, vm) => IncitationPmlCard(
        title: mesureType.label,
        assetWidget: MesureIcon(mesureType, height: 64, width: 64),
        isCompleted: vm.isChecked,
        onTap: () {
          vm.tagsMesures(context, mesureType);
          showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext _) => EnsMesureFormBottomSheet(mesureType: mesureType, fromIncitation: true),
          );
        },
      ),
    );
  }
}
