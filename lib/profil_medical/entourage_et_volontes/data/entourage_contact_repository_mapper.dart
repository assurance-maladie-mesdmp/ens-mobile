/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_entourage_get_entourage.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/domain/entourage_contact.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/domain/entourage_relation_type.dart';

class EntourageContactRepositoryMapper {
  static List<EntourageContact> extractEmergencyContacts(Gget_entourage_contactData_getWishes_structure result) {
    return result.emergencyContacts?.map(
          (emergencyContact) {
            return EntourageContact(
              id: emergencyContact.idContact,
              lastName: emergencyContact.lastName ?? '',
              firstName: emergencyContact.firstName ?? '',
              link: getDomainToRelation(emergencyContact.relation),
              phone1: emergencyContact.mobileNumber ?? '',
              phone2: extractPhone2(emergencyContact.mobileNumber, emergencyContact.fixedLineNumber),
              email: emergencyContact.emailAddress ?? '',
              address: emergencyContact.streetAddressLine ?? '',
              postalCode: emergencyContact.postalCode ?? '',
              city: emergencyContact.city ?? '',
              country: emergencyContact.country ?? '',
              contactType: getDomainContactType(emergencyContact.contactType),
            );
          },
        ).toList() ??
        [];
  }

  static List<EntourageContact> extractTrustedPerson(Gget_entourage_contactData_getWishes_structure result) {
    final List<EntourageContact> trustedPerson = [];
    if (result.trustedPerson != null) {
      trustedPerson.add(
        EntourageContact(
          id: result.trustedPerson!.idContact,
          lastName: result.trustedPerson!.lastName ?? '',
          firstName: result.trustedPerson!.firstName ?? '',
          link: getDomainToRelation(result.trustedPerson!.relation),
          phone1: result.trustedPerson!.mobileNumber ?? '',
          phone2: extractPhone2(result.trustedPerson!.mobileNumber, result.trustedPerson!.fixedLineNumber),
          email: result.trustedPerson!.emailAddress,
          address: result.trustedPerson!.streetAddressLine ?? '',
          postalCode: result.trustedPerson!.postalCode ?? '',
          city: result.trustedPerson!.city ?? '',
          country: result.trustedPerson!.country,
          contactType: getDomainContactType(result.trustedPerson!.contactType),
        ),
      );
    }
    return trustedPerson;
  }

  static List<EntourageContact> extractCaregivers(Gget_entourage_contactData_getWishes_structure result) {
    return result.caregiverPersons?.map(
          (caregiver) {
            return EntourageContact(
              id: caregiver.idContact,
              lastName: caregiver.lastName ?? '',
              firstName: caregiver.firstName ?? '',
              link: getDomainToRelation(caregiver.relation),
              phone1: caregiver.mobileNumber ?? '',
              phone2: extractPhone2(caregiver.mobileNumber, caregiver.fixedLineNumber),
              email: caregiver.emailAddress,
              address: caregiver.streetAddressLine ?? '',
              postalCode: caregiver.postalCode ?? '',
              city: caregiver.city ?? '',
              country: caregiver.country,
              contactType: getDomainContactType(caregiver.contactType),
            );
          },
        ).toList() ??
        [];
  }

  static List<EntourageContact> extractHelpedPersons(Gget_entourage_contactData_getWishes_structure result) {
    return result.helpedPersons?.map(
          (helpedPerson) {
            return EntourageContact(
              id: helpedPerson.idContact,
              lastName: helpedPerson.lastName ?? '',
              firstName: helpedPerson.firstName ?? '',
              link: getDomainToRelation(helpedPerson.relation),
              phone1: helpedPerson.mobileNumber ?? '',
              phone2: extractPhone2(helpedPerson.mobileNumber, helpedPerson.fixedLineNumber),
              email: helpedPerson.emailAddress,
              address: helpedPerson.streetAddressLine ?? '',
              postalCode: helpedPerson.postalCode ?? '',
              city: helpedPerson.city ?? '',
              country: helpedPerson.country,
              contactType: getDomainContactType(helpedPerson.contactType),
            );
          },
        ).toList() ??
        [];
  }

  static String? extractPhone2(String? phone1, String? phone2) {
    return phone1 == phone2 ? null : phone2;
  }

  static List<GContactType> getContactType(EditingEntourageContact entourage) {
    return entourage.contactType.map((e) {
      switch (e) {
        case EntourageContactType.URGENCE:
          return GContactType.EMERGENCY_CONTACT;
        case EntourageContactType.CONFIANCE:
          return GContactType.TRUSTED_CONTACT;
        case EntourageContactType.AIDANT:
          return GContactType.CAREGIVER_CONTACT;
        case EntourageContactType.AIDE:
          return GContactType.HELP_CONTACT;
        case EntourageContactType.INCONNUS:
          return GContactType.gUnknownEnumValue;
      }
    }).toList();
  }

  static GEntourageRelation getRelation(EntourageRelationType link) {
    return switch (link) {
      EntourageRelationType.MERE => GEntourageRelation.MOTHER,
      EntourageRelationType.PERE => GEntourageRelation.FATHER,
      EntourageRelationType.ENFANT => GEntourageRelation.CHILD,
      EntourageRelationType.PARTENAIRE => GEntourageRelation.SPOUSE,
      EntourageRelationType.TUTEUR => GEntourageRelation.TUTEUR,
      EntourageRelationType.AUTRE => GEntourageRelation.OTHER
    };
  }

  static EntourageRelationType getDomainToRelation(GEntourageRelation? link) {
    return switch (link) {
      GEntourageRelation.MOTHER => EntourageRelationType.MERE,
      GEntourageRelation.FATHER => EntourageRelationType.PERE,
      GEntourageRelation.CHILD => EntourageRelationType.ENFANT,
      GEntourageRelation.SPOUSE => EntourageRelationType.PARTENAIRE,
      GEntourageRelation.TUTEUR => EntourageRelationType.TUTEUR,
      GEntourageRelation.OTHER => EntourageRelationType.AUTRE,
      _ => EntourageRelationType.AUTRE
    };
  }

  static EntourageContactType getDomainContactType(GContactType contactType) {
    switch (contactType) {
      case GContactType.EMERGENCY_CONTACT:
        return EntourageContactType.URGENCE;
      case GContactType.TRUSTED_CONTACT:
        return EntourageContactType.CONFIANCE;
      case GContactType.CAREGIVER_CONTACT:
        return EntourageContactType.AIDANT;
      case GContactType.HELP_CONTACT:
        return EntourageContactType.AIDE;
      case GContactType.gUnknownEnumValue:
      default:
        return EntourageContactType.INCONNUS;
    }
  }
}
