/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/ayants_droits/domain/ayants_droits_pending_invitation.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profils_rattaches/domain/ens_profil_rattache.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_data.dart';

class EnsOuvrantDroitDataWrapper extends Equatable {
  final int notificationsUnreadCount;
  final RequestResult<List<EnsProfilRattache>> profilsRattaches;
  final RequestResult<UserData> userData;
  final RequestResult<List<AyantsDroitsPendingInvitation>> invitations;

  const EnsOuvrantDroitDataWrapper({
    required this.notificationsUnreadCount,
    required this.profilsRattaches,
    required this.userData,
    required this.invitations,
  });

  EnsOuvrantDroitDataWrapper.error()
      : notificationsUnreadCount = 0,
        profilsRattaches = RequestResultError.genericError(),
        userData = RequestResultError.genericError(),
        invitations = RequestResultError.genericError();

  @override
  List<Object?> get props => [
        notificationsUnreadCount,
        profilsRattaches,
        userData,
        invitations,
      ];
}
