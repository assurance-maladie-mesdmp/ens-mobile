/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_aidants_aides.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bullet_point.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class DonnerAccesMonProfilInfoScreen extends StatelessWidget {
  static const routeName = '/aidants_aides/donner_acces_mon_profil_info';

  @override
  Widget build(BuildContext context) {
    context.tagAction(TagsAidantsAides.tag_2539_donner_proche_aidant_acces_profil_aide);
    return const Scaffold(
      appBar: EnsAppBarSubLevel(title: 'Je donne à un proche aidant l’accès à mon profil'),
      body: SafeArea(
        child: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const ScrollviewWithScrollbar(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 16),
          EnsSvg(EnsImages.aidant_aide_info),
          SizedBox(height: 16),
          Text(
            'Un proche aidant est une personne de votre entourage vous venant en aide,'
            ' à titre non professionnel, pour tout ou partie de votre vie quotidienne. '
            'Vous pouvez donner accès à votre profil Mon espace santé à vos proches aidants (3 maximum).',
            textAlign: TextAlign.start,
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          SizedBox(height: 24),
          InfoSection(
            image: EnsImages.blue_check,
            text: 'Cet accès permet notamment à votre proche aidant de :',
          ),
          SizedBox(height: 8),
          EnsBulletPoint(
            text: 'Consulter, ajouter, modifier ou supprimer des données et documents '
                'contenus dans votre profil Mon espace santé ;',
          ),
          EnsBulletPoint(
            text: 'Lire et envoyer un message à un de vos professionnels de santé '
                'depuis la messagerie sécurisée ;',
          ),
          EnsBulletPoint(
            text: 'Recevoir des notifications pour être informé de l’actualité de votre profil.',
          ),
          SizedBox(height: 24),
          InfoSection(
            image: EnsImages.red_cross,
            text: 'Votre proche aidant ne pourra pas :',
          ),
          SizedBox(height: 8),
          EnsBulletPoint(
            text: 'Gérer le partage de votre profil avec d\'autres proches aidants ;',
          ),
          EnsBulletPoint(
            text: 'Modifier vos coordonnées de contacts, votre identifiant ou votre mot de passe ;',
          ),
          EnsBulletPoint(
            text: 'Demander la clôture de votre profil et la suppression ou le téléchargement des données.',
          ),
        ],
      ),
    );
  }
}

class InfoSection extends StatelessWidget {
  final String image;
  final String text;

  const InfoSection({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        EnsSvg(image),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            textAlign: TextAlign.start,
            style: EnsTextStyle.text16_w600_normal_title,
          ),
        ),
      ],
    );
  }
}
