/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/commune.dart';

class SearchCommunesState extends Equatable {
  final List<Commune> cities;

  const SearchCommunesState({this.cities = const []});

  @override
  List<Object?> get props => [cities];

  SearchCommunesState clone({List<Commune>? cities}) {
    return SearchCommunesState(cities: cities ?? this.cities);
  }
}
