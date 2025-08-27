/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/data/antecedents_familiaux_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/editing_antecedent_familial.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/ens_antecedent_familial.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/ens_antecedents_familiaux.dart';
import 'package:fr_cnamts_ens/utils/extensions/list_extensions.dart';

class GuestAntecedentsFamiliauxRepository extends IAntecedentsFamiliauxRepository {
  final List<EnsAntecedentFamilial> _antecedentsFamiliaux = [
    const EnsAntecedentFamilial(
      id: '0',
      name: 'Diabète',
      familyRelationship: EnsFamilyRelationship.FATHER,
      comment:
          'Mon père a eu du diabète pendant plus de 20 ans. On ignore pourquoi cette destruction des îlots de Langerhans se produit, pourquoi chez certaines personnes et pas chez les autres.',
    ),
  ];

  @override
  Future<RequestResult<EnsAntecedentsFamiliaux>> getAntecedentsFamiliaux(String patientId) {
    return Future.value(
      RequestResultSuccess<EnsAntecedentsFamiliaux>(EnsAntecedentsFamiliaux(_antecedentsFamiliaux.copy(), null)),
    );
  }

  @override
  Future<RequestResult<EditingAntecedentFamilial>> addAntecedentFamilial(
    String patientId,
    EditingAntecedentFamilial editingAntecedentFamilial,
  ) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<String>> deleteAntecedentFamilial(String patientId, String id) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<EditingAntecedentFamilial>> updateAntecedentFamilial(
    String patientId,
    EditingAntecedentFamilial editingAntecedentFamilial,
  ) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }
}
