/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_episode_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_items_detail_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/items_detail/acteur_de_sante_widget.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/items_detail/prescripteur.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/edit_vaccination_screen.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_histoire_sante.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:redux/redux.dart';

class ItemsDetailVaccin extends StatelessWidget {
  final MonHistoireDeSanteEpisodeVaccin episodeVaccin;
  final DisplayableActeurDeSante? prescripteur;
  final DisplayableActeurDeSante? delivreur;

  const ItemsDetailVaccin({required this.episodeVaccin, required this.prescripteur, required this.delivreur});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: EnsColors.light,
      child: ScrollviewWithScrollbar(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: episodeVaccin.items
              .map(
                (vaccin) => StoreConnector(
                  converter: (Store<EnsState> store) => MonHistoireDeSanteItemsDetailViewModel.from(
                    store,
                    typeCodage: vaccin.typeCodage,
                    codeCIP: vaccin.codeCIP,
                  ),
                  onInit: (store) {
                    store.dispatch(FetchVaccinsAction());
                  },
                  onInitialBuild: (vm) {
                    vm.getVaccinByCodeCip();
                  },
                  builder: (_, MonHistoireDeSanteItemsDetailViewModel vm) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 16),
                        const Text('Professionnel de santé', style: EnsTextStyle.text14_w600_normal_title),
                        const SizedBox(height: 4),
                        ActeurDeSanteWidget(
                          name: prescripteur?.nom,
                          idNat: prescripteur?.id,
                          isPs: prescripteur?.isPs ?? true,
                        ),
                        const EnsDivider(paddingTop: 16, paddingBottom: 16),
                        const Text('Date de délivrance', style: EnsTextStyle.text14_w600_normal_title),
                        const SizedBox(height: 4),
                        Text(
                          EnsDateUtils.formatdMMMMyyyy(episodeVaccin.date),
                          style: EnsTextStyle.text14_w400_normal_body,
                        ),
                        const EnsDivider(paddingBottom: 16, paddingTop: 16),
                        const Text('Nom du vaccin', style: EnsTextStyle.text14_w600_normal_title),
                        const SizedBox(height: 4),
                        Text(vaccin.capitalizedNom, style: EnsTextStyle.text14_w400_normal_body),
                        const EnsDivider(paddingTop: 16, paddingBottom: 16),
                        if (vaccin.vaccineValencia != null) ...[
                          const Text('Valence vaccinale', style: EnsTextStyle.text14_w600_normal_title),
                          const SizedBox(height: 4),
                          Text(vaccin.vaccineValencia!, style: EnsTextStyle.text14_w400_normal_body),
                        ],
                        if (prescripteur != null) ...[
                          const EnsDivider(paddingTop: 16, paddingBottom: 16),
                          Prescripteur(prescripteur),
                        ],
                        const SizedBox(height: 16),
                        _AddVaccinButton(vaccin: vm.vaccinFromCodeCip),
                        const SizedBox(height: 16),
                      ],
                    );
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class _AddVaccinButton extends StatelessWidget {
  final VaccinFromCodeCip? vaccin;

  const _AddVaccinButton({required this.vaccin});

  @override
  Widget build(BuildContext context) {
    return EnsButtonSecondary(
      label: 'Ajouter à mes vaccinations',
      iconName: EnsImages.ic_plus,
      verticalPadding: 8,
      onTap: () {
        context.tagAction(TagsMonMonHistoireDeSante.tag_1302_button_historique_ajout_vaccination);
        Navigator.pushNamed(
          context,
          EditVaccinationScreen.routeName,
          arguments: EditVaccinationScreenArguments(isFromMHS: true, vaccinFromCodeCip: vaccin),
        ).then((value) {
          if (context.mounted) Navigator.of(context).pop();
        });
      },
    );
  }
}
