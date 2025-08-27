/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/acteur_aidant_aide.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/delegation.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/invitation_from_aide.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_delegation.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_get_invitations_from_aides.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_invitation.fragment.data.gql.dart';

extension DelegationInvitationsMapper on Gget_invitations_from_aidesData {
  List<InvitationFromAide> toInvitationsFromAides() {
    return delegationInvitations
        .mapIndexed(
          (index, invitation) => InvitationFromAide(
            invitationId: invitation.id,
            aide: ActeurAidantAide.fromInvitationDelegator(index, invitation.delegator),
            creationDate: DateTime.parse(invitation.creationDate),
            expirationDate: DateTime.parse(invitation.expirationDate),
          ),
        )
        .toList();
  }
}

extension DelegationEnCoursMapper on Gdelegation {
  DelegationEnCours toDelegationEnCours(int index, DelegationActeurType acteurType) {
    final acteur = acteurType == DelegationActeurType.AIDANT ? delegate : delegator;
    return DelegationEnCours(
      id: id,
      acteur: ActeurAidantAide.fromDelegationActeur(index, acteur!),
      //FIXME le delegate ne devrait pas être null (en attente d'un correctif BFF)
      startDate: DateTime.parse(startDate),
      endDate: DateTime.parse(endDate),
    );
  }
}

extension DelegationEnAttenteMapper on Ginvitation {
  DelegationEnAttente toDelegationEnAttente(int index) {
    return DelegationEnAttente(
      id: id,
      acteur: ActeurAidantAide.fromInvitationDelegate(index, delegate),
      creationDate: DateTime.parse(creationDate),
      expirationDate: DateTime.parse(expirationDate),
    );
  }
}
