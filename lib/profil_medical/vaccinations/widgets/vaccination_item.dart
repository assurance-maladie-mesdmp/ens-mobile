/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccination.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/vaccination_detail_screen.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';

class VaccinationItem extends StatelessWidget {
  final EnsVaccination vaccination;
  final void Function()? onTap;

  const VaccinationItem({
    required this.vaccination,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: EnsColors.light,
      onTap: () {
        onTap?.call();
        Navigator.pushNamed(context, VaccinationDetailScreen.routeName, arguments: vaccination.id);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  _Title(vaccination),
                  const SizedBox(height: 8),
                  _TextDescription(EnsDateUtils.formatddmmyyyy(vaccination.effectiveTime)),
                  const SizedBox(height: 4),
                  _TextDescription(vaccination.name),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            _ArrowImage(),
          ],
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final EnsVaccination vaccination;

  const _Title(this.vaccination);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!vaccination.authoredByPatient)
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: EnsSvg(EnsImages.ic_shield),
          ),
        Expanded(
          child: Text(
            vaccination.refId != null ? vaccination.pathologies : 'Maladie non disponible',
            style: EnsTextStyle.text16_w700_normal_title,
          ),
        ),
      ],
    );
  }
}

class _TextDescription extends StatelessWidget {
  final String text;

  const _TextDescription(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: EnsTextStyle.text14_w400_normal_body);
  }
}

class _ArrowImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: EnsSvg(
        EnsImages.ic_chevron_right,
        height: 12,
        width: 8,
        alignment: Alignment.centerRight,
        color: EnsColors.body,
      ),
    );
  }
}
