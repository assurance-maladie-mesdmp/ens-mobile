/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:lottie/lottie.dart';

class DocumentAttachmentLoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/anims/upload_attachment.json', fit: BoxFit.contain, width: 160, height: 160),
          const SizedBox(height: 80),
          const Text('Chargement en cours\u2026', style: EnsTextStyle.text14_w700_normal_primary),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
