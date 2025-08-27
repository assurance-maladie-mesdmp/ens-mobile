/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_material_app.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:open_store/open_store.dart';

class UpdateAppScreen extends StatelessWidget {
  static const routeName = '/updateScreen';

  static const _IOS_APP_ID = '1589255019';
  static const _ANDROID_APP_ID = 'fr.assurancemaladie.monespacesante';

  @override
  Widget build(BuildContext context) {
    return EnsMaterialApp(
      builder: (context, _) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: EnsColors.light,
          foregroundColor: EnsColors.title,
          title: const Text('Mise à jour', style: EnsTextStyle.text16_title),
          iconTheme: const IconThemeData(color: EnsColors.title),
          centerTitle: true,
        ),
        body: EnsEmptyPage(
          title: 'Mise à jour nécessaire',
          description: 'Une mise à jour de l\'application Mon espace santé est maintenant disponible.',
          customImagePath: EnsImages.avertissement,
          buttonList: EnsEmptyButtonList.withPrimaryButton(
            primaryButtonLabel: 'Mettre à jour l\'application',
            primaryButtonHandler: _goToStore,
          ),
        ),
      ),
    );
  }

  void _goToStore() {
    OpenStore.instance.open(
      appStoreId: _IOS_APP_ID,
      androidAppBundleId: _ANDROID_APP_ID,
    );
  }
}
