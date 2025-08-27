/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_categorie_document.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_profession.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_resultat.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_type_document.dart';
import 'package:html_unescape/html_unescape_small.dart';

class MatriceHabilitationMapper {
  static EnsMatriceProfession professionFromJson(Map<String, dynamic> professionJson) {
    final unescape = HtmlUnescape();

    final professionAttributes = professionJson['attributes'] as Map<String, dynamic>;

    return EnsMatriceProfession(
      libelle: unescape.convert(professionAttributes['name'] as String),
      codeProfession: professionAttributes['field_code_profession'] as int,
    );
  }

  static EnsMatriceCategorieDocument categorieDocumentFromJson(Map<String, dynamic> categorieDocumentJson) {
    final unescape = HtmlUnescape();

    final categorieDocumentAttributes = categorieDocumentJson['attributes'] as Map<String, dynamic>;

    return EnsMatriceCategorieDocument(
      libelle: unescape.convert(categorieDocumentAttributes['name'] as String),
      codeCategorie: categorieDocumentAttributes['field_code_categorie_document'] as int,
    );
  }

  static EnsMatriceResultat matriceResultatFromJson(List<dynamic> matriceResultatJsonList, String? nextUrl) {
    final unescape = HtmlUnescape();

    final Map<EnsMatriceCategorieDocument, List<EnsMatriceTypeDocument>> resultatsAccessibles = {};
    final Map<EnsMatriceCategorieDocument, List<EnsMatriceTypeDocument>> resultatsNonAccessibles = {};

    for (final matriceResultatJson in matriceResultatJsonList) {
      matriceResultatJson as Map<String, dynamic>;
      final isResultatAccessible = matriceResultatJson['field_consultation_document'] as bool;

      final categorieJson = matriceResultatJson['field_categorie_de_document'] as Map<String, dynamic>;
      final codeCategorieJson = categorieJson['field_code_categorie_document'] as int? ?? 0;
      final categorieLibelleJson = unescape.convert(categorieJson['name'] as String? ?? '');

      final typeJson = matriceResultatJson['field_type_de_document'] as Map<String, dynamic>;
      final codeTypeJson = typeJson['field_code_loinc'] as String? ?? '';
      final typeLibelleJson = unescape.convert(typeJson['name'] as String? ?? '');

      if (categorieLibelleJson.isEmpty || typeLibelleJson.isEmpty) {
        continue;
      }

      final EnsMatriceCategorieDocument cmsCategorieDocument =
          EnsMatriceCategorieDocument(codeCategorie: codeCategorieJson, libelle: categorieLibelleJson);
      final EnsMatriceTypeDocument cmsTypeDocument =
          EnsMatriceTypeDocument(libelle: typeLibelleJson, codeType: codeTypeJson);

      if (isResultatAccessible) {
        if (resultatsAccessibles.keys.contains(cmsCategorieDocument)) {
          resultatsAccessibles[cmsCategorieDocument]?.add(cmsTypeDocument);
        } else {
          resultatsAccessibles.addEntries(
            {
              cmsCategorieDocument: [cmsTypeDocument],
            }.entries,
          );
        }
      } else {
        if (resultatsNonAccessibles.keys.contains(cmsCategorieDocument)) {
          resultatsNonAccessibles[cmsCategorieDocument]?.add(cmsTypeDocument);
        } else {
          resultatsNonAccessibles.addEntries(
            {
              cmsCategorieDocument: [cmsTypeDocument],
            }.entries,
          );
        }
      }
    }

    return EnsMatriceResultat(
      resultatsAccessibles: resultatsAccessibles,
      resultatsNonAccessibles: resultatsNonAccessibles,
      nextUrl: nextUrl,
    );
  }
}
