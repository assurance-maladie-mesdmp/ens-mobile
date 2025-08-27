/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/signalement_type.dart';

class SendSignalementData extends Equatable {
  final SignalementType signalementType;
  final String idToSignal;
  final String nom;
  final String description;
  final bool hasConsent;

  const SendSignalementData({
    required this.signalementType,
    required this.idToSignal,
    required this.nom,
    required this.description,
    required this.hasConsent,
  });

  @override
  List<Object?> get props => [signalementType, idToSignal, nom, description, hasConsent];
}
