/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service_consentement.dart';
import 'package:fr_cnamts_ens/catalogue_services_consentements/data/catalogue_services_consentements_repository.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';

class GuestCatalogueServicesConsentementsRepository extends ICatalogueServicesConsentementsRepository {
  @override
  Future<RequestResult<List<CatalogueServiceConsentement>>> getConsentementsForService(String oid, String patientId) {
    return Future.value(
      RequestResultSuccess(const [
        CatalogueServiceConsentement(
          title: 'Ajouter mon glucose sanguin',
          purpose: 'Ce service pourra ajouter votre glycémie.',
          purposeCode: '11',
          accepted: true,
          details: [
            ServiceConsentementDetail('Ajouter mon glucose interstitiel'),
            ServiceConsentementDetail('Ajouter mon hémoglobine glyquée'),
            ServiceConsentementDetail('Ajouter mon index de gestion de glycémie'),
          ],
        ),
        CatalogueServiceConsentement(
          title: 'Ajouter ma tension artérielle',
          purpose: 'Ce service pourra ajouter votre glycémie.',
          purposeCode: '22',
          accepted: false,
          details: [],
        ),
      ]),
    );
  }

  @override
  Future<RequestResult<void>> addConsentForServiceByOid(String oid, String context) {
    return Future.value(RequestResultSuccess(null));
  }

  @override
  Future<RequestResult<void>> removeConsentForServiceByOid(String oid, String context) {
    return Future.value(RequestResultSuccess(null));
  }

  @override
  Future<RequestResult<void>> unsynchronizeService(String oid) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<void>> updateConsentementAfterMajorite({required String oid, required String patientId}) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }
}
