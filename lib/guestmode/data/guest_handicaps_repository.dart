/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/data/handicaps_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/domain/ens_handicap.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/domain/ens_handicaps.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/edit_handicap_screen.dart';

class GuestHandicapsRepository extends IHandicapsRepository {
  final EnsHandicaps _handicaps = const EnsHandicaps(
    [
      EnsHandicap(
        id: '0',
        name: 'Surdité',
        humanHelp: EnsHumanHelp.NO,
        disabilityRate: EnsDisabilityRate.LESS_THAN_50,
        types: [HandicapTypeEnum.SENSORY],
        technicalHelp: 'Je dispose d\'un appareil d\'aide à l\'audition.',
        comment: 'Je souffre de surdité depuis mon enfance.',
      ),
      EnsHandicap(
        id: '1',
        name: 'Sclérose en plaques',
        humanHelp: EnsHumanHelp.YES,
        disabilityRate: EnsDisabilityRate.BETWEEN_50_AND_70,
        types: [HandicapTypeEnum.SENSORY],
      ),
    ],
    null,
  );

  @override
  Future<RequestResult<EnsHandicaps>> getHandicaps(String patientId) async {
    await Future.delayed(const Duration(seconds: 1));
    return RequestResultSuccess<EnsHandicaps>(_handicaps);
  }

  @override
  Future<RequestResult<EditingHandicap>> addHandicap(EditingHandicap editingEnsHandicap, String patientId) async {
    await Future.delayed(const Duration(seconds: 1));
    return RequestResultError.unavailableInGuestMode();
  }

  @override
  Future<RequestResult<String>> deleteHandicap(String id, String patientId) async {
    await Future.delayed(const Duration(seconds: 1));
    return RequestResultError.unavailableInGuestMode();
  }

  @override
  Future<RequestResult<EditingHandicap>> updateHandicap(
    EditingHandicap editingEnsHandicap,
    String patientId,
  ) async {
    await Future.delayed(const Duration(seconds: 1));
    return RequestResultError.unavailableInGuestMode();
  }
}
