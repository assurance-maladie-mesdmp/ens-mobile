/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/data/matrice_habilitation_repository.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_categorie_document.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_profession.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_resultat.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_type_document.dart';

class GuestMatriceHabilitationRepository implements IMatriceHabilitationRepository {
  @override
  Future<RequestResult<List<EnsMatriceProfession>>> getMatriceProfessions() async {
    await Future.delayed(const Duration(seconds: 3));
    return RequestResultSuccess(const [
      EnsMatriceProfession(libelle: 'Audioprothésistes', codeProfession: 1),
      EnsMatriceProfession(libelle: 'Médecins généralistes', codeProfession: 2),
      EnsMatriceProfession(libelle: 'Kinésithérapeutes', codeProfession: 3),
    ]);
  }

  @override
  Future<RequestResult<List<EnsMatriceCategorieDocument>>> getMatriceCategoriesDocuments() async {
    await Future.delayed(const Duration(seconds: 3));
    return RequestResultSuccess(const [
      EnsMatriceCategorieDocument(libelle: 'Données de remboursement', codeCategorie: 4),
      EnsMatriceCategorieDocument(libelle: 'Prescription', codeCategorie: 5),
      EnsMatriceCategorieDocument(libelle: 'Compte rendu', codeCategorie: 6),
    ]);
  }

  @override
  Future<RequestResult<EnsMatriceResultat>> getMatriceResultats(int codeProfession) async {
    await Future.delayed(const Duration(seconds: 3));
    const categorie2 = EnsMatriceCategorieDocument(libelle: 'Prescription', codeCategorie: 5);
    const categorie3 = EnsMatriceCategorieDocument(libelle: 'Compte rendu', codeCategorie: 6);

    const typeDoc1 = EnsMatriceTypeDocument(libelle: 'CR depose par le patient', codeType: 'DOCPAT03');
    const typeDoc2 = EnsMatriceTypeDocument(libelle: "CR d'imagerie medicale", codeType: 'DOCPAT05');
    const typeDoc3 = EnsMatriceTypeDocument(libelle: 'CR de biologie déposé par le patient', codeType: 'DOCPAT07');

    final EnsMatriceResultat matriceResultat = EnsMatriceResultat(
      resultatsAccessibles: {
        categorie2: const [typeDoc3],
        categorie3: const [typeDoc1],
      },
      resultatsNonAccessibles: {
        categorie3: const [typeDoc2],
      },
      nextUrl: null,
    );
    return RequestResultSuccess(matriceResultat);
  }
}
