/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/screens/detail_droits_access_screen.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bullet_point.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class ConsentementsPsEnSavoirPlusScreen extends StatelessWidget {
  static const routeName = '/mon-compte/acces-professionnels-sante-en-savoir-plus';

  const ConsentementsPsEnSavoirPlusScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'En savoir plus'),
      body: SafeArea(child: _Body()),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: ScrollviewWithScrollbar(
            child: _Content(),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                child: EnsButton(
                  label: 'J\'ai compris',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        children: [
          const Text('Quels accès pour les professionnels de santé ?', style: EnsTextStyle.text20_w400_normal_title),
          const SizedBox(height: 24),
          _ContentRow(
            icon: EnsImages.ic_confidentiality_acces,
            rowContent: EnsRichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text:
                        'Selon leur profession, les professionnels de santé ont le droit d\'accéder à certaines informations. ',
                    style: EnsTextStyle.text14_w400_normal_body,
                  ),
                  TextSpan(
                    text: 'Voir le détail',
                    style: EnsTextStyle.text14_w700_primary_underline,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, DetailDroitsAccesScreen.routeName);
                      },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          _ContentRow(
            icon: EnsImages.ic_star_with_background,
            rowContent: EnsRichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text:
                        'Je peux attribuer le statut d\'administrateur à un ou plusieurs professionnels de ma liste. ',
                    style: EnsTextStyle.text14_w400_normal_body,
                  ),
                  TextSpan(
                    text: 'Qu\'est-ce qu\'un administrateur ?',
                    style: EnsTextStyle.text14_w700_primary_underline,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return const InformationBottomSheet(
                              title: 'Qu\'est-ce qu\'un administrateur ?',
                              description: Column(
                                children: [
                                  Text(
                                    'Vous désignez vous-même un professionnel de santé en tant qu\'administrateur dans Mon espace santé.',
                                    style: EnsTextStyle.text16_w400_normal_body,
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Text(
                                    'En plus d\'accéder aux mêmes informations que les autres professionnels de santé autorisés, un administrateur peut :',
                                    style: EnsTextStyle.text16_w400_normal_body,
                                  ),
                                  EnsBulletPoint(
                                    text: 'voir les documents que j\'ai masqués,',
                                    textStyle: EnsTextStyle.text16_w700_body,
                                  ),
                                  EnsBulletPoint(
                                    text: 'bloquer les accès d\'un professionnel de santé.',
                                    textStyle: EnsTextStyle.text16_w700_body,
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          const _ContentRow(
            icon: EnsImages.ic_signaler,
            rowContent: Text(
              'Je peux aussi bloquer un professionnel pour qu’il n’accède pas à mes informations.',
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ),
        ],
      ),
    );
  }
}

class _ContentRow extends StatelessWidget {
  final String icon;
  final Widget rowContent;

  const _ContentRow({required this.icon, required this.rowContent});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EnsSvg(icon),
        const SizedBox(width: 12),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 4),
            child: rowContent,
          ),
        ),
      ],
    );
  }
}
