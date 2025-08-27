/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/cupertino.dart';

void showRefusedAccessToPictureLibraryDialog(BuildContext context) {
  if (Platform.isIOS) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Autoriser l\'accès aux photos'),
          content: const Text('Pour ajouter une photo, veuillez autoriser l\'accès dans vos paramètres'),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () => AppSettings.openAppSettings(),
              child: const Text('Accéder aux paramètres'),
            ),
            CupertinoDialogAction(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Annuler'),
            ),
          ],
        );
      },
    );
  }
}
