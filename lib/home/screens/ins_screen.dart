/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aide/widgets/aide_screen.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/home/widgets/viewmodels/ins_screen_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_compte.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class InsScreen extends StatelessWidget {
  static const routeName = '/identite-nationale-de-sante';

  const InsScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Identité Nationale de Santé'),
      body: ScrollviewWithScrollbar(
        padding: const EdgeInsets.fromLTRB(24, 32, 24, 64),
        child: Column(
          children: [
            _Header(),
            StoreConnector<EnsState, InsScreenViewModel>(
              converter: (store) => InsScreenViewModel.from(store),
              distinct: true,
              onInitialBuild: (_) => context.tagAction(TagsCompte.tag_783_compte_identite_nationale_sante),
              builder: (context, vm) => _Content(vm),
            ),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Mon Identité Nationale de Santé (INS) regroupe les informations dont les services médicaux ont besoin pour m’identifier.',
          style: EnsTextStyle.text14_w400_normal_title,
        ),
        const SizedBox(height: 16),
        EnsPersistentInfoBox.custom(
          onTap: () => Navigator.pushNamed(context, AideScreen.routeName),
          child: const EnsRichText(
            text: TextSpan(
              text:
                  'Une information concernant votre identité est incorrecte ? Pour connaitre la démarche à suivre pour la corriger, ',
              style: EnsTextStyle.text14_w600_normal_body,
              children: [
                TextSpan(
                  text: 'consulter l’aide en ligne',
                  style: EnsTextStyle.text14_w700_normal_primary_underline,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _LabelFieldContainer extends StatelessWidget {
  final String label;

  const _LabelFieldContainer({required this.label});

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 1, color: EnsColors.primary),
            bottom: BorderSide(width: 1, color: EnsColors.primary),
          ),
          color: EnsColors.info100,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Text(
          label,
          style: EnsTextStyle.text16_w400_normal_title,
        ),
      );
}

class _ValueFieldContainer extends StatelessWidget {
  final String? value;

  const _ValueFieldContainer({required this.value});

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Text(value!, style: EnsTextStyle.text14_w700_normal_title),
      );
}

class _FieldNirNiaValueContainer extends StatelessWidget {
  final String value;

  const _FieldNirNiaValueContainer({required this.value});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Text(value, style: EnsTextStyle.text14_w700_normal_title),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(width: 1, color: EnsColors.primary),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('NIR', style: EnsTextStyle.text14_w700_normal_title),
                SizedBox(width: 8),
                EnsSvg(EnsImages.ic_circle_check, height: 14, width: 14),
              ],
            ),
          ),
        ],
      );
}

class _CodeInseeContent extends StatelessWidget {
  final String? inseeCode;

  const _CodeInseeContent({this.inseeCode});

  @override
  Widget build(BuildContext context) {
    if (inseeCode != null) {
      return Column(
        children: [
          const _LabelFieldContainer(label: 'Lieu de naissance (code INSEE)'),
          _ValueFieldContainer(value: inseeCode),
        ],
      );
    } else {
      return const SizedBox(height: 0);
    }
  }
}

class _Content extends StatelessWidget {
  final InsScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),
        Container(
          decoration: BoxDecoration(border: Border.all(color: EnsColors.primary)),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              const EnsSvg(EnsImages.logo_ins, height: 48, width: 48),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'IDENTITÉ NATIONALE DE SANTÉ (INS)',
                  style: EnsTextStyle.text16_w700_normal_title,
                  textAlign: TextAlign.center,
                ),
              ),
              const Text(
                'Bien identifié•e, bien soigné•e',
                style: EnsTextStyle.text14_w700_normal_primary,
              ),
              const SizedBox(height: 24),
              const _LabelFieldContainer(label: 'Nom de naissance'),
              _ValueFieldContainer(value: vm.lastName),
              const _LabelFieldContainer(label: 'Prénom(s) de naissance'),
              _ValueFieldContainer(value: vm.firstName),
              const _LabelFieldContainer(label: 'Date de naissance'),
              _ValueFieldContainer(value: vm.birthDate),
              const _LabelFieldContainer(label: 'Sexe'),
              _ValueFieldContainer(value: vm.sex),
              _CodeInseeContent(inseeCode: vm.inseeCode),
              const _LabelFieldContainer(label: 'N° matricule INS'),
              _FieldNirNiaValueContainer(value: vm.ins),
            ],
          ),
        ),
      ],
    );
  }
}
