/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/data/courbes_reference_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/domain/models/ens_courbe_reference.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_data.dart';

class GuestCourbesReferenceRepository extends ICourbesReferenceRepository {
  @override
  Future<RequestResult<List<EnsCourbeReference>>> getCourbesReferenceForMeasureType(
    List<TypeOfCurve> typeOfCurveToFetch,
    EnsMesureType type,
    DateTime birthDate,
    CourbesReferencePeriode periode,
    Genre sex,
  ) {
    return Future.value(RequestResultSuccess(const []));
  }
}
