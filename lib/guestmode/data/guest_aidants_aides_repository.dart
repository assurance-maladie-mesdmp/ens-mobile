/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/aidants_aides/data/aidants_aides_repository.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/acteur_aidant_aide.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/delegation.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/invitation_from_aide.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/potentiel_aidant.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profiles_color_helper.dart';

class GuestAidantsAidesRepository extends IAidantsAidesRepository {
  @override
  Future<RequestResult<PotentielAidant>> fetchPotentielAidant({
    required String numeroSecu,
    required String firstName,
    required String lastName,
    required DateTime birthDate,
  }) {
    return Future.value(
      RequestResultSuccess(
        PotentielAidant(
          firstName: 'prénom',
          lastName: 'nom',
          birthDate: DateTime(1989, 04, 01),
          numeroSecu: '211111111111123',
          transactionId: 'transactionId',
          patientId: 'patientId',
        ),
      ),
    );
  }

  @override
  Future<RequestResult<void>> sendInvitationToPotentielAidant({
    required String patientId,
    required String transactionId,
  }) {
    return Future.value(
      RequestResultSuccess(null),
    );
  }

  @override
  Future<RequestResult<List<InvitationFromAide>>> fetchInvitationsFromAides() {
    return Future.value(
      RequestResultSuccess([
        InvitationFromAide(
          invitationId: 'invitationId',
          creationDate: DateTime(2024, 04, 01),
          expirationDate: DateTime(2025, 04, 01),
          aide: ActeurAidantAide(
            id: 'idp',
            firstName: 'Pierre',
            lastName: 'LaTour',
            birthDate: DateTime(1950, 04, 01),
            genre: ActeurGenre.HOMME,
            color: ProfilesColorHelper.getIconColor(0),
          ),
        ),
      ]),
    );
  }

  @override
  Future<RequestResult<DelegationsPourAide>> fetchDelegationsPourAide() {
    return Future.value(
      RequestResultSuccess(
        DelegationsPourAide(
          delegationsEnCours: [
            DelegationEnCours(
              startDate: DateTime(2024, 05, 01),
              endDate: DateTime(2025, 04, 01),
              id: '12344668788',
              acteur: ActeurAidantAide(
                genre: ActeurGenre.HOMME,
                birthDate: DateTime(1990, 04, 01),
                lastName: 'Michel',
                firstName: 'Jean-Edouard Inaya II',
                id: '1234457887',
                color: ProfilesColorHelper.getIconColor(0),
              ),
            ),
            DelegationEnCours(
              startDate: DateTime(2024, 06, 01),
              endDate: DateTime(2025, 04, 01),
              id: '12344668789',
              acteur: ActeurAidantAide(
                genre: ActeurGenre.FEMME,
                birthDate: DateTime(1990, 04, 01),
                lastName: 'Michel',
                firstName: 'Inaya',
                id: '1234457887',
                color: ProfilesColorHelper.getIconColor(1),
              ),
            ),
            DelegationEnCours(
              startDate: DateTime(2024, 04, 01),
              endDate: DateTime(2025, 04, 01),
              id: '12344668790',
              acteur: ActeurAidantAide(
                genre: ActeurGenre.FEMME,
                birthDate: DateTime(1990, 04, 01),
                lastName: 'Michel',
                firstName: 'Athena Inaya',
                id: '1234457887',
                color: ProfilesColorHelper.getIconColor(3),
              ),
            ),
          ],
          delegationsEnAttente: [
            DelegationEnAttente(
              creationDate: DateTime(2024, 04, 01),
              expirationDate: DateTime(2024, 08, 01),
              id: '123446677',
              acteur: ActeurAidantAide(
                firstName: 'Ayani',
                lastName: 'Michel',
                genre: ActeurGenre.FEMME,
                birthDate: DateTime(1989, 04, 01),
                id: '1234457887',
                color: ProfilesColorHelper.getIconColor(4),
              ),
            ),
            DelegationEnAttente(
              creationDate: DateTime(2024, 06, 01),
              expirationDate: DateTime(2024, 08, 01),
              id: '123446677',
              acteur: ActeurAidantAide(
                firstName: 'Paul Timothée Ayani',
                lastName: 'Michel',
                genre: ActeurGenre.HOMME,
                birthDate: DateTime(1989, 04, 01),
                id: '1234457887',
                color: ProfilesColorHelper.getIconColor(5),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Future<RequestResult<AcceptInvitationResponse>> acceptInvitationFromAide({required String invitationId}) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<void>> refuseInvitationFromAide({required String invitationId}) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<DelegationsPourAidant>> fetchDelegationsPourAidant() {
    return Future.value(
      RequestResultSuccess(
        DelegationsPourAidant(
          delegationsEnCours: [
            DelegationEnCours(
              startDate: DateTime(2024, 05, 01),
              endDate: DateTime(2025, 04, 01),
              id: '1',
              acteur: ActeurAidantAide(
                genre: ActeurGenre.HOMME,
                birthDate: DateTime(1990, 04, 01),
                lastName: 'Michel',
                firstName: 'Jean-Edouard Inaya II',
                id: '1234457887',
                color: ProfilesColorHelper.getIconColor(1),
              ),
            ),
            DelegationEnCours(
              startDate: DateTime(2024, 06, 01),
              endDate: DateTime(2025, 04, 01),
              id: '2',
              acteur: ActeurAidantAide(
                genre: ActeurGenre.FEMME,
                birthDate: DateTime(1990, 04, 01),
                lastName: 'Michel',
                firstName: 'Inaya',
                id: '1234457887',
                color: ProfilesColorHelper.getIconColor(2),
              ),
            ),
            DelegationEnCours(
              startDate: DateTime(2024, 04, 01),
              endDate: DateTime(2025, 04, 01),
              id: '3',
              acteur: ActeurAidantAide(
                genre: ActeurGenre.FEMME,
                birthDate: DateTime(1990, 04, 01),
                lastName: 'Michel',
                firstName: 'Athena Inaya',
                id: '1234457887',
                color: ProfilesColorHelper.getIconColor(3),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Future<RequestResult<DeleteDelegationResponse>> deleteDelegation({required String delegationId}) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }
}
