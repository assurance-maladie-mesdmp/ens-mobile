/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service_consentement.dart';
import 'package:fr_cnamts_ens/catalogue_services_consentements/redux/catalogue_services_consentements_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class ServiceSynchroniseUpdateConsentementsViewModel extends Equatable {
  final ScreenStatusOnEmpty status;
  final List<ConsentementDisplayModel> consentements;
  final void Function(String oid) getServiceConsentements;
  final void Function(String oid) udpateConsentements;
  final void Function({required String serviceOid, required String serviceName}) unsynchronizeService;

  const ServiceSynchroniseUpdateConsentementsViewModel._({
    required this.status,
    required this.consentements,
    required this.getServiceConsentements,
    required this.udpateConsentements,
    required this.unsynchronizeService,
  });

  factory ServiceSynchroniseUpdateConsentementsViewModel.from(
    Store<EnsState> store, {
    required bool shouldUpdateAutorisationAfterVersioning,
  }) {
    final catalogueServiceConsentementsState = store.state.catalogueServiceConsentementsState;
    final consentementDisplayModels = catalogueServiceConsentementsState.consentements
        .where((consentement) => consentement.accepted)
        .map((consentement) => ConsentementDisplayModel.from(consentement))
        .toList();

    return ServiceSynchroniseUpdateConsentementsViewModel._(
      status: ScreenStatusOnEmpty.getFromAllPurposesStatus(
        dataStatus: catalogueServiceConsentementsState.status,
        dataNullOrEmpty: shouldUpdateAutorisationAfterVersioning,
      ),
      consentements: consentementDisplayModels,
      getServiceConsentements: (oid) {
        store.dispatch(FetchServiceConsentementsAction(oid));
      },
      unsynchronizeService: ({required serviceOid, required serviceName}) {
        store.dispatch(UnsynchronizeServiceAction(serviceOid, serviceName));
      },
      udpateConsentements: (oid) {
        store.dispatch(UpdateConsentementAfterMajoriteAction(oid));
      },
    );
  }

  @override
  List<Object?> get props => [status, consentements];
}

class ConsentementDisplayModel extends Equatable {
  final String titre;
  final String description;
  final List<ServiceConsentementDetail> details;

  const ConsentementDisplayModel._({required this.titre, required this.description, required this.details});

  factory ConsentementDisplayModel.from(CatalogueServiceConsentement serviceConsentement) {
    return ConsentementDisplayModel._(
      titre: serviceConsentement.title.capitalize(),
      description: serviceConsentement.purpose,
      details: serviceConsentement.details,
    );
  }

  @override
  List<Object?> get props => [titre, description, details];
}
