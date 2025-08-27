/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

enum GroupeSanguin {
  A_PLUS('A+'),
  A_MOINS('A-'),
  B_PLUS('B+'),
  B_MOINS('B-'),
  AB_PLUS('AB+'),
  AB_MOINS('AB-'),
  O_PLUS('O+'),
  O_MOINS('O-');

  final String label;

  const GroupeSanguin(this.label);

  String get accessiblityLabel => switch (this) {
        GroupeSanguin.A_PLUS => 'A Positif',
        GroupeSanguin.A_MOINS => 'A Négatif',
        GroupeSanguin.AB_PLUS => 'AB Positif',
        GroupeSanguin.AB_MOINS => 'AB Négatif',
        GroupeSanguin.B_PLUS => 'B Positif',
        GroupeSanguin.B_MOINS => 'B Négatif',
        GroupeSanguin.O_PLUS => 'O Positif',
        GroupeSanguin.O_MOINS => 'O Négatif',
      };

  String get pourcentage {
    return switch (this) {
      GroupeSanguin.O_PLUS => '36%',
      GroupeSanguin.O_MOINS => '6%',
      GroupeSanguin.AB_PLUS => '3%',
      GroupeSanguin.AB_MOINS => '1%',
      GroupeSanguin.A_PLUS => '37%',
      GroupeSanguin.A_MOINS => '7%',
      GroupeSanguin.B_PLUS => '9%',
      GroupeSanguin.B_MOINS => '1%',
    };
  }

  List<GroupeSanguin> get peutDonner {
    return switch (this) {
      GroupeSanguin.O_PLUS => [
          GroupeSanguin.AB_PLUS,
          GroupeSanguin.A_PLUS,
          GroupeSanguin.B_PLUS,
          GroupeSanguin.O_PLUS,
        ],
      GroupeSanguin.O_MOINS => [],
      GroupeSanguin.AB_PLUS => [GroupeSanguin.AB_PLUS],
      GroupeSanguin.AB_MOINS => [GroupeSanguin.AB_MOINS, GroupeSanguin.AB_PLUS],
      GroupeSanguin.A_PLUS => [GroupeSanguin.A_PLUS, GroupeSanguin.AB_PLUS],
      GroupeSanguin.A_MOINS => [
          GroupeSanguin.AB_PLUS,
          GroupeSanguin.AB_MOINS,
          GroupeSanguin.A_PLUS,
          GroupeSanguin.A_MOINS,
        ],
      GroupeSanguin.B_PLUS => [GroupeSanguin.AB_PLUS, GroupeSanguin.B_PLUS],
      GroupeSanguin.B_MOINS => [
          GroupeSanguin.AB_PLUS,
          GroupeSanguin.AB_MOINS,
          GroupeSanguin.B_PLUS,
          GroupeSanguin.B_MOINS,
        ],
    };
  }

  List<GroupeSanguin> get peutRecevoir {
    return switch (this) {
      GroupeSanguin.O_PLUS => [GroupeSanguin.O_MOINS, GroupeSanguin.O_PLUS],
      GroupeSanguin.O_MOINS => [GroupeSanguin.O_MOINS],
      GroupeSanguin.AB_PLUS => [],
      GroupeSanguin.AB_MOINS => [
          GroupeSanguin.O_MOINS,
          GroupeSanguin.B_MOINS,
          GroupeSanguin.A_MOINS,
          GroupeSanguin.AB_MOINS,
        ],
      GroupeSanguin.A_PLUS => [
          GroupeSanguin.O_MOINS,
          GroupeSanguin.O_PLUS,
          GroupeSanguin.A_MOINS,
          GroupeSanguin.A_PLUS,
        ],
      GroupeSanguin.A_MOINS => [GroupeSanguin.O_MOINS, GroupeSanguin.A_MOINS],
      GroupeSanguin.B_PLUS => [
          GroupeSanguin.O_MOINS,
          GroupeSanguin.O_PLUS,
          GroupeSanguin.B_MOINS,
          GroupeSanguin.B_PLUS,
        ],
      GroupeSanguin.B_MOINS => [GroupeSanguin.O_MOINS, GroupeSanguin.B_MOINS],
    };
  }
}

class GroupeSanguinData extends Equatable {
  final String id;
  final GroupeSanguin groupeSanguin;
  final String auteur;

  const GroupeSanguinData({required this.id, required this.groupeSanguin, required this.auteur});

  @override
  List<Object?> get props => [id, groupeSanguin, auteur];
}
