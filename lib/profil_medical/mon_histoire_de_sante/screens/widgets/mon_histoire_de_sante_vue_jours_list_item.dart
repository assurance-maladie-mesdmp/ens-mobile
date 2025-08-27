/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/maladie_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/displayModel/mon_histoire_de_sante_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/mon_histoire_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_episode_jour_item_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/mon_histoire_de_sante_icon.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/vaccination_detail_screen.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class MonHistoireDeSanteVueJoursListItem extends StatelessWidget {
  final MonHistoireDeSanteDisplayModel displayModel;
  final bool withTopMargin;
  final EnsTag? itemTagClick;
  final FetchProfessionnelSanteDetailFrom from;

  const MonHistoireDeSanteVueJoursListItem({
    super.key,
    required this.displayModel,
    this.withTopMargin = false,
    this.itemTagClick,
    required this.from,
  });

  @override
  Widget build(BuildContext context) {
    switch (displayModel) {
      case MonHistoireDeSanteYearDisplayModel _:
        return _EpisodeItemYear(
          (displayModel as MonHistoireDeSanteYearDisplayModel).year,
          withTopMargin,
        );
      case MonHistoireDeSanteDateDisplayModel _:
        return _EpisodeItemDate(
          (displayModel as MonHistoireDeSanteDateDisplayModel).date,
          withTopMargin,
        );
      case MonHistoireDeSanteEpisodeDisplayModel _:
      default:
        final displayModelEpisode = displayModel as MonHistoireDeSanteEpisodeDisplayModel;
        return StoreConnector<EnsState, MonHistoireDeSanteEpisodeJourItemViewModel>(
          converter: (store) => MonHistoireDeSanteEpisodeJourItemViewModel.from(store, displayModelEpisode),
          distinct: true,
          builder: (_, MonHistoireDeSanteEpisodeJourItemViewModel itemVm) {
            return EpisodeItem(itemTagClick: itemTagClick, itemVm: itemVm, episode: displayModelEpisode.episode);
          },
        );
    }
  }
}

class EpisodeItem extends StatelessWidget {
  final EnsTag? itemTagClick;
  final MonHistoireDeSanteEpisodeJourItemViewModel itemVm;
  final MonHistoireDeSanteEpisode episode;

  const EpisodeItem({
    required this.itemTagClick,
    required this.itemVm,
    required this.episode,
  });

  @override
  Widget build(BuildContext context) {
    return EnsCard(
      borderRadius: 16,
      padding: const EdgeInsets.all(16),
      onTap: () {
        if (itemTagClick != null) {
          context.tagAction(itemTagClick!);
        }
        if (episode.categorie == EpisodeSanteCategorie.VACCINATION ||
            episode.categorie == EpisodeSanteCategorie.VACCIN) {
          InterruptionServiceHelper.showSnackbarOnInterruption(
            context,
            interruptionServiceSnackbarMessage: itemVm.interruptionServiceSnackbarMessage,
            onNotInterrompu: () {
              episode.categorie == EpisodeSanteCategorie.VACCINATION
                  ? Navigator.pushNamed(
                      context,
                      VaccinationDetailScreen.routeName,
                      arguments: (episode as MonHistoireDeSanteEpisodeVaccination).id,
                    )
                  : Navigator.pushNamed(
                      context,
                      MonHistoireDeSanteDetailScreen.routeName,
                      arguments: itemVm.itemDisplayModel,
                    );
            },
          );
        } else if (episode.categorie == EpisodeSanteCategorie.MALADIE) {
          final maladieId = (episode as MonHistoireDeSanteEpisodeMaladie).id;
          Navigator.pushNamed(context, MaladieDetailsScreen.routeName, arguments: maladieId);
        } else {
          Navigator.pushNamed(context, MonHistoireDeSanteDetailScreen.routeName, arguments: itemVm.itemDisplayModel);
        }
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MonHistoireDeSanteIcon(category: itemVm.episode.categorie, size: 40),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (itemVm.title.isNotEmpty) Text(itemVm.title, style: EnsTextStyle.text16_w700_normal_title),
                          if (itemVm.subTitle != null)
                            Text(
                              itemVm.subTitle!,
                              style: EnsTextStyle.text14_w400_normal_title,
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    const EnsSvg(EnsImages.ic_chevron_right, width: 8, height: 12, color: EnsColors.title),
                  ],
                ),
                if (itemVm.maladieFormattedDate != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: _MaladieDate(itemVm.maladieFormattedDate!),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MaladieDate extends StatelessWidget {
  final String date;

  const _MaladieDate(this.date);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const EnsSvg(EnsImages.ic_clock, width: 16, height: 16),
          const SizedBox(width: 4),
          Expanded(child: Text(date, style: EnsTextStyle.text14_w400_normal_body)),
        ],
      );
}

class _EpisodeItemYear extends StatelessWidget {
  final String year;
  final bool withTopMargin;

  const _EpisodeItemYear(this.year, this.withTopMargin);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, withTopMargin ? 16 : 0, 8, 0),
      child: Text(year, style: EnsTextStyle.text24_w400_normal_title),
    );
  }
}

class _EpisodeItemDate extends StatelessWidget {
  final String date;
  final bool withTopMargin;

  const _EpisodeItemDate(this.date, this.withTopMargin);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, withTopMargin ? 16 : 0, 8, 0),
      child: Text(date, style: EnsTextStyle.text14_w400_normal_body),
    );
  }
}
