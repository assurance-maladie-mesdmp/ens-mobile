/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/traitement_detail_screen_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class TraitementAllergieScreen extends StatelessWidget {
  static const routeName = '/medical/profil/traitement/allergie';

  const TraitementAllergieScreen();

  @override
  Widget build(BuildContext context) {
    final linkedAllergieDisplayModel = ModalRoute.of(context)!.settings.arguments! as LinkedAllergieDisplayModel;
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Allergies'),
      body: _Body(linkedAllergieDisplayModel),
    );
  }
}

class _Body extends StatelessWidget {
  final LinkedAllergieDisplayModel linkedAllergieDisplayModel;

  const _Body(this.linkedAllergieDisplayModel);

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const _FicheAllergieSvg(),
              const SizedBox(width: 16),
              Text(linkedAllergieDisplayModel.name, style: EnsTextStyle.text24_w400_normal_title),
            ],
          ),
          DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(width: 1, color: EnsColors.neutral200),
                bottom: BorderSide(width: 1, color: EnsColors.neutral200),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: _CommentaireSection(linkedAllergieDisplayModel.comment),
            ),
          ),
        ],
      ),
    );
  }
}

class _CommentaireSection extends StatelessWidget {
  final String? commentaire;

  const _CommentaireSection(this.commentaire);

  @override
  Widget build(BuildContext context) {
    final label = !commentaire.isNullOrEmpty() ? commentaire! : 'Aucun commentaire';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Commentaire', style: EnsTextStyle.text14_w600_normal_title),
        const SizedBox(height: 4),
        Text(label, style: EnsTextStyle.text14_w400_normal_body),
      ],
    );
  }
}

class _FicheAllergieSvg extends StatelessWidget {
  const _FicheAllergieSvg();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 24, left: 24, bottom: 24),
      child: EnsSvg(
        EnsImages.ic_allergie,
        height: 56,
        width: 56,
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
