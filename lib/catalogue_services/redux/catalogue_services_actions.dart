/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'catalogue_service_redux.dart';

class FetchCatalogueServicesAction {
  final bool force;

  FetchCatalogueServicesAction({this.force = false});
}

class ReinitialiseCatalogueServiceFiltersAction {}

class _ProcessFetchCatalogueServicesSuccessAction {
  final List<CatalogueService> services;

  _ProcessFetchCatalogueServicesSuccessAction(this.services);
}

class _ProcessFetchCatalogueServicesErrorAction {}

class _ProcessFetchRegionSuccessAction {
  final List<Region> regions;

  _ProcessFetchRegionSuccessAction(this.regions);
}

class _ProcessFetchThematicSuccessAction {
  final List<Thematic> thematics;

  _ProcessFetchThematicSuccessAction(this.thematics);
}

class UpdateCatalogueServicesRegionFiltersAction {
  final List<String> ids;

  const UpdateCatalogueServicesRegionFiltersAction(this.ids);
}

class UpdateCatalogueServicesThematicFiltersAction {
  final List<String> ids;

  const UpdateCatalogueServicesThematicFiltersAction(this.ids);
}

class FetchCatalogueServicesDetailAction {
  final String serviceId;

  FetchCatalogueServicesDetailAction(this.serviceId);
}

class _ProcessFetchCatalogueServicesDetailSuccessAction {
  final CatalogueServiceDetail serviceDetail;

  _ProcessFetchCatalogueServicesDetailSuccessAction(this.serviceDetail);
}

class _ProcessFetchCatalogueServicesDetailErrorAction {}

class UpdateAutorisationAction {
  final String serviceOid;

  UpdateAutorisationAction(this.serviceOid);
}

class _ProcessUpdateAutorisationSuccessAction {
  final String serviceOid;

  _ProcessUpdateAutorisationSuccessAction(this.serviceOid);
}
