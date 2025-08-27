/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service_detail.dart';
import 'package:fr_cnamts_ens/catalogue_services/redux/catalogue_service_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/viewmodels/service_details_display_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class CatalogueServicesDetailScreenViewModel extends Equatable {
  final ScreenStatus screenStatus;
  final bool isButtonSynchroDisplay;
  final bool isCatalogueDeServicesSynchroEnabled;
  final ServiceDetailsDisplayModel serviceDisplayModel;
  final void Function(String) loadDetailService;

  const CatalogueServicesDetailScreenViewModel._internal({
    required this.screenStatus,
    required this.isButtonSynchroDisplay,
    required this.isCatalogueDeServicesSynchroEnabled,
    required this.serviceDisplayModel,
    required this.loadDetailService,
  });

  factory CatalogueServicesDetailScreenViewModel.from(Store<EnsState> store, String serviceId) {
    final service = store.state.catalogueServicesState.listeState.services[serviceId]!;
    final detailServiceState = store.state.catalogueServicesState.serviceDetail;
    ScreenStatus fetchStatus = ScreenStatus.LOADING;
    bool isButtonSynchroDisplay = false;

    final detailService = detailServiceState.detailService;

    if (detailServiceState.isErrorOrSuccessWithoutData) {
      fetchStatus = ScreenStatus.ERROR;
    } else if (detailServiceState.isSuccessWithData) {
      fetchStatus = ScreenStatus.SUCCESS;
      isButtonSynchroDisplay = detailService!.urlSynchronisation != null &&
          isCatalogueDeServiceSynchroEnabled &&
          detailService.status != ServiceStatus.PRESERIE;
    }

    return CatalogueServicesDetailScreenViewModel._internal(
      screenStatus: fetchStatus,
      isButtonSynchroDisplay: isButtonSynchroDisplay,
      isCatalogueDeServicesSynchroEnabled: isCatalogueDeServiceSynchroEnabled,
      serviceDisplayModel: ServiceDetailsDisplayModel.from(service: service, serviceDetails: detailService),
      loadDetailService: (serviceId) => store.dispatch(FetchCatalogueServicesDetailAction(serviceId)),
    );
  }

  @override
  List<Object?> get props => [
        screenStatus,
        isButtonSynchroDisplay,
        isCatalogueDeServicesSynchroEnabled,
        serviceDisplayModel,
      ];
}
