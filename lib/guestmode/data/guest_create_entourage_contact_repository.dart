/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/data/entourage_contact_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/domain/entourage_contact.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/domain/entourage_relation_type.dart';

class GuestCreateEntourageContactRepository extends IEntourageContactRepository {
  @override
  Future<RequestResult<void>> createEntourageContact(
    String patientId,
    EditingEntourageContact editingEntourageContact,
  ) async {
    await Future.delayed(const Duration(seconds: 1));
    return RequestResultError.unavailableInGuestMode();
  }

  @override
  Future<RequestResult<EntourageEtVolontes>> getEntourageEtVolontes(String patientId) async {
    await Future.delayed(const Duration(seconds: 1));
    return RequestResultSuccess(
      const EntourageEtVolontes(
        entourageContacts: [
          EntourageContact(
            id: '01',
            lastName: 'Doe',
            firstName: 'John',
            link: EntourageRelationType.PERE,
            phone1: '0101010101',
            phone2: '0202020202',
            email: 'johndoe@invite.com',
            address: '50 rue des invités',
            postalCode: '75015',
            city: 'Paris',
            country: 'France',
            contactType: EntourageContactType.URGENCE,
          ),
          EntourageContact(
            id: '02',
            lastName: 'Jones',
            firstName: 'Pamela',
            link: EntourageRelationType.MERE,
            phone1: '0101010101',
            email: 'jonespamela@invite.com',
            address: '50 rue des invités',
            postalCode: '75015',
            city: 'Paris',
            country: 'France',
            contactType: EntourageContactType.CONFIANCE,
          ),
        ],
        consent: false,
      ),
    );
  }

  @override
  Future<RequestResult<void>> updateEntourageContact(
    String patientId,
    EditingEntourageContact editingEntourageContact,
  ) async {
    await Future.delayed(const Duration(seconds: 1));
    return RequestResultError.unavailableInGuestMode();
  }

  @override
  Future<RequestResult<void>> deleteEntourageContact(String patientId, String contactId) async {
    await Future.delayed(const Duration(seconds: 1));
    return RequestResultError.unavailableInGuestMode();
  }

  @override
  Future<RequestResult<void>> updateOrganConsent(String patientId, bool consent) async {
    await Future.delayed(const Duration(seconds: 1));
    return RequestResultError.unavailableInGuestMode();
  }
}
