/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_display_model_role_enum.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:optional/optional_internal.dart';

class ProfessionnelDeSante extends Equatable {
  final String idForDelete;
  final String? nationalId;
  final String firstName;
  final String lastName;
  final bool isMedecinTraitantDeclare;
  final bool isMedecinTraitantRetrograde;
  final String? profession;
  final String? speciality;
  final List<ProfessionnelDeSanteExercice>? exercices;
  final List<ActeurDeSanteAdresse> addresses;
  final String? contactId;
  final bool isContactable;
  final PsRoleDomaine? role;
  final bool active;

  const ProfessionnelDeSante({
    required this.idForDelete,
    this.nationalId,
    required this.lastName,
    required this.firstName,
    this.isMedecinTraitantDeclare = false,
    this.isMedecinTraitantRetrograde = false,
    this.profession,
    required this.addresses,
    this.speciality,
    this.exercices,
    this.isContactable = false,
    this.contactId,
    this.role,
    required this.active,
  });

  ProfessionnelDeSante clone({
    String? idForDelete,
    String? nationalId,
    String? firstName,
    String? lastName,
    bool? isMedecinTraitant,
    bool? isMedecinTraitantDeclare,
    bool? isMedecinTraitantRetrograde,
    String? profession,
    String? speciality,
    List<ProfessionnelDeSanteExercice>? exercices,
    List<ActeurDeSanteAdresse>? addresses,
    String? contactId,
    bool? isContactable,
    Optional<PsRoleDomaine>? roleOptional,
    bool? active,
  }) {
    return ProfessionnelDeSante(
      idForDelete: idForDelete ?? this.idForDelete,
      nationalId: nationalId ?? this.nationalId,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      isMedecinTraitantDeclare: isMedecinTraitantDeclare ?? this.isMedecinTraitantDeclare,
      isMedecinTraitantRetrograde: isMedecinTraitantRetrograde ?? this.isMedecinTraitantRetrograde,
      profession: profession ?? this.profession,
      speciality: speciality ?? this.speciality,
      exercices: exercices ?? this.exercices,
      addresses: addresses ?? this.addresses,
      contactId: contactId ?? this.contactId,
      isContactable: isContactable ?? this.isContactable,
      role: roleOptional != null ? roleOptional.orElseNullable(null) : role,
      active: active ?? this.active,
    );
  }

  int getSortPriority() {
    return switch (role) {
      PsRoleDomaine.MEDECIN_TRAITANT => 0,
      PsRoleDomaine.PHARMACIEN_CORRESPONDANT => 1,
      PsRoleDomaine.SAGE_FEMME_REFERENTE => 2,
      _ => active ? 3 : 4,
    };
  }

  @override
  List<Object?> get props => [
        idForDelete,
        nationalId,
        firstName,
        lastName,
        profession,
        isMedecinTraitantDeclare,
        speciality,
        addresses,
        exercices,
        isMedecinTraitantRetrograde,
        isContactable,
        contactId,
        role,
        active,
      ];
}

class ProfessionnelDeSanteExercice extends Equatable {
  final String profession;
  final String? specialites;
  final String? shortLabelSpecialites;

  const ProfessionnelDeSanteExercice({required this.profession, this.specialites, this.shortLabelSpecialites});

  @override
  List<Object?> get props => [profession, specialites, shortLabelSpecialites];
}

class ActeurDeSanteAdresse extends Equatable {
  final String? cityZipCode;
  final String? roadNumber;
  final String? roadType;
  final String? labelRoadType;
  final String? road;
  final String? phoneNumber;
  final String? addressName;
  final String? city;

  const ActeurDeSanteAdresse({
    this.cityZipCode,
    this.roadNumber,
    this.roadType,
    this.labelRoadType,
    this.road,
    this.phoneNumber,
    this.addressName,
    this.city,
  });

  String get formattedAddress {
    return '${(roadNumber == '' || roadNumber == null) ? '' : roadNumber} ${labelRoadType ?? roadType ?? ''}${(labelRoadType ?? roadType) != null ? ' ' : ''}${road?.titleCase ?? ''}${road == null ? '' : ', '}${cityZipCode?.titleCase ?? ''} ${city?.titleCase ?? ''}';
  }

  String get formattedNonActiveAdresse {
    return '${cityZipCode?.titleCase ?? ''}, ${city?.titleCase ?? ''}';
  }

  String get formattedPhoneNumber {
    if (phoneNumber != null) {
      return phoneNumber!.replaceAll('.', '').replaceAllMapped(RegExp('.{2}'), (match) => '${match.group(0)} ').trim();
    } else {
      return '';
    }
  }

  static String formattedCityAndZipcode(ActeurDeSanteAdresse adresse) {
    return '${(adresse.cityZipCode != null && adresse.cityZipCode!.isNotEmpty) ? '${adresse.cityZipCode}' : ''}${adresse.city != null && adresse.city!.isNotEmpty && adresse.cityZipCode != null ? ', ' : ''}${(adresse.city != null) ? adresse.city : ''}';
  }

  @override
  List<Object?> get props => [
        cityZipCode,
        roadNumber,
        labelRoadType,
        road,
        phoneNumber,
        addressName,
        city,
        roadType,
      ];
}

enum PsRoleDomaine {
  MEDECIN_TRAITANT,
  SAGE_FEMME_REFERENTE,
  PHARMACIEN_CORRESPONDANT;

  bool get isMedecinTraitant => this == MEDECIN_TRAITANT;

  String get snackbarAddPsWithRoleDisplayValue {
    return switch (this) {
      PsRoleDomaine.MEDECIN_TRAITANT => 'Médecin traitant renseigné',
      PsRoleDomaine.SAGE_FEMME_REFERENTE => 'Sage-femme référente ajoutée',
      PsRoleDomaine.PHARMACIEN_CORRESPONDANT => 'Pharmacien correspondant ajouté',
    };
  }

  String get snackbarUpdatePsRoleDisplayValue {
    return switch (this) {
      PsRoleDomaine.SAGE_FEMME_REFERENTE => 'Renseigné comme sage-femme référente',
      PsRoleDomaine.PHARMACIEN_CORRESPONDANT => 'Renseigné comme pharmacien correspondant',
      PsRoleDomaine.MEDECIN_TRAITANT => '',
    };
  }

  String get snackbarDisplayRemoveValue {
    return switch (this) {
      PsRoleDomaine.SAGE_FEMME_REFERENTE => 'Rôle de sage-femme référente retiré',
      PsRoleDomaine.PHARMACIEN_CORRESPONDANT => 'Rôle de pharmacien correspondant retiré',
      PsRoleDomaine.MEDECIN_TRAITANT => 'Rôle de médecin traitant retiré',
    };
  }

  PsRoleDisplayModel get psRoleDisplayModel {
    return switch (this) {
      PsRoleDomaine.SAGE_FEMME_REFERENTE => PsRoleDisplayModel.SAGE_FEMME_REFERENTE,
      PsRoleDomaine.PHARMACIEN_CORRESPONDANT => PsRoleDisplayModel.PHARMACIEN_CORRESPONDANT,
      PsRoleDomaine.MEDECIN_TRAITANT => PsRoleDisplayModel.MEDECIN_TRAITANT,
    };
  }
}
