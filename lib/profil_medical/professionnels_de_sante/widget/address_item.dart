/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/acteur_de_sante_tag_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/called_es_or_ps_detail_screen_from.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

class AddressItem extends StatelessWidget {
  final ActeurDeSanteAdresse address;
  final bool active;
  final CalledESorPSDetailScreenFrom fromScreen;
  final bool isEs;

  const AddressItem({required this.address, required this.active, required this.fromScreen, required this.isEs});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 4),
            child: Row(
              children: [
                const EnsSvg(EnsImages.ic_location),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    address.addressName.toString(),
                    style: EnsTextStyle.text14_w600_normal_title,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 36),
              Flexible(
                child: EnsInkWell(
                  onTap: () {
                    ActeurDeSanteTagHelper.tagAddressClicked(context, fromScreen, isEs);
                    MapsLauncher.launchQuery(address.formattedAddress);
                  },
                  child: Text(
                    active ? address.formattedAddress : address.formattedNonActiveAdresse,
                    style: EnsTextStyle.text14_w700_primary_underline,
                  ),
                ),
              ),
            ],
          ),
          if (address.phoneNumber != null && active)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  const EnsSvg(EnsImages.ic_phone),
                  const SizedBox(width: 12),
                  EnsInkWell(
                    onTap: () {
                      ActeurDeSanteTagHelper.tagPhoneClicked(context, fromScreen, isEs);
                      _openPhoneApp(address.phoneNumber!);
                    },
                    child: Text(
                      address.formattedPhoneNumber,
                      style: EnsTextStyle.text14_w700_primary_underline,
                    ),
                  ),
                ],
              ),
            )
          else
            const SizedBox(height: 16),
        ],
      ),
    );
  }

  Future<void> _openPhoneApp(String phone) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phone);
    await canLaunchUrl(phoneUri) ? launchUrl(phoneUri) : throw 'Could not launch $phoneUri';
  }
}
