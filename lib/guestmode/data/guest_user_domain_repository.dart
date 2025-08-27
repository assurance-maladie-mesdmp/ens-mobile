/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/ayants_droits/domain/ayant_droit_partage_data.dart';
import 'package:fr_cnamts_ens/ayants_droits/domain/ayants_droits_pending_invitation.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/home/data/ouvrant_droit_repository.dart';
import 'package:fr_cnamts_ens/home/domain/ens_ouvrant_droit_data_wrapper.dart';
import 'package:fr_cnamts_ens/profils_rattaches/domain/ens_profil_rattache.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profiles_color_helper.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_data.dart';

class GuestUserDomainRepository extends IOuvrantDroitRepository {
  @override
  Future<EnsOuvrantDroitDataWrapper> loadUserDomain(String patientId) async {
    return EnsOuvrantDroitDataWrapper(
      notificationsUnreadCount: 3,
      profilsRattaches: RequestResultSuccess(const [
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
      ]),
      userData: RequestResultSuccess(
        UserData(
          firstName: 'Gabrielle',
          lastName: 'Capanelli',
          mail: 'INS@patient.mssante.fr',
          phoneNumber: '+33123456789',
          birthDate: _getBirthdate(patientId),
          genre: Genre.FEMME,
          ins: 'XXXXXXXXXXXXXXX',
          inseeCode: '01154',
          cguAcceptedAt: DateTime(2024, 2, 18),
          cguLastPublicationAt: DateTime(2024, 1, 18),
          isOnboardingDone: true,
        ),
      ),
      invitations: RequestResultSuccess([
        AyantsDroitsPendingInvitation(
          adPartageProfile: AyantDroitsPartageProfil(
            firstName: 'Theo',
            lastName: 'Michel',
            patientId: '1',
            birthDate: '01/01/2000',
            color: ProfilesColorHelper.getIconColor(0),
          ),
          endDate: DateTime.now().add(const Duration(days: 10)),
        ),
        AyantsDroitsPendingInvitation(
          adPartageProfile: AyantDroitsPartageProfil(
            firstName: 'Lise',
            lastName: 'Michel',
            patientId: '2',
            birthDate: '02/02/2001',
            color: ProfilesColorHelper.getIconColor(1),
          ),
          endDate: DateTime.now().add(const Duration(days: 15)),
        ),
      ]),
    );
  }

  DateTime _getBirthdate(String patientId) {
    switch (patientId) {
      case '1':
        return DateTime(2023);
      case '2':
        return DateTime(2020);
      case '3':
        return DateTime(2017);
      case '4':
        return DateTime(2011);
      default:
        return DateTime(1985, 1, 4);
    }
  }
}
