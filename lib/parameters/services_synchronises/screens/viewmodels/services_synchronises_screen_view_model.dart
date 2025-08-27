/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/service_image.dart';
import 'package:fr_cnamts_ens/catalogue_services/redux/catalogue_service_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services/redux/catalogue_services_selector.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class ServicesSynchronisesScreenViewModel extends Equatable {
  final ScreenStatusOnEmpty status;
  final ProfilType profilType;
  final String mainFirstName;
  final List<ServiceSynchroniseDisplayModel> servicesSynchronisesDisplayModels;
  final void Function() reloadData;

  const ServicesSynchronisesScreenViewModel._internal({
    required this.status,
    required this.profilType,
    required this.mainFirstName,
    required this.servicesSynchronisesDisplayModels,
    required this.reloadData,
  });

  factory ServicesSynchronisesScreenViewModel.from(Store<EnsState> store) {
    final catalogueServicesListState = store.state.catalogueServicesState.listeState;
    final servicesSynchronises = CatalogueServicesSelector.getServicesSynchronises(store.state);
    final status = ScreenStatusOnEmpty.getFromAllPurposesStatus(
      dataStatus: catalogueServicesListState.status,
      dataNullOrEmpty: servicesSynchronises.isEmpty,
    );
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final mainFirstName = store.state.userState.currentProfile.mainFirstName;

    return ServicesSynchronisesScreenViewModel._internal(
      status: status,
      profilType: profilType,
      mainFirstName: mainFirstName,
      servicesSynchronisesDisplayModels: servicesSynchronises
          .map(
            (service) => ServiceSynchroniseDisplayModel.from(service),
          )
          .toList(),
      reloadData: () => store.dispatch(FetchCatalogueServicesAction(force: true)),
    );
  }

  @override
  List<Object?> get props => [profilType, mainFirstName, status, servicesSynchronisesDisplayModels];
}

class ServiceSynchroniseDisplayModel extends Equatable {
  final String? oid;
  final String nom;
  final bool isAvailable;
  final EnsServiceImage? logo;
  final bool shouldUpdateAutorisationAfterVersioning;
  final bool shouldUpdateAutorisationAfterMajorite;
  final String? dateLimiteAutorisation;
  final String? cguUrl;

  const ServiceSynchroniseDisplayModel._({
    required this.oid,
    required this.nom,
    required this.isAvailable,
    required this.logo,
    required this.shouldUpdateAutorisationAfterVersioning,
    required this.shouldUpdateAutorisationAfterMajorite,
    required this.dateLimiteAutorisation,
    required this.cguUrl,
  });

  factory ServiceSynchroniseDisplayModel.from(CatalogueService service) {
    return ServiceSynchroniseDisplayModel._(
      oid: service.oid,
      nom: service.name,
      isAvailable: service.isAvailable,
      logo: service.logo,
      shouldUpdateAutorisationAfterVersioning: service.shouldUpdateAutorisationAfterVersioning,
      shouldUpdateAutorisationAfterMajorite: service.shouldUpdateAutorisationAfterMajorite,
      dateLimiteAutorisation: service.dateLimiteAutorisation != null
          ? EnsDateUtils.formatDayPlainTextMonthAndYear(service.dateLimiteAutorisation!)
          : null,
      cguUrl: service.cguUrl,
    );
  }

  @override
  List<Object?> get props => [
        oid,
        nom,
        isAvailable,
        logo,
        shouldUpdateAutorisationAfterVersioning,
        shouldUpdateAutorisationAfterMajorite,
        dateLimiteAutorisation,
        cguUrl,
      ];
}
