/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';

class CatalogueServicesSelector {
  const CatalogueServicesSelector._();

  static List<CatalogueService> getServicesSynchronises(EnsState state) {
    return state.catalogueServicesState.listeState.services.values.where((service) => service.isSynchronised).toList();
  }
}
