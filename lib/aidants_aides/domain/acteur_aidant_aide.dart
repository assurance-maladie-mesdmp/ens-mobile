/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_acteur.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_get_invitations_from_aides.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_invitation.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profiles_color_helper.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

// Delagator : Aidé
// Delagate : Aidant
class ActeurAidantAide extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final DateTime birthDate;
  final ActeurGenre genre;
  final Color color;

  const ActeurAidantAide({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.birthDate,
    required this.genre,
    required this.color,
  });

  factory ActeurAidantAide.fromInvitationDelegator(
    int index,
    Gget_invitations_from_aidesData_delegationInvitations_delegator delegator,
  ) {
    return ActeurAidantAide(
      id: delegator.idp,
      firstName: delegator.givenNames,
      lastName: delegator.familyName,
      birthDate: DateTime.parse(delegator.birthDate),
      genre: ActeurGenre.from(delegator.gender),
      color: ProfilesColorHelper.getIconColor(index),
    );
  }

  factory ActeurAidantAide.fromInvitationDelegate(
    int index,
    Ginvitation_delegate delegate,
  ) {
    return ActeurAidantAide(
      id: delegate.idp,
      firstName: delegate.givenNames,
      lastName: delegate.familyName,
      birthDate: DateTime.parse(delegate.birthDate),
      genre: ActeurGenre.from(delegate.gender),
      color: ProfilesColorHelper.getIconColor(index),
    );
  }

  factory ActeurAidantAide.fromDelegationActeur(int index, Gacteur acteur) {
    return ActeurAidantAide(
      id: acteur.idp,
      firstName: acteur.givenNames,
      lastName: acteur.familyName,
      birthDate: DateTime.parse(acteur.birthDate),
      genre: ActeurGenre.from(acteur.gender),
      color: ProfilesColorHelper.getIconColor(index),
    );
  }

  String get mainFirstName => firstName.split(' ').first.capitalizeName();

  String get fullName => '$mainFirstName ${lastName.capitalizeName()}';

  @override
  List<Object?> get props => [id, firstName, lastName, birthDate, genre, color];
}

enum ActeurGenre {
  FEMME,
  HOMME,
  UNKNOWN;

  factory ActeurGenre.from(GGender genre) {
    return switch (genre) {
      GGender.FEMALE => ActeurGenre.FEMME,
      GGender.MALE => ActeurGenre.HOMME,
      _ => ActeurGenre.UNKNOWN,
    };
  }
}
