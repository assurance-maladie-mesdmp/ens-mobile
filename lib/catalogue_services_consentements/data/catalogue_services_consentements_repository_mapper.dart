/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service_consentement.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_consents_for_service_by_oid.query.data.gql.dart';

class CatalogueServicesConsentementsRepositoryMapper {
  static CatalogueServiceConsentement toCatalogueServiceConsentement(
    Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid consentModel,
  ) =>
      CatalogueServiceConsentement(
        title: consentModel.libelle,
        purpose: consentModel.description,
        purposeCode: consentModel.codeFinalite,
        accepted: consentModel.consenti,
        details: consentModel.echangesDeDonnees
            .map(
              (detail) => ServiceConsentementDetail(
                detail.perimetre,
                detail.categories
                    .map(
                      (categorie) => ServiceConsentementDetailItem(
                        categorie.titre,
                        categorie.description,
                      ),
                    )
                    .toList(),
                detail.action == 'Ecriture',
              ),
            )
            .toList(),
      );
}
