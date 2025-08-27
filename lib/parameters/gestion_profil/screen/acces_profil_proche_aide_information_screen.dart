/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/aidants_aides_utils.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/donner_acces_mon_profil_info_screen.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bullet_point.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class AccesProfilProcheAideInformationScreen extends StatelessWidget {
  static const routeName = '/gestion-profil/acces-profil-proche-aide-information';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Accès au profil de mon proche aidé',
      ),
      body: SafeArea(
        child: ScrollviewWithScrollbar(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 16),
              EnsRichText(
                text: TextSpan(
                  text: AidantAideUtils.unavailableAsAidant,
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
              ),
              const SizedBox(height: 24),
              const InfoSection(
                image: EnsImages.blue_check,
                text: 'Cet accès vous permet de :',
              ),
              const SizedBox(height: 8),
              const EnsBulletPoint(
                text:
                    'Consulter, ajouter, modifier ou supprimer des données et documents contenus dans leur profil Mon espace santé ;',
              ),
              const EnsBulletPoint(
                text:
                    'Lire et envoyer un message à un de leur professionnels de santé depuis la messagerie sécurisée ;',
              ),
              const EnsBulletPoint(
                text: 'Recevoir des notifications pour être informé de l\'actualité de leur profil.',
              ),
              const SizedBox(height: 24),
              const InfoSection(
                image: EnsImages.red_cross,
                text: 'Vous ne pouvez pas :',
              ),
              const SizedBox(height: 8),
              const EnsBulletPoint(
                text: 'Gérer le partage de leur profil avec d\'autres proches aidants ;',
              ),
              const EnsBulletPoint(
                text: 'Modifier leurs coordonnées de contacts, leur identifiant ou leur mot de passe ;',
              ),
              const EnsBulletPoint(
                text: 'Demander la clôture de leur profil et la suppression ou le téléchargement des données.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
