/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/ens_antecedent_familial.dart';

class EditingAntecedentFamilial {
  String? id;
  String? name;
  EnsFamilyRelationship? familyRelationship;
  String? comment;

  EditingAntecedentFamilial({
    this.id,
    this.name,
    this.familyRelationship,
    this.comment,
  });
}
