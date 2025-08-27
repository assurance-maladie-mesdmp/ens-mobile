/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service_detail.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/donnee_partagee.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/service_image.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_get_detail_services.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_get_services.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_get_services_without_synchro.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_services.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class CatalogueServicesRepositoryMapper {
  static List<CatalogueService> toCatalogueServices(
    Iterable<Gget_servicesData_fetchCatalogueServices_services> dataList,
  ) {
    return dataList.map((service) => toCatalogueService(service, service.synchronization)).toList();
  }

  static List<CatalogueService> toCatalogueServicesWithoutSynchro(
    List<Gget_services_without_synchroData_fetchCatalogueServices_services> dataList,
  ) {
    return dataList.map((service) => toCatalogueServiceWithoutSynchro(service)).toList();
  }

  static List<Region> toRegions(Iterable<Gregion> dataList) => dataList
      .map(
        (region) => Region(region.code, region.label),
      )
      .toList();

  static List<Region> toRegionsWithoutSynchro(
    Iterable<Gregion> dataList,
  ) =>
      dataList
          .map(
            (region) => Region(region.code, region.label),
          )
          .toList();

  static List<Thematic> toThematics(Iterable<Gthematics> dataList) => dataList
      .map(
        (thematic) => Thematic(thematic.code, thematic.label),
      )
      .toList()
    ..sort((thematicA, thematicB) => thematicA.label.compareTo(thematicB.label));

  static List<Thematic> toThematicsWithoutSynchro(
    Iterable<Gthematics> dataList,
  ) =>
      dataList
          .map(
            (thematic) => Thematic(thematic.code, thematic.label),
          )
          .toList()
        ..sort((thematicA, thematicB) => thematicA.label.compareTo(thematicB.label));

  static CatalogueService toCatalogueService(
    Gget_servicesData_fetchCatalogueServices_services data,
    Gget_servicesData_fetchCatalogueServices_services_synchronization? infoSynchro,
  ) =>
      CatalogueService(
        id: data.id,
        description: data.description,
        editor: data.editor.name,
        name: data.name,
        logo: data.logo != null
            ? EnsServiceImage(
                file: data.logo!.file ?? '',
                type: data.logo!.type,
              )
            : null,
        isSynchronised: infoSynchro?.isSynchronized ?? false,
        oid: infoSynchro?.oid,
        isAcknowledged: infoSynchro?.isAcknowledged,
        regionsId: data.codesRegions.toList(),
        thematicsId: data.thematics.toList(),
        isAvailable: data.status != GServiceStatusEnum.SUSPENDUE,
        dateLimiteAutorisation: DateTime.tryParse(infoSynchro?.reapprovalLimitDate ?? ''),
        cguUrl: data.cguUrl,
      );

  static CatalogueService toCatalogueServiceWithoutSynchro(
    Gget_services_without_synchroData_fetchCatalogueServices_services data,
  ) =>
      CatalogueService(
        id: data.id,
        description: data.description,
        editor: data.editor.name,
        name: data.name,
        logo: data.logo != null
            ? EnsServiceImage(
                file: data.logo!.file ?? '',
                type: data.logo!.type,
              )
            : null,
        isSynchronised: false,
        oid: null,
        regionsId: data.codesRegions.toList(),
        thematicsId: data.thematics.toList(),
        isAvailable: data.status != GServiceStatusEnum.SUSPENDUE,
        dateLimiteAutorisation: null,
        cguUrl: data.cguUrl,
      );

  static CatalogueServiceDetail toCatalogueServiceDetail(Gget_detail_serviceData_fetchServiceById data) =>
      CatalogueServiceDetail(
        id: data.id,
        name: data.name,
        description: data.description,
        longDescription: data.longDescription,
        editor: data.editor.name,
        logo: data.logo != null ? EnsServiceImage(file: data.logo!.file ?? '', type: data.logo!.type) : null,
        webUrl: data.webUrl,
        androidUrl: data.androidUrl,
        iOsUrl: data.iOsUrl,
        consumerDevice: data.consumerDevice ?? false,
        medicalDevice: data.medicalDevice ?? false,
        economicalModel: _toFormattedEconomicalModel(data.economicalModel),
        screenshots: data.screenshots != null ? _toEnsServiceImageList(data.screenshots!) : [],
        cguUrl: data.cguUrl,
        urlSynchronisation: data.urlSynchronisation,
        donneesPartagees: data.hasEchangeDonnees
            ? data.finalities!.map((donneesEchangees) => _toDonneePartagee(donneesEchangees)).toList()
            : [],
        status: _toServiceStatus(data.status),
      );

  static List<EnsServiceImage> _toEnsServiceImageList(
    Iterable<Gget_detail_serviceData_fetchServiceById_screenshots> gqlServiceImages,
  ) {
    final List<EnsServiceImage> screenshots = [];
    for (final image in gqlServiceImages) {
      final EnsServiceImage screenshot = EnsServiceImage(file: image.file ?? '', type: image.type);
      screenshots.add(screenshot);
    }
    return screenshots;
  }

  static DonneePartagee _toDonneePartagee(Gget_detail_serviceData_fetchServiceById_finalities donneesEchangees) =>
      DonneePartagee(
        label: donneesEchangees.libelle,
        finalite: donneesEchangees.description,
        iconPath: _toLocalImagePath(donneesEchangees.icone),
      );

  static String? _toFormattedEconomicalModel(String? economicalModel) {
    if (economicalModel != null) {
      switch (economicalModel.toUpperCase()) {
        case 'GRATUIT':
          return 'Gratuit';
        case 'PAYANT':
          return 'Payant';
        case 'GRATUIT_ACHATS_INTEGRES':
          return 'Gratuit avec achats intégrés';
        default:
          return null;
      }
    } else {
      return null;
    }
  }

  static String _toLocalImagePath(String path) {
    if (path.contains('measure-WEIGHT.svg')) {
      return EnsImages.poids;
    } else if (path.contains('measure-HEIGHT.svg')) {
      return EnsImages.taille;
    } else if (path.contains('multi.svg')) {
      return EnsImages.multi;
    } else if (path.contains('measure-BODY_MASS_INDEX.svg')) {
      return EnsImages.imc;
    } else if (path.contains('measure-WAIST_CIRCUMFERENCE.svg')) {
      return EnsImages.tour_de_taille;
    } else if (path.contains('measure-BODY_TEMPERATURE.svg')) {
      return EnsImages.temperature;
    } else if (path.contains('measure-GLUCOSE.svg')) {
      return EnsImages.glycemie;
    } else if (path.contains('measure-INTERSTITIAL_GLUCOSE.svg')) {
      return EnsImages.indicateur_gestion_de_glycemie;
    } else if (path.contains('measure-GLYCATED_HEMOGLOBIN.svg')) {
      return EnsImages.hba1c;
    } else if (path.contains('measure-HEMOGLOBIN_GLYCATION_INDEX.svg')) {
      return EnsImages.tgim;
    } else if (path.contains('measure-BLOOD_PRESSURE.svg')) {
      return EnsImages.tension_arterielle;
    } else if (path.contains('measure-HEART_RATE.svg')) {
      return EnsImages.mesures;
    } else if (path.contains('measure-PAIN_SEVERITY.svg')) {
      return EnsImages.niveau_de_douleur;
    } else if (path.contains('measure-STEPS_BY_DAY.svg')) {
      return EnsImages.nombre_de_pas;
    } else if (path.contains('measure-HEAD_CIRCUMFERENCE.svg')) {
      return EnsImages.mesure_crane;
    } else if (path.contains('dossier-medical.svg') || path.contains('documents-de-sante.svg')) {
      return EnsImages.documents_de_sante;
    } else if (path.contains('agenda.svg')) {
      return EnsImages.agenda;
    }
    return EnsImages.mesures_loupe;
  }

  static ServiceStatus _toServiceStatus(GServiceStatusEnum? statusGraphql) {
    switch (statusGraphql) {
      case GServiceStatusEnum.EN_LIGNE:
        return ServiceStatus.EN_LIGNE;
      case GServiceStatusEnum.DEREFERENCEE:
        return ServiceStatus.DEREFERENCEE;
      case GServiceStatusEnum.PRESERIE:
        return ServiceStatus.PRESERIE;
      case GServiceStatusEnum.SUSPENDUE:
        return ServiceStatus.SUSPENDUE;
      case GServiceStatusEnum.HORS_LIGNE:
      case GServiceStatusEnum.gUnknownEnumValue:
      case null:
      default:
        return ServiceStatus.HORS_LIGNE;
    }
  }
}
