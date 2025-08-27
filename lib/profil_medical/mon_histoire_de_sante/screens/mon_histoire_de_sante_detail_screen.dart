/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_episode_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/items_detail/items_detail_biologie.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/items_detail/items_detail_dispositifs_medicaux.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/items_detail/items_detail_hospitalisation.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/items_detail/items_detail_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/items_detail/items_detail_medicaments.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/items_detail/items_detail_radiologie.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/items_detail/items_detail_soins.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/items_detail/items_detail_vaccin.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/mon_histoire_de_sante_icon.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class MonHistoireDeSanteDetailScreen extends StatelessWidget {
  static const routeName = '/medical/profil/mon-histoire-de-sante/detail';

  @override
  Widget build(BuildContext context) {
    final displayModel = ModalRoute.of(context)!.settings.arguments! as MonHistoireDeSanteDetailEpisodeDisplayModel;

    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Détail',
      ),
      body: _Content(displayModel),
    );
  }
}

class _Content extends StatelessWidget {
  final MonHistoireDeSanteDetailEpisodeDisplayModel displayModel;

  const _Content(this.displayModel);

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _DetailHeader(displayModel),
          const SizedBox(height: 24),
          const EnsDivider(),
          _ItemsDetailWidget(displayModel),
          const EnsDivider(),
          const SizedBox(height: 62),
        ],
      ),
    );
  }
}

class _DetailHeader extends StatelessWidget {
  final MonHistoireDeSanteDetailEpisodeDisplayModel displayModel;

  const _DetailHeader(this.displayModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          MonHistoireDeSanteIcon(category: displayModel.episode.categorie, size: 56),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              displayModel.categorieLabel.isNotEmpty
                  ? displayModel.categorieLabel
                  : 'Professionnel de santé non renseigné',
              style: EnsTextStyle.text24_w400_normal_title,
            ),
          ),
        ],
      ),
    );
  }
}

class _ItemsDetailWidget extends StatelessWidget {
  final MonHistoireDeSanteDetailEpisodeDisplayModel displayModel;

  const _ItemsDetailWidget(this.displayModel);

  @override
  Widget build(BuildContext context) {
    final episode = displayModel.episode;
    switch (episode.categorie) {
      case EpisodeSanteCategorie.BIOLOGIE:
        return ItemsDetailBiologie(
          episode: episode as MonHistoireDeSanteEpisodeBiologie,
          auteur: displayModel.displayableAuteur,
        );
      case EpisodeSanteCategorie.RADIOLOGIE:
        return ItemsDetailRadiologie(
          episode: episode as MonHistoireDeSanteEpisodeRadiologie,
          auteur: displayModel.displayableAuteur,
        );
      case EpisodeSanteCategorie.SOINS:
        return ItemsDetailSoins(
          episode: episode as MonHistoireDeSanteEpisodeSoins,
          auteur: displayModel.displayableAuteur,
        );
      case EpisodeSanteCategorie.MEDICAMENTS:
        return ItemsDetailMedicaments(
          episode: episode as MonHistoireDeSanteEpisodeMedicaments,
          prescripteur: displayModel.displayableAuteur,
          delivreur: displayModel.displayableDelivreur,
        );
      case EpisodeSanteCategorie.HOSPITALISATION:
        return ItemsDetailHospitalisation(
          episode: episode as MonHistoireDeSanteEpisodeHospitalisation,
          auteur: displayModel.displayableAuteur,
        );
      case EpisodeSanteCategorie.DISPOSITIFS_MEDICAUX:
        return ItemsDetailDispositifsMedicaux(
          episode: episode as MonHistoireDeSanteEpisodeDispositifsMedicaux,
          prescripteur: displayModel.displayableAuteur,
        );
      case EpisodeSanteCategorie.VACCIN:
        return ItemsDetailVaccin(
          episodeVaccin: episode as MonHistoireDeSanteEpisodeVaccin,
          prescripteur: displayModel.displayableAuteur,
          delivreur: displayModel.displayableDelivreur,
        );
      case EpisodeSanteCategorie.MALADIE:
        return ItemsDetailMaladie(episode: episode as MonHistoireDeSanteEpisodeMaladie);
      default:
        return const SizedBox();
    }
  }
}
