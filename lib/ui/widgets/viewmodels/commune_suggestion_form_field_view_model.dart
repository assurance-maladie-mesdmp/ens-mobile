/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/commune/redux/search_communes_action.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/commune.dart';
import 'package:redux/redux.dart';

class CommuneSuggestionFormFieldViewModel extends Equatable {
  final List<Commune> cities;
  final void Function(String pattern) searchCommunes;

  const CommuneSuggestionFormFieldViewModel._internal({required this.cities, required this.searchCommunes});

  factory CommuneSuggestionFormFieldViewModel.from(Store<EnsState> store) {
    return CommuneSuggestionFormFieldViewModel._internal(
      cities: store.state.communesState.cities,
      searchCommunes: (String pattern) => store.dispatch(SearchCommunesAction(input: pattern)),
    );
  }

  @override
  List<Object?> get props => [cities];
}
