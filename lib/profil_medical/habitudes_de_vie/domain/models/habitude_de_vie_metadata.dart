/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie.dart';

class HabitudeDeVieMetadata extends Equatable {
  final List<HabitudeDeVieCategory> categories;

  const HabitudeDeVieMetadata(this.categories);

  @override
  List<Object?> get props => [categories];
}
