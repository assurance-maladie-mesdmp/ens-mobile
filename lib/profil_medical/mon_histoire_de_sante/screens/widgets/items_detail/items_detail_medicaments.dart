/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_item.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_episode_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_items_detail_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/items_detail/acteur_de_sante_widget.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/items_detail/prescripteur.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/edit_traitement_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/traitements_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/edit_traitement_screen_view_model.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_histoire_sante.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/datetime_extension.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class ItemsDetailMedicaments extends StatelessWidget {
  final MonHistoireDeSanteEpisodeMedicaments episode;
  final DisplayableActeurDeSante? prescripteur;
  final DisplayableActeurDeSante? delivreur;

  const ItemsDetailMedicaments({required this.episode, required this.prescripteur, required this.delivreur});

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: EnsColors.light,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Professionnel de santé', style: EnsTextStyle.text14_w600_normal_title),
              const SizedBox(height: 4),
              ActeurDeSanteWidget(
                name: delivreur?.nom,
                idNat: delivreur?.id,
                isPs: delivreur?.isPs ?? true,
              ),
              const EnsDivider(paddingTop: 16, paddingBottom: 16),
              const Text('Date de délivrance', style: EnsTextStyle.text14_w600_normal_title),
              const SizedBox(height: 4),
              Text(
                EnsDateUtils.formatdMMMMyyyy(episode.date),
                style: EnsTextStyle.text14_w400_normal_body,
              ),
              const EnsDivider(paddingBottom: 16, paddingTop: 16),
              ListViewWithScrollbar.separated(
                padding: EdgeInsets.zero,
                separatorBuilder: (_, __) => const EnsDivider(paddingBottom: 16, paddingTop: 16),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: episode.items.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = episode.items[index];
                  return StoreConnector(
                    onInit: (store) {
                      store.dispatch(const FetchTraitementsAction());
                    },
                    converter: (Store<EnsState> store) => MonHistoireDeSanteItemsDetailViewModel.from(
                      store,
                      traitementName: item.nom,
                      traitementDate: item.dateDelivrance,
                    ),
                    builder: (_, MonHistoireDeSanteItemsDetailViewModel vm) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Nom du médicament', style: EnsTextStyle.text14_w600_normal_title),
                            const SizedBox(height: 4),
                            Text(item.capitalizedNom, style: EnsTextStyle.text14_w400_normal_body),
                            if (item.groupeTherapeutique != null && item.groupeTherapeutique!.isNotEmpty)
                              _GroupeTherapeutique(item.groupeTherapeutique!),
                            Prescripteur(prescripteur),
                            const SizedBox(height: 16),
                            const Text('Quantité délivrée', style: EnsTextStyle.text14_w600_normal_title),
                            const SizedBox(height: 4),
                            Text(
                              item.quantiteDeliveree.toStringAsFixed(0),
                              style: EnsTextStyle.text14_w400_normal_body,
                            ),
                            const SizedBox(height: 16),
                            if (vm.traitementInMedicamentStatus != TraitementInMedicamentStatus.ADDED)
                              _AddTraitementButton(itemName: item.nom, itemDeliveryDate: item.dateDelivrance),
                            if (vm.traitementInMedicamentStatus == TraitementInMedicamentStatus.ADDED)
                              const TraitementAlreadyAddedButton(),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      );
}

class _GroupeTherapeutique extends StatelessWidget {
  final String groupeTherapeutique;

  const _GroupeTherapeutique(this.groupeTherapeutique);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 16),
        const Text('Groupe thérapeutique', style: EnsTextStyle.text14_w600_normal_title),
        const SizedBox(height: 4),
        Text(groupeTherapeutique, style: EnsTextStyle.text14_w400_normal_body),
      ],
    );
  }
}

class _AddTraitementButton extends StatelessWidget {
  final String itemName;
  final DateTime itemDeliveryDate;

  const _AddTraitementButton({required this.itemName, required this.itemDeliveryDate});

  @override
  Widget build(BuildContext context) {
    return EnsButtonSecondary(
      label: 'Ajouter ce traitement',
      iconName: EnsImages.ic_plus,
      verticalPadding: 8,
      onTap: () {
        context.tagAction(TagsMonMonHistoireDeSante.tag_592_button_historique_ajout_traitement);

        Navigator.pushNamed(
          context,
          EditTraitementScreen.routeName,
          arguments: EditTraitementScreenArguments(
            launchMode: TraitementFormulaireMode.createTraitementFromMHS(
              TraitementDataFromMhs(
                name: itemName.capitalizeName(),
                startDate: itemDeliveryDate.toEnsDate(),
              ),
            ),
            fromIncitation: false,
          ),
        );
      },
    );
  }
}

class TraitementAlreadyAddedButton extends StatelessWidget {
  const TraitementAlreadyAddedButton();

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          TraitementsScreen.routeName,
          arguments: const TraitementsScreenArguments(),
        );
      },
      child: const EnsPersistentInfoBox.custom(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Déjà ajouté à la rubrique', style: EnsTextStyle.text14_w600_normal_body),
            Text('Traitements', style: EnsTextStyle.text14_w600_normal_primary_underline),
          ],
        ),
      ),
    );
  }
}
