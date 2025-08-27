/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/donnee_partagee.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/service_image.dart';

class CatalogueServiceDetail extends Equatable {
  final String id;
  final String name;
  final String? description;
  final String? longDescription;
  final String editor;
  final EnsServiceImage? logo;
  final String? webUrl;
  final String? androidUrl;
  final String? iOsUrl;
  final bool consumerDevice;
  final bool medicalDevice;
  final String? economicalModel;
  final List<EnsServiceImage> screenshots;
  final String? cguUrl;
  final String? urlSynchronisation;
  final List<DonneePartagee> donneesPartagees;
  final ServiceStatus status;

  const CatalogueServiceDetail({
    required this.id,
    required this.name,
    this.description,
    this.longDescription,
    required this.editor,
    this.logo,
    this.webUrl,
    this.androidUrl,
    this.iOsUrl,
    required this.consumerDevice,
    required this.medicalDevice,
    this.economicalModel,
    required this.screenshots,
    this.cguUrl,
    this.urlSynchronisation,
    required this.donneesPartagees,
    required this.status,
  });

  String? get androidPackageName {
    final url = androidUrl;
    if (url != null) {
      return Uri.parse(url).queryParameters['id'];
    }
    return null;
  }

  String? get iOsAppId {
    final url = iOsUrl;
    if (url != null) {
      return Uri.parse(url).pathSegments.lastWhereOrNull((path) => path.contains('id'))?.substring(2);
    }
    return null;
  }

  bool get canOpen {
    if (Platform.isAndroid) {
      return androidPackageName != null;
    } else {
      return iOsAppId != null;
    }
  }

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        longDescription,
        editor,
        logo,
        webUrl,
        androidUrl,
        iOsUrl,
        consumerDevice,
        medicalDevice,
        economicalModel,
        screenshots,
        cguUrl,
        urlSynchronisation,
        donneesPartagees,
        status,
      ];
}

enum ServiceStatus {
  EN_LIGNE,
  HORS_LIGNE,
  DEREFERENCEE,
  PRESERIE,
  SUSPENDUE,
}
