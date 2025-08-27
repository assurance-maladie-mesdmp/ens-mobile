/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/catalogue_services_detail_screen.dart';
import 'package:fr_cnamts_ens/catalogue_services/widgets/logo_or_square.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_information_mark_label.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';

class CatalogueServiceItem extends StatelessWidget {
  final CatalogueService service;

  const CatalogueServiceItem({required this.service});

  @override
  Widget build(BuildContext context) {
    final isCatalogueDeServicesSynchroEnabled = isCatalogueDeServiceSynchroEnabled;
    return EnsInkWell(
      color: EnsColors.light,
      onTap: () {
        Navigator.pushNamed(
          context,
          CatalogueServicesDetailScreen.routeName,
          arguments: service.id,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LogoOrSquare(logo: service.logo),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(service.name, style: EnsTextStyle.text16_w700_normal_title),
                  const SizedBox(height: 4),
                  Text(
                    service.description!,
                    style: EnsTextStyle.text14_w400_normal_body,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                  if (!service.isAvailable)
                    const EnsInformationMarkLabel(title: 'Service indisponible')
                  else if (isCatalogueDeServicesSynchroEnabled && service.shouldUpdateAutorisation)
                    const EnsInformationMarkLabel(title: 'Mise à jour des autorisations'),
                  if (isCatalogueDeServicesSynchroEnabled && service.isSynchronised) const _SynchronizationMark(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 4, left: 16, right: 16),
              child: EnsSvg(EnsImages.ic_chevron_right, height: 12, width: 8, color: EnsColors.body),
            ),
          ],
        ),
      ),
    );
  }
}

class _SynchronizationMark extends StatelessWidget {
  const _SynchronizationMark();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 12),
      child: Row(
        children: [
          EnsSvg(EnsImages.ic_circle_check, width: 24, height: 24),
          SizedBox(width: 8),
          Text('Synchronisé', style: EnsTextStyle.text14_w600_normal_success),
        ],
      ),
    );
  }
}
