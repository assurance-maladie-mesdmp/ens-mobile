/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_as_get_as_suggestion.query.data.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/domain/acteur_de_sante_suggestion.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/professionnels_de_sante_screen_view_model.dart';

extension ActeurDeSanteSuggestionsMappper on Gget_as_suggestionsData_getHealthActorsSuggestions {
  List<ActeurDeSanteSuggestion> toAsSuggestions() {
    return healthActorsSuggestions.map((suggestion) => suggestion.toAsSuggestion()).toList();
  }
}

extension ActeurDeSanteSuggestionMapper on Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions {
  ActeurDeSanteSuggestion toAsSuggestion() {
    final type = this.type == 'PS' ? TypeOfActeurDeSante.PS : TypeOfActeurDeSante.ES;
    return switch (type) {
      TypeOfActeurDeSante.ES => EtablissementDeSanteSuggestion(
          id: nationalId,
          name: name,
          adresse: address,
          email: email,
        ),
      TypeOfActeurDeSante.PS => ProfessionelDeSanteSuggestion(
          id: nationalId,
          name: name,
          adresse: address,
          email: email,
          profession: profession,
        ),
    };
  }
}

extension ActeurDeSanteSuggestionMapperList
    on BuiltList<Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions> {
  List<EtablissementDeSanteSuggestion> toEtablissementDeSanteSuggestions() => map(
        (suggestion) => EtablissementDeSanteSuggestion(
          id: suggestion.nationalId,
          name: suggestion.name,
          adresse: suggestion.address,
          email: suggestion.email,
        ),
      ).toList();
}
