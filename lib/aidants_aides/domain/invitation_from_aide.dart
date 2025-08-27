/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/acteur_aidant_aide.dart';

class InvitationFromAide extends Equatable {
  final String invitationId;
  final ActeurAidantAide aide;
  final DateTime creationDate;
  final DateTime expirationDate;

  const InvitationFromAide({
    required this.invitationId,
    required this.aide,
    required this.creationDate,
    required this.expirationDate,
  });

  @override
  List<Object?> get props => [
        invitationId,
        aide,
        creationDate,
        expirationDate,
      ];
}
