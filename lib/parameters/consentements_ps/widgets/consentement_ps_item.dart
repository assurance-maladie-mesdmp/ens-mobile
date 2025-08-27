/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/domain/models/ens_consentement_ps.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class ConsentementPsItem extends StatelessWidget {
  final EnsConsentementPs consentementPs;
  final void Function() onButtonClicked;

  const ConsentementPsItem({super.key, required this.consentementPs, required this.onButtonClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 24, left: 24, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 11,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _LeadingIcon(consentementPs),
                const SizedBox(width: 20),
                Flexible(child: _CenterTextInfo(consentementPs)),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Expanded(flex: 5, child: _TrailingTextButton(consentementPs, onButtonClicked)),
        ],
      ),
    );
  }
}

class _LeadingIcon extends StatelessWidget {
  final EnsConsentementPs consentementPs;

  const _LeadingIcon(this.consentementPs);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.bottomEnd,
      fit: StackFit.passthrough,
      children: [
        EnsSvg(
          consentementPs.type == EnsPsType.INDIVIDUEL ? EnsImages.ic_user_bold : EnsImages.ic_building,
          width: 12,
          height: 16,
        ),
        Positioned(
          bottom: -6,
          right: -8,
          child: EnsSvg(
            consentementPs.isAllowed ? EnsImages.ic_circle_check : EnsImages.ic_off_close,
            width: 12,
            height: 12,
          ),
        ),
      ],
    );
  }
}

class _CenterTextInfo extends StatelessWidget {
  final EnsConsentementPs consentementPs;

  const _CenterTextInfo(this.consentementPs);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${consentementPs.firstName?.capitalizeName() ?? ''}${consentementPs.firstName == null ? '' : ' '}${consentementPs.lastName?.capitalizeName() ?? ''}',
          style: EnsTextStyle.text16_w400_normal_title,
        ),
        const SizedBox(height: 4),
        Text(consentementPs.isAllowed ? 'Autorisé' : 'Bloqué', style: EnsTextStyle.text14_w400_normal_body),
        Text(_buildDateText(), style: EnsTextStyle.text14_w400_normal_body),
        const SizedBox(height: 16),
      ],
    );
  }

  String _buildDateText() =>
      'Depuis le ${consentementPs.startDate.day.toString().padLeft(2, '0')}/${consentementPs.startDate.month.toString().padLeft(2, '0')}/${consentementPs.startDate.year}';
}

class _TrailingTextButton extends StatelessWidget {
  final EnsConsentementPs consentementPs;
  final void Function() onButtonClicked;

  const _TrailingTextButton(this.consentementPs, this.onButtonClicked);

  @override
  Widget build(BuildContext context) {
    if (consentementPs.type == EnsPsType.ORGANISATION) {
      return const SizedBox();
    } else {
      return EnsInkWell(
        customBorder: StadiumBorder(
          side: BorderSide(width: 1, color: consentementPs.isAllowed ? EnsColors.error : EnsColors.primary),
        ),
        onTap: () => onButtonClicked(),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 2),
          decoration: ShapeDecoration(
            shape: StadiumBorder(
              side: BorderSide(width: 1, color: consentementPs.isAllowed ? EnsColors.error : EnsColors.primary),
            ),
          ),
          child: Center(
            child: Text(
              consentementPs.isAllowed ? 'Bloquer' : 'Débloquer',
              style:
                  consentementPs.isAllowed ? EnsTextStyle.text14_w700_error : EnsTextStyle.text14_w700_normal_primary,
            ),
          ),
        ),
      );
    }
  }
}
