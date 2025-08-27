/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/maladie_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/displayModel/mon_histoire_de_sante_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/displayModel/mon_histoire_de_sante_vue_mois_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/mon_histoire_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_category.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_episode_mois_item_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/mon_histoire_de_sante_icon.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/vaccination_detail_screen.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_dropdown_list.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class MonHistoireDeSanteVueMoisListItem extends StatelessWidget {
  final MonHistoireDeSanteVueMoisDisplayModel displayModel;
  final bool withTopMargin;
  final bool isMaladieInProgress;

  const MonHistoireDeSanteVueMoisListItem({
    super.key,
    required this.displayModel,
    this.withTopMargin = false,
    this.isMaladieInProgress = false,
  });

  @override
  Widget build(BuildContext context) {
    switch (displayModel) {
      case MonHistoireDeSanteVueMoisMonthDisplayModel _:
        return _LabelMois(
          (displayModel as MonHistoireDeSanteVueMoisMonthDisplayModel).monthLabel,
          withTopMargin,
        );
      case MonHistoireDeSanteVueMoisCategoryDisplayModel _:
      default:
        final displayModelCategory = displayModel as MonHistoireDeSanteVueMoisCategoryDisplayModel;
        final category = displayModelCategory.category;
        final currentMaladie = category == EpisodeSanteCategorie.MALADIE &&
            (displayModelCategory.items[0].episode as MonHistoireDeSanteEpisodeMaladie).endDate == null;

        return EnsDropdownList(
          headerColor: category.color,
          circleColor: Colors.white,
          label: category.getLabel(currentMaladie: currentMaladie),
          leading: MonHistoireDeSanteIcon(category: category, size: 40),
          items: displayModelCategory.items
              .map(
                (displayModel) => MonHistoireDeSanteDropdownListItem(
                  displayModel: displayModel,
                  isMaladieInProgress: isMaladieInProgress,
                ),
              )
              .toList(),
        );
    }
  }
}

class MonHistoireDeSanteDropdownListItem extends StatelessWidget {
  final MonHistoireDeSanteEpisodeDisplayModel displayModel;
  final bool isMaladieInProgress;

  const MonHistoireDeSanteDropdownListItem({required this.displayModel, required this.isMaladieInProgress});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, MonHistoireDeSanteEpisodeMoisItemViewModel>(
      converter: (store) => MonHistoireDeSanteEpisodeMoisItemViewModel.from(store, displayModel),
      distinct: true,
      builder: (_, vm) {
        return Content(vm: vm, isMaladieInProgress: isMaladieInProgress);
      },
    );
  }
}

class Content extends StatelessWidget {
  final MonHistoireDeSanteEpisodeMoisItemViewModel vm;
  final bool isMaladieInProgress;

  const Content({required this.vm, required this.isMaladieInProgress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: EnsCard(
        padding: const EdgeInsets.only(left: 16, bottom: 24, top: 24, right: 24),
        hasBoxShadow: false,
        backgroundColor: EnsColors.neutral100,
        onTap: () {
          if (vm.episode.categorie == EpisodeSanteCategorie.VACCINATION ||
              vm.episode.categorie == EpisodeSanteCategorie.VACCIN) {
            InterruptionServiceHelper.showSnackbarOnInterruption(
              context,
              interruptionServiceSnackbarMessage: vm.interruptionServiceSnackbarMessage,
              onNotInterrompu: () {
                vm.episode.categorie == EpisodeSanteCategorie.VACCINATION
                    ? Navigator.pushNamed(
                        context,
                        VaccinationDetailScreen.routeName,
                        arguments: (vm.episode as MonHistoireDeSanteEpisodeVaccination).id,
                      )
                    : Navigator.pushNamed(
                        context,
                        MonHistoireDeSanteDetailScreen.routeName,
                        arguments: vm.itemDisplayModel,
                      );
              },
            );
          } else if (vm.episode.categorie == EpisodeSanteCategorie.MALADIE) {
            final maladieId = (vm.episode as MonHistoireDeSanteEpisodeMaladie).id;
            Navigator.pushNamed(context, MaladieDetailsScreen.routeName, arguments: maladieId);
          } else {
            Navigator.pushNamed(context, MonHistoireDeSanteDetailScreen.routeName, arguments: vm.itemDisplayModel);
          }
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isMaladieInProgress)
                    _EpisodeItemMaladieEnCours(
                      vm.itemDisplayModel.categorieLabel,
                      vm.formattedDate,
                    )
                  else
                    _EpisodeMoisItemWidget(vm),
                ],
              ),
            ),
            const SizedBox(width: 16),
            const EnsSvg(EnsImages.ic_chevron_right, width: 8, height: 12, color: EnsColors.title),
          ],
        ),
      ),
    );
  }
}

class _EpisodeItemMaladieEnCours extends StatelessWidget {
  final String categoryTitle;
  final String dateLabel;

  const _EpisodeItemMaladieEnCours(this.categoryTitle, this.dateLabel);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(categoryTitle, style: EnsTextStyle.text14_w700_normal_title),
          Text(dateLabel, style: EnsTextStyle.text14_w400_normal_title),
        ],
      );
}

class _EpisodeMoisItemWidget extends StatelessWidget {
  final MonHistoireDeSanteEpisodeMoisItemViewModel vm;

  const _EpisodeMoisItemWidget(this.vm);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            vm.formattedDate,
            style: EnsTextStyle.text14_w400_normal_title,
          ),
          if (vm.title != null)
            Text(
              vm.title!,
              style: EnsTextStyle.text14_w700_normal_title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          if (vm.subtitle != null)
            Text(
              vm.subtitle!,
              style: vm.isEpisodeDeMaladie()
                  ? EnsTextStyle.text14_w700_normal_title
                  : EnsTextStyle.text14_w400_normal_title,
            ),
        ],
      );
}

class _LabelMois extends StatelessWidget {
  final String monthLabel;
  final bool withTopMargin;

  const _LabelMois(this.monthLabel, this.withTopMargin);

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.fromLTRB(0, withTopMargin ? 16 : 0, 8, 0),
        child: Text(monthLabel, style: EnsTextStyle.text24_w400_normal_title),
      );
}
