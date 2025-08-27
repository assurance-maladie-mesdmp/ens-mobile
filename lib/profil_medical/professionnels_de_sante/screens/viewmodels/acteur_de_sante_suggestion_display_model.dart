/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/domain/acteur_de_sante_suggestion.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professionnels_de_sante_name_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/type_of_ps_profession.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

sealed class ActeurDeSanteSuggestionDisplayModel extends Equatable {
  final String id;
  final String formattedSuggestionName;
  final String subtitle;
  final String icon;

  const ActeurDeSanteSuggestionDisplayModel({
    required this.id,
    required this.subtitle,
    required this.icon,
    required this.formattedSuggestionName,
  });
}

class EtablissementDeSanteSuggestionDisplayModel extends ActeurDeSanteSuggestionDisplayModel {
  const EtablissementDeSanteSuggestionDisplayModel({
    required super.id,
    required super.formattedSuggestionName,
    required super.subtitle,
    required super.icon,
  });

  factory EtablissementDeSanteSuggestionDisplayModel.fromPharmacieSuggestion(
    EtablissementDeSanteSuggestion suggestion,
  ) {
    return EtablissementDeSanteSuggestionDisplayModel(
      id: suggestion.id,
      formattedSuggestionName: ProfessionnelsDeSanteInformationHelper.capitalizeAsNames(suggestion.name ?? ''),
      subtitle: suggestion.adresse ?? '',
      icon: EnsImages.ic_building,
    );
  }

  @override
  List<Object?> get props => [id, subtitle, icon, formattedSuggestionName];
}

class ProfessionalDeSanteSuggestionDisplayModel extends ActeurDeSanteSuggestionDisplayModel {
  final PsProfessionLinkToRole? professionType;

  const ProfessionalDeSanteSuggestionDisplayModel({
    required super.id,
    required super.formattedSuggestionName,
    required super.subtitle,
    required super.icon,
    required this.professionType,
  });

  factory ProfessionalDeSanteSuggestionDisplayModel.fromPsSuggestion(ProfessionelDeSanteSuggestion suggestion) {
    return ProfessionalDeSanteSuggestionDisplayModel(
      id: suggestion.id,
      formattedSuggestionName: ProfessionnelsDeSanteInformationHelper.capitalizeAsNames(suggestion.name ?? ''),
      subtitle: suggestion.profession ?? '',
      professionType: PsProfessionLinkToRole.fromPsProfession(suggestion.profession),
      icon: EnsImages.ic_user,
    );
  }

  @override
  List<Object?> get props => [id, subtitle, icon, formattedSuggestionName, professionType];
}

extension ActeurDeSanteSuggestionsDisplayModelMapper on List<ActeurDeSanteSuggestion> {
  List<ActeurDeSanteSuggestionDisplayModel> toDisplayModels() {
    return map((suggestion) {
      switch (suggestion) {
        case final EtablissementDeSanteSuggestion pharmacie:
          return EtablissementDeSanteSuggestionDisplayModel.fromPharmacieSuggestion(pharmacie);
        case final ProfessionelDeSanteSuggestion ps:
          return ProfessionalDeSanteSuggestionDisplayModel.fromPsSuggestion(ps);
      }
    }).toList();
  }
}
