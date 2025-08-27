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

class TraitementMaladieScreen extends StatelessWidget {
  static const routeName = '/medical/profil/traitement/maladie';

  const TraitementMaladieScreen();

  @override
  Widget build(BuildContext context) {
    final linkedMaladieDisplayModel = ModalRoute.of(context)!.settings.arguments! as LinkedMaladieDisplayModel;
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Maladies et sujets de santé'),
      body: _Body(linkedMaladieDisplayModel),
    );
  }
}

class _Body extends StatelessWidget {
  final LinkedMaladieDisplayModel linkedMaladieDisplayModel;

  const _Body(this.linkedMaladieDisplayModel);

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _FicheMaladieSvg(),
          Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 24),
            child: Text(linkedMaladieDisplayModel.name, style: EnsTextStyle.text24_w400_normal_title),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _DateSection(linkedMaladieDisplayModel.dateInfo, linkedMaladieDisplayModel.durationInfo),
                  if (linkedMaladieDisplayModel.comment != null && linkedMaladieDisplayModel.comment!.isNotEmpty)
                    _CommentaireSection(linkedMaladieDisplayModel.comment!),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DateSection extends StatelessWidget {
  final String dateInfo;
  final String? duration;

  const _DateSection(this.dateInfo, this.duration);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Date de début', style: EnsTextStyle.text14_w600_normal_body),
        const SizedBox(height: 4),
        Text(dateInfo, style: EnsTextStyle.text14_w400_normal_body),
        if (duration != null && duration != '') _DurationInfo(duration!),
      ],
    );
  }
}

class _DurationInfo extends StatelessWidget {
  final String duration;

  const _DurationInfo(this.duration);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 8),
        const Text('Durée', style: EnsTextStyle.text14_w600_normal_body),
        Text(duration, style: EnsTextStyle.text14_w400_normal_body),
      ],
    );
  }
}

class _CommentaireSection extends StatelessWidget {
  final String commentaire;

  const _CommentaireSection(this.commentaire);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        const Text('Commentaire', style: EnsTextStyle.text14_w600_normal_body),
        const SizedBox(height: 4),
        Text(commentaire, style: EnsTextStyle.text14_w400_normal_body),
      ],
    );
  }
}

class _FicheMaladieSvg extends StatelessWidget {
  const _FicheMaladieSvg();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 24, left: 24, bottom: 16),
      child: EnsSvg(
        EnsImages.mhs_maladie,
        height: 56,
        width: 56,
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
