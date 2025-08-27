/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

import 'package:fr_cnamts_ens/parameters/consentements_urgence/domain/models/ens_consentement_urgence.dart';

class EnsConsentementsUrgence extends Equatable {
  final EnsConsentementUrgence samu;
  final EnsConsentementUrgence autrePS;
  final EnsConsentementUrgence documentsMasques;

  const EnsConsentementsUrgence({required this.samu, required this.autrePS, required this.documentsMasques});

  @override
  List<Object?> get props => [samu, autrePS, documentsMasques];
}
