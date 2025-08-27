/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:url_launcher/url_launcher.dart';

class NumeroSupportPictoWithCall extends StatelessWidget {
  const NumeroSupportPictoWithCall();

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: _openPhoneApp,
      // todo: !!a11y : ce Svg casse visiblement les tests a11y!!
      child: const EnsSvg(EnsImages.appel_3422, height: 40, semanticsLabel: 'Appeler le support technique au 3422'),
    );
  }

  Future<void> _openPhoneApp() async {
    final Uri phoneUri = Uri(scheme: 'tel', path: '3422');
    await canLaunchUrl(phoneUri) ? launchUrl(phoneUri) : throw 'Could not launch $phoneUri';
  }
}
