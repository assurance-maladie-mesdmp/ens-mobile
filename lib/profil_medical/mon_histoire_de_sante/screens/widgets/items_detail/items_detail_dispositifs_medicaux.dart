/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_episode_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_items_detail_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/items_detail/acteur_de_sante_widget.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:redux/redux.dart';

class ItemsDetailDispositifsMedicaux extends StatelessWidget {
  final MonHistoireDeSanteEpisodeDispositifsMedicaux episode;
  final DisplayableActeurDeSante? prescripteur;

  const ItemsDetailDispositifsMedicaux({required this.episode, required this.prescripteur});

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: EnsColors.light,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ListViewWithScrollbar.separated(
            separatorBuilder: (_, __) => const EnsDivider(paddingTop: 16, paddingBottom: 16),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: episode.items.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final item = episode.items[index];
              return StoreConnector(
                converter: (Store<EnsState> store) => MonHistoireDeSanteItemsDetailViewModel.from(
                  store,
                ),
                builder: (_, MonHistoireDeSanteItemsDetailViewModel vm) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (index == 0) ...[
                      const Text('Professionnel de santé', style: EnsTextStyle.text14_w600_normal_title),
                      const SizedBox(height: 4),
                      ActeurDeSanteWidget(
                        name: prescripteur?.nom,
                        idNat: prescripteur?.id,
                        isPs: prescripteur?.isPs ?? true,
                      ),
                      const EnsDivider(paddingTop: 16, paddingBottom: 16),
                      const Text('Date de prescription', style: EnsTextStyle.text14_w600_normal_title),
                      const SizedBox(height: 4),
                      Text(
                        EnsDateUtils.formatDayPlainTextMonthAndYear(item.dateDelivrance),
                        style: EnsTextStyle.text14_w400_normal_body,
                      ),
                      const EnsDivider(paddingTop: 16, paddingBottom: 16),
                    ],
                    const Text('Dispositif médical', style: EnsTextStyle.text14_w600_normal_title),
                    const SizedBox(height: 4),
                    Text(item.capitalizedNom, style: EnsTextStyle.text14_w400_normal_body),
                    const SizedBox(height: 16),
                    const Text('Quantité délivrée', style: EnsTextStyle.text14_w600_normal_title),
                    const SizedBox(height: 4),
                    Text(item.quantiteDelivree.toStringAsFixed(0), style: EnsTextStyle.text14_w400_normal_body),
                  ],
                ),
              );
            },
          ),
        ),
      );
}
