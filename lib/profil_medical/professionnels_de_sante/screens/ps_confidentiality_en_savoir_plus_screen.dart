/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class PsConfidentialityEnSavoirPlusScreen extends StatelessWidget {
  static const routeName = '/medical/profil/professionnels-de-sante/detail/en-savoir-plus';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'En savoir plus'),
      floatingActionButton: EnsFloatingButton(
        buttonLabel: 'J\'ai compris',
        expanded: true,
        onTap: () => Navigator.pop(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: const SafeArea(
        child: ScrollviewWithScrollbar(
          padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
          child: Column(
            children: [
              Text(
                'Comment autoriser les professionnels à consulter mes informations de santé ?',
                style: EnsTextStyle.text20_w400_normal_title,
              ),
              SizedBox(height: 24),
              _PsConfidentialityEnSavoirPlusItem(
                icon: EnsImages.ic_confidentiality_chat,
                title: EnsRichText(
                  text: TextSpan(
                    style: EnsTextStyle.text14_w400_normal_body,
                    children: [
                      TextSpan(
                        text:
                            'Pour partager vos informations de santé avec un professionnel, vous devez en discuter avec lui et ',
                      ),
                      TextSpan(
                        text: 'donner votre accord oral. ',
                        style: EnsTextStyle.text14_w700_normal_body,
                      ),
                      TextSpan(
                        text:
                            'Il enregistrera alors votre accord dans son logiciel et pourra consulter vos informations.',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
              _PsConfidentialityEnSavoirPlusItem(
                icon: EnsImages.ic_confidentiality_message,
                title: EnsRichText(
                  text: TextSpan(
                    style: EnsTextStyle.text14_w400_normal_body,
                    children: [
                      TextSpan(text: 'Dans tous les cas, vous recevrez une '),
                      TextSpan(
                        text: 'notification par mail à son premier accès.',
                        style: EnsTextStyle.text14_w700_normal_body,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
              _PsConfidentialityEnSavoirPlusItem(
                icon: EnsImages.ic_confidentiality_lock,
                title: EnsRichText(
                  text: TextSpan(
                    style: EnsTextStyle.text14_w400_normal_body,
                    children: [
                      TextSpan(text: 'Vous pouvez à tout moment '),
                      TextSpan(
                        text: 'bloquer l\'accès d\'un professionnel de santé ',
                        style: EnsTextStyle.text14_w700_normal_body,
                      ),
                      TextSpan(text: 'si vous ne souhaitez plus qu\'il puisse consulter vos informations.'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PsConfidentialityEnSavoirPlusItem extends StatelessWidget {
  final String icon;
  final EnsRichText title;

  const _PsConfidentialityEnSavoirPlusItem({
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EnsSvg(icon),
        const SizedBox(width: 16),
        Expanded(child: title),
      ],
    );
  }
}
