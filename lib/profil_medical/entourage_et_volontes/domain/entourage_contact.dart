/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/domain/entourage_relation_type.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

class EntourageContact extends Equatable {
  final String id;
  final String lastName;
  final String firstName;
  final EntourageRelationType link;
  final String phone1;
  final String? phone2;
  final String? email;
  final String address;
  final String postalCode;
  final String city;
  final String? country;
  final EntourageContactType contactType;

  const EntourageContact({
    required this.id,
    required this.lastName,
    required this.firstName,
    required this.link,
    required this.phone1,
    this.phone2,
    this.email,
    required this.address,
    required this.postalCode,
    required this.city,
    this.country,
    required this.contactType,
  });

  String get phones => phone2?.isNotEmpty == true ? '$phone1 - $phone2' : phone1;

  @override
  List<Object?> get props => [
        id,
        lastName,
        firstName,
        link,
        phone1,
        phone2,
        email,
        address,
        postalCode,
        city,
        country,
        contactType,
      ];
}

class EditingEntourageContact extends Equatable {
  final String? id;
  final String lastName;
  final String firstName;
  final EntourageRelationType link;
  final String phone1;
  final String? phone2;
  final String? email;
  final String address;
  final String postalCode;
  final String city;
  final String? country;
  final List<EntourageContactType> contactType;

  const EditingEntourageContact({
    this.id,
    required this.lastName,
    required this.firstName,
    required this.link,
    required this.phone1,
    this.phone2,
    this.email,
    required this.address,
    required this.postalCode,
    required this.city,
    this.country,
    required this.contactType,
  });

  EditingEntourageContact cloneWith({
    String? id,
    String? lastName,
    String? firstName,
    EntourageRelationType? link,
    String? phone1,
    String? phone2,
    String? email,
    String? address,
    String? postalCode,
    String? city,
    String? country,
    List<EntourageContactType>? contactType,
  }) {
    return EditingEntourageContact(
      id: id ?? this.id,
      lastName: lastName ?? this.lastName,
      firstName: firstName ?? this.firstName,
      link: link ?? this.link,
      phone1: phone1 ?? this.phone1,
      phone2: phone2 ?? this.phone2,
      email: email ?? this.email,
      address: address ?? this.address,
      postalCode: postalCode ?? this.postalCode,
      city: city ?? this.city,
      country: country ?? this.country,
      contactType: contactType ?? List<EntourageContactType>.from(this.contactType),
    );
  }

  @override
  List<Object?> get props => [
        id,
        lastName,
        firstName,
        link,
        phone1,
        phone2,
        email,
        address,
        postalCode,
        city,
        country,
        contactType,
      ];
}

enum EntourageContactType {
  URGENCE,
  CONFIANCE,
  AIDANT,
  AIDE,
  INCONNUS;

  String get label {
    return switch (this) {
      EntourageContactType.URGENCE => 'Contact d\'urgence',
      EntourageContactType.CONFIANCE => 'Personne de confiance',
      EntourageContactType.AIDANT => 'Proche aidant',
      EntourageContactType.AIDE => 'Proche aidé',
      EntourageContactType.INCONNUS => 'Autre'
    };
  }

  String get titre {
    return switch (this) {
      EntourageContactType.URGENCE => 'Ajouter un contact d\'urgence',
      EntourageContactType.CONFIANCE => 'Ajouter une personne de confiance',
      EntourageContactType.AIDANT => 'Ajouter un proche aidant',
      EntourageContactType.AIDE => 'Ajouter un proche aidé',
      EntourageContactType.INCONNUS => ''
    };
  }

  Color get color {
    return switch (this) {
      EntourageContactType.URGENCE => EnsColors.illustrative01,
      EntourageContactType.CONFIANCE => EnsColors.illustrative05,
      EntourageContactType.AIDANT => EnsColors.illustrative08,
      EntourageContactType.AIDE => EnsColors.illustrative02,
      EntourageContactType.INCONNUS => EnsColors.neutral200
    };
  }
}
