/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/ayants_droits/data/ayants_droits_repository.dart';
import 'package:fr_cnamts_ens/ayants_droits/domain/ayant_droit_partage_data.dart';
import 'package:fr_cnamts_ens/ayants_droits/domain/confirmation_partage_profil_statut.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profils_rattaches/domain/ens_profil_rattache.dart';

class GuestAyantsDroitsRepository extends IAyantsDroitsRepository {
  @override
  Future<GetProfilsRattachesAndAdPendingInvitationsResponse> getProfilsRattachesAndAdPendingInvitations(
    String patientId,
  ) {
    final ayantsDroitsResponse = RequestResultSuccess(const [
      EnsProfilRattache(
        patientId: '1',
        firstName: 'Alice',
        lastName: 'Capanelli',
        profilRattacheType: ProfilRattacheType.AYANT_DROIT,
        index: 0,
      ),
      EnsProfilRattache(
        patientId: '2',
        firstName: 'Lucas',
        lastName: 'Capanelli',
        profilRattacheType: ProfilRattacheType.AYANT_DROIT,
        index: 1,
      ),
      EnsProfilRattache(
        patientId: '3',
        firstName: 'Julia',
        lastName: 'Capanelli',
        profilRattacheType: ProfilRattacheType.AYANT_DROIT,
        index: 2,
      ),
      EnsProfilRattache(
        patientId: '4',
        firstName: 'Pablo',
        lastName: 'Capanelli',
        profilRattacheType: ProfilRattacheType.AYANT_DROIT,
        index: 3,
      ),
    ]);
    return Future.value(
      GetProfilsRattachesAndAdPendingInvitationsResponse(ayantsDroitsResponse, RequestResultSuccess(const [])),
    );
  }

  @override
  Future<RequestResult<void>> sendAyantDroitInvitationConfirmation({
    required AyantDroitsPartageProfil adPartageProfil,
    required String odId,
    required ConfirmationPartageProfilStatut statutPartage,
  }) async {
    return RequestResultSuccess(null);
  }
}
