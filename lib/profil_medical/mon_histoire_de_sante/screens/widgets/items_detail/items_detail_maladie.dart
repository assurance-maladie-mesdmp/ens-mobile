/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/ens_profil_medical_date_utils.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_items_detail_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:redux/redux.dart';

class ItemsDetailMaladie extends StatelessWidget {
  final MonHistoireDeSanteEpisodeMaladie episode;

  const ItemsDetailMaladie({required this.episode});

  @override
  Widget build(BuildContext context) => StoreConnector(
        converter: (Store<EnsState> store) => MonHistoireDeSanteItemsDetailViewModel.from(store),
        builder: (_, MonHistoireDeSanteItemsDetailViewModel vm) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              EnsProfilMedicalDateUtils.getEpisodeSanteTimeInterval(episode),
              style: EnsTextStyle.text14_w600_normal_body,
            ),
            const SizedBox(height: 36),
            if (episode.comment != null && episode.comment!.isNotEmpty) ...[
              const Text('Commentaire', style: EnsTextStyle.text14_w600_normal_body),
              const SizedBox(height: 4),
              Text(episode.comment!, style: EnsTextStyle.text14_w400_normal_body),
            ],
          ],
        ),
      );
}
