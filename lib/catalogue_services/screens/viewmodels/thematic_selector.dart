/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service.dart';
import 'package:fr_cnamts_ens/catalogue_services/redux/catalogue_service_redux.dart';

class ThematicSelector {
  const ThematicSelector._();

  static List<Thematic> getThematics(List<String> thematicsIds, CatalogueServicesState catalogueServicesState) {
    return thematicsIds
        .map((thematicsId) => catalogueServicesState.listeState.thematics[thematicsId])
        .whereType<Thematic>()
        .toList();
  }

  static List<Thematic> getAvailableThematics(CatalogueServicesState catalogueServicesState) {
    final services = catalogueServicesState.listeState.services;
    final allThematicsInServices =
        services.values.map((service) => service.thematicsId).expand((list) => list).toList();
    final unduplicatedThematicsInServices = Set.of(allThematicsInServices).toList();
    final availableThematics = catalogueServicesState.listeState.thematics.values.toList();
    return availableThematics.where((thematic) => unduplicatedThematicsInServices.contains(thematic.id)).toList();
  }
}
