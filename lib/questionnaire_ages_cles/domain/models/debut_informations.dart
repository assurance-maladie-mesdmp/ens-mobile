/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/debut_informations_item.dart';

class DebutInformations extends Equatable {
  final String title;
  final List<String> descriptions;
  final List<DebutInformationsItem> items;

  const DebutInformations({required this.title, required this.descriptions, required this.items});

  @override
  List<Object?> get props => [title, descriptions, items];
}
