/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/carte_vaccinations.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class CarteVaccinationsZoomScreen extends StatelessWidget {
  static const routeName = '/medical/profil/vaccination/carte_vaccinations_zoom';

  @override
  Widget build(BuildContext context) {
    final CarteVaccinations carte = ModalRoute.of(context)!.settings.arguments! as CarteVaccinations;

    return Scaffold(
      appBar: EnsAppBarSubLevel(
        title: carte.title,
      ),
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(80),
        minScale: 0.8,
        maxScale: 4,
        child: EnsModuleContainer.currentInjector.isGuestMode()
            ? Image.asset(
                EnsImages.carte_postale_vaccination_2024,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              )
            : Image.network(
                carte.imageLink,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
      ),
    );
  }
}
