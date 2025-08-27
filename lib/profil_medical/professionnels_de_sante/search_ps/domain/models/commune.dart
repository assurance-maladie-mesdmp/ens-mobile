/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/code_postaux.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class Commune extends Equatable {
  final String nom;
  final String codeDepartement;
  final CodePostaux codesPostaux;
  final String? codeCommune;

  const Commune({required this.nom, required this.codeDepartement, required this.codesPostaux, this.codeCommune});

  static const inseeCodeLyon = '69123';
  static const inseeCodeMarseille = '13055';

  static bool isItATownWithSeveralZipCode(CodePostaux zipCodes, String? cityCode) =>
      zipCodes.length > 1 || cityCode == Commune.inseeCodeMarseille || cityCode == Commune.inseeCodeLyon;

  bool _isItATownFinishedBy2Digits(String name) => name.substring(name.length - 2, name.length).isInteger();

  @override
  String toString() {
    if (codesPostaux.isNotEmpty) {
      return isItATownWithSeveralZipCode(codesPostaux, codeCommune)
          ? _isItATownFinishedBy2Digits(nom)
              ? '${nom.capitalizeName()} ($codeDepartement) - Tout l\'arrondissement'
              : '${nom.capitalizeName()} ($codeDepartement) - Toute la ville'
          : '${nom.capitalizeName()} - ${codesPostaux.first}';
    } else {
      return codeDepartement.isEmpty ? nom.capitalizeName() : '${nom.capitalizeName()} - $codeDepartement';
    }
  }

  @override
  List<Object?> get props => [nom, codeDepartement, codesPostaux, codeCommune];
}
