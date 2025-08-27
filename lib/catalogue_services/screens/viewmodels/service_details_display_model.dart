/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service_detail.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/donnee_partagee.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/service_image.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';

class ServiceDetailsDisplayModel extends Equatable {
  final String id;
  final String? oid;
  final String nom;
  final String? description;
  final String editeur;
  final EnsServiceImage? logo;
  final bool isSynchronised;
  final bool isAvailable;
  final String? dateLimiteAutorisation;
  final bool shouldUpdateAutorisationAfterVersioning;
  final bool shouldUpdateAutorisationAfterMajorite;
  final SynchroDetailsDisplayModel? synchroDetails;

  const ServiceDetailsDisplayModel._({
    required this.id,
    required this.oid,
    required this.nom,
    required this.description,
    required this.editeur,
    required this.logo,
    required this.isSynchronised,
    required this.isAvailable,
    required this.shouldUpdateAutorisationAfterVersioning,
    required this.shouldUpdateAutorisationAfterMajorite,
    required this.dateLimiteAutorisation,
    required this.synchroDetails,
  });

  @override
  List<Object?> get props => [
        id,
        description,
        oid,
        nom,
        editeur,
        logo,
        isSynchronised,
        isAvailable,
        shouldUpdateAutorisationAfterVersioning,
        shouldUpdateAutorisationAfterMajorite,
        dateLimiteAutorisation,
        synchroDetails,
      ];

  factory ServiceDetailsDisplayModel.from({
    required CatalogueService service,
    required CatalogueServiceDetail? serviceDetails,
  }) {
    return ServiceDetailsDisplayModel._(
      id: service.id,
      oid: service.oid,
      nom: service.name,
      description: service.description,
      editeur: service.editor,
      logo: service.logo,
      isSynchronised: service.isSynchronised,
      isAvailable: service.isAvailable,
      shouldUpdateAutorisationAfterVersioning: service.shouldUpdateAutorisationAfterVersioning,
      shouldUpdateAutorisationAfterMajorite: service.shouldUpdateAutorisationAfterMajorite,
      dateLimiteAutorisation: service.dateLimiteAutorisation != null
          ? EnsDateUtils.formatDayPlainTextMonthAndYear(service.dateLimiteAutorisation!)
          : null,
      synchroDetails: serviceDetails != null ? SynchroDetailsDisplayModel.from(serviceDetails) : null,
    );
  }
}

class SynchroDetailsDisplayModel extends Equatable {
  final ServiceStatus status;
  final String? cguUrl;
  final String? webUrl;
  final String? urlSynchronisation;
  final List<DonneePartagee> donneesPartagees;
  final bool canOpen;
  final String? androidPackageName;
  final String? iOsAppId;
  final String? modelEconomique;
  final String? descriptionLongue;
  final List<EnsServiceImage> screenshots;
  final bool isDispositifGrandPublic;
  final bool isDispositifMedical;

  const SynchroDetailsDisplayModel._({
    required this.status,
    required this.cguUrl,
    required this.webUrl,
    required this.urlSynchronisation,
    required this.donneesPartagees,
    required this.canOpen,
    required this.androidPackageName,
    required this.iOsAppId,
    required this.modelEconomique,
    required this.descriptionLongue,
    required this.screenshots,
    required this.isDispositifGrandPublic,
    required this.isDispositifMedical,
  });

  factory SynchroDetailsDisplayModel.from(CatalogueServiceDetail catalogueServiceDetails) {
    return SynchroDetailsDisplayModel._(
      status: catalogueServiceDetails.status,
      cguUrl: catalogueServiceDetails.cguUrl,
      webUrl: catalogueServiceDetails.webUrl,
      urlSynchronisation: catalogueServiceDetails.urlSynchronisation,
      donneesPartagees: catalogueServiceDetails.donneesPartagees,
      canOpen: catalogueServiceDetails.canOpen,
      androidPackageName: catalogueServiceDetails.androidPackageName,
      iOsAppId: catalogueServiceDetails.iOsAppId,
      modelEconomique: catalogueServiceDetails.economicalModel,
      descriptionLongue: catalogueServiceDetails.longDescription,
      screenshots: catalogueServiceDetails.screenshots,
      isDispositifGrandPublic: catalogueServiceDetails.consumerDevice,
      isDispositifMedical: catalogueServiceDetails.medicalDevice,
    );
  }

  @override
  List<Object?> get props => [
        status,
        cguUrl,
        webUrl,
        urlSynchronisation,
        donneesPartagees,
        canOpen,
        androidPackageName,
        iOsAppId,
        modelEconomique,
        descriptionLongue,
        screenshots,
        isDispositifGrandPublic,
        isDispositifMedical,
      ];
}
