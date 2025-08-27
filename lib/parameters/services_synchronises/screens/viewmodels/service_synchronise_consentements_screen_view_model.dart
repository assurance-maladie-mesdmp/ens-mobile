/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service_consentement.dart';
import 'package:fr_cnamts_ens/catalogue_services/redux/catalogue_service_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services_consentements/redux/catalogue_services_consentements_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class ServiceSynchroniseConsentementsScreenViewModel extends Equatable {
  final AllPurposesStatus status;
  final List<ServiceSynchroniseConsentementsScreenDisplayModel> consentementsDisplayModels;
  final String serviceName;
  final String serviceOid;
  final bool shouldUpdateAutorisationAfterVersioning;
  final void Function() reloadData;
  final void Function() unsynchronizeService;
  final void Function() updateAutorisation;

  const ServiceSynchroniseConsentementsScreenViewModel._internal({
    required this.status,
    required this.consentementsDisplayModels,
    required this.serviceName,
    required this.serviceOid,
    required this.reloadData,
    required this.unsynchronizeService,
    required this.shouldUpdateAutorisationAfterVersioning,
    required this.updateAutorisation,
  });

  factory ServiceSynchroniseConsentementsScreenViewModel.from(
    Store<EnsState> store, {
    required String serviceOid,
    required String serviceName,
    required bool shouldUpdateAutorisationAfterVersioning,
  }) {
    final catalogueServiceConsentementsState = store.state.catalogueServiceConsentementsState;

    return ServiceSynchroniseConsentementsScreenViewModel._internal(
      status: catalogueServiceConsentementsState.status,
      consentementsDisplayModels: _getDisplayModels(catalogueServiceConsentementsState),
      serviceName: serviceName,
      serviceOid: serviceOid,
      shouldUpdateAutorisationAfterVersioning: shouldUpdateAutorisationAfterVersioning,
      reloadData: () => store.dispatch(FetchServiceConsentementsAction(serviceOid)),
      unsynchronizeService: () => store.dispatch(UnsynchronizeServiceAction(serviceOid, serviceName)),
      updateAutorisation: () => store.dispatch(UpdateAutorisationAction(serviceOid)),
    );
  }

  bool hasOnlyOneAcceptedConsent() {
    return consentementsDisplayModels
            .whereType<ServiceSynchroniseConsentementsScreenListItemDisplayModel>()
            .where((element) => element.consentement.accepted)
            .length ==
        1;
  }

  @override
  List<Object?> get props => [
        status,
        consentementsDisplayModels,
        serviceName,
        serviceOid,
        shouldUpdateAutorisationAfterVersioning,
      ];
}

List<ServiceSynchroniseConsentementsScreenDisplayModel> _getDisplayModels(
  CatalogueServiceConsentementsState consentementsState,
) {
  final List<ServiceSynchroniseConsentementsScreenDisplayModel> consentementsDisplayModels = [
    ServiceSynchroniseConsentementsScreenHeaderDisplayModel(),
  ];

  if (consentementsState.status.isSuccess()) {
    consentementsDisplayModels.addAll(
      consentementsState.consentements.map(
        (consentement) => ServiceSynchroniseConsentementsScreenListItemDisplayModel(consentement),
      ),
    );
    consentementsDisplayModels.add(ServiceSynchroniseConsentementsScreenUnsynchronizeButtonDisplayModel());
  }
  return consentementsDisplayModels;
}

abstract class ServiceSynchroniseConsentementsScreenDisplayModel extends Equatable {
  @override
  List<Object?> get props => [];
}

class ServiceSynchroniseConsentementsScreenHeaderDisplayModel
    extends ServiceSynchroniseConsentementsScreenDisplayModel {}

class ServiceSynchroniseConsentementsScreenUnsynchronizeButtonDisplayModel
    extends ServiceSynchroniseConsentementsScreenDisplayModel {}

class ServiceSynchroniseConsentementsScreenListItemDisplayModel
    extends ServiceSynchroniseConsentementsScreenDisplayModel {
  final CatalogueServiceConsentement consentement;

  ServiceSynchroniseConsentementsScreenListItemDisplayModel(this.consentement);

  @override
  List<Object?> get props => [consentement];
}
