/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/ayants_droits/data/ayants_droits_repository_mapper.dart';
import 'package:fr_cnamts_ens/ayants_droits/domain/ayant_droit_partage_data.dart';
import 'package:fr_cnamts_ens/ayants_droits/domain/ayants_droits_pending_invitation.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ouvrant_droit_data.query.data.gql.dart';
import 'package:fr_cnamts_ens/home/domain/ens_ouvrant_droit_data_wrapper.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profiles_color_helper.dart';
import 'package:fr_cnamts_ens/user/data/user_data_repository_mapper.dart';

extension EnsOuvrantDroitDataWrapperMapper on Gget_ouvrant_droits_dataData {
  EnsOuvrantDroitDataWrapper toEnsUserDataWrapper() {
    return EnsOuvrantDroitDataWrapper(
      notificationsUnreadCount: fetchNotificationCenter == null ? 0 : fetchNotificationCenter!.unreadNotificationsCount,
      profilsRattaches: getAyantsDroits == null
          ? RequestResultError.genericError()
          : RequestResultSuccess(
              getAyantsDroits!.indexed.map((entry) => entry.$2.toEnsProfilRattache(entry.$1)).toList(),
            ),
      userData: getPersonalInformation == null
          ? RequestResultError.genericError()
          : RequestResultSuccess(getPersonalInformation!.toUserData()),
      invitations: RequestResultSuccess(
        getPendingInvitations.pendingInvitations
                ?.toList()
                .mapIndexed(
                  (index, jsonInvitation) => AyantsDroitsPendingInvitation(
                    adPartageProfile: AyantDroitsPartageProfil(
                      firstName: jsonInvitation.firstName,
                      lastName: jsonInvitation.lastName,
                      patientId: jsonInvitation.idEns,
                      birthDate: jsonInvitation.birthDate,
                      color: ProfilesColorHelper.getIconColor(index + (getAyantsDroits?.length ?? 0)),
                    ),
                    endDate: DateTime.parse(jsonInvitation.endDate),
                  ),
                )
                .toList() ??
            [],
      ),
    );
  }
}
