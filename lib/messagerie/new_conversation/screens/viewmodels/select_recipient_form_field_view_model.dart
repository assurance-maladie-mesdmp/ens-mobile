/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/ps_contact.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/redux/messagerie_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/domain/acteur_de_sante_suggestion.dart';
import 'package:fr_cnamts_ens/search_es/domain/models/etablissement_de_sante.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class SelectRecipientFormFieldViewModel extends Equatable {
  final List<MessagerieAutocompleteItemDisplayModel> autocompleteDisplayModels;
  final void Function(String email, String fullName, String id) createContact;

  const SelectRecipientFormFieldViewModel._internal({
    required this.createContact,
    required this.autocompleteDisplayModels,
  });

  factory SelectRecipientFormFieldViewModel.from(Store<EnsState> store, String pattern) {
    final homeMessagerieState = store.state.messagerieState.homeMessagerieState;
    final pharmacieSuggestionsState = store.state.etablissementsDeSanteState.pharmacieSuggestionsState;

    final List<MessagerieAutocompleteItemDisplayModel> autocompleteDisplayModels = [];

    if (homeMessagerieState.isSuccessWithData && pharmacieSuggestionsState.status.isSuccess()) {
      final messagerie = homeMessagerieState.messagerie!;
      if (messagerie.contacts.isNotEmpty) {
        final suggestions = _findSuggestionsForPattern(
          messagerie.contacts.map((contact) => _SuggestionValue.fromPsContact(contact)).toList(),
          pattern,
        );

        if (suggestions.isNotEmpty) {
          autocompleteDisplayModels.add(const PsContactableHeaderDisplayModel());
          autocompleteDisplayModels.addAll(
            suggestions.map(
              (contact) => ContactItemDisplayModel.computeIsAPharmacie(id: contact.id, name: contact.name),
            ),
          );
        }
      }
      if (pharmacieSuggestionsState.suggestions.isNotEmpty) {
        final suggestions = _findSuggestionsForPattern(
          pharmacieSuggestionsState.suggestions
              .where((pharmacie) => messagerie.contacts.none((contact) => contact.name == pharmacie.name))
              .map((e) => _SuggestionValue.fromPharmacieSuggestion(e))
              .toList(),
          pattern,
        );
        if (suggestions.isNotEmpty) {
          autocompleteDisplayModels.add(const PharmacieFrequenteeHeaderDisplayModel());
          autocompleteDisplayModels.addAll(
            suggestions.map(
              (pharmacieSuggestion) => ContactItemDisplayModel(
                id: pharmacieSuggestion.id,
                name: pharmacieSuggestion.name.capitalizeName(),
                mail: pharmacieSuggestion.mail,
                adresse: pharmacieSuggestion.address,
                isAPharmacie: true,
              ),
            ),
          );
        }
        autocompleteDisplayModels.add(SearchEsDisplayModel(isPharmacieFrequenteeEmpty: suggestions.isEmpty));
      } else {
        autocompleteDisplayModels.add(const SearchEsDisplayModel(isPharmacieFrequenteeEmpty: true));
      }
      if (autocompleteDisplayModels.length == 1) {
        autocompleteDisplayModels.add(const EmptyMessageDisplayModel());
      }
    } else if (homeMessagerieState.status.isLoading() || pharmacieSuggestionsState.status.isLoading()) {
      autocompleteDisplayModels.addAll([
        const LoadingHeaderDisplayModel(),
        const LoadingItemDisplayModel(),
        const LoadingItemDisplayModel(),
        const LoadingItemDisplayModel(),
      ]);
    }

    return SelectRecipientFormFieldViewModel._internal(
      autocompleteDisplayModels: autocompleteDisplayModels,
      createContact: (email, fullName, id) =>
          store.dispatch(CreateContactAction(email: email, fullName: fullName, esId: id)),
    );
  }

  @override
  List<Object?> get props => [autocompleteDisplayModels];
}

List<_SuggestionValue> _findSuggestionsForPattern(List<_SuggestionValue> suggestionValues, String pattern) {
  if (pattern == '') return suggestionValues;
  final cleanedPattern = pattern.replaceAllDiacritics().toLowerCase();
  final suggestions = suggestionValues.where((contact) {
    final name = contact.name.replaceAllDiacritics().toLowerCase();
    return name.contains(cleanedPattern);
  }).toList();
  suggestions.sort(
    (a, b) => a.name
        .replaceAllDiacritics()
        .indexOf(cleanedPattern)
        .compareTo(b.name.replaceAllDiacritics().indexOf(cleanedPattern)),
  );
  return suggestions;
}

class _SuggestionValue extends Equatable {
  final String id;
  final String name;
  final String? mail;
  final String? address;

  const _SuggestionValue({required this.id, required this.name, required this.mail, required this.address});

  _SuggestionValue.fromPsContact(PsContact contact)
      : name = contact.name.capitalizeName(),
        id = contact.id,
        mail = null,
        address = null;

  _SuggestionValue.fromPharmacieSuggestion(EtablissementDeSanteSuggestion healthcareStructure)
      : name = healthcareStructure.name?.capitalizeName() ?? '',
        id = healthcareStructure.id,
        mail = healthcareStructure.email,
        address = healthcareStructure.adresse;

  @override
  List<Object?> get props => [id, name, mail, address];
}

abstract class MessagerieAutocompleteItemDisplayModel extends Equatable {
  const MessagerieAutocompleteItemDisplayModel();

  @override
  List<Object?> get props => [];
}

class PsContactableHeaderDisplayModel extends MessagerieAutocompleteItemDisplayModel {
  const PsContactableHeaderDisplayModel();
}

class PharmacieFrequenteeHeaderDisplayModel extends MessagerieAutocompleteItemDisplayModel {
  const PharmacieFrequenteeHeaderDisplayModel();
}

class SearchEsDisplayModel extends MessagerieAutocompleteItemDisplayModel {
  final bool isPharmacieFrequenteeEmpty;

  String get labelSearchEs =>
      isPharmacieFrequenteeEmpty ? 'Rechercher une pharmacie' : 'Rechercher une autre pharmacie';

  const SearchEsDisplayModel({required this.isPharmacieFrequenteeEmpty});

  @override
  List<Object?> get props => [isPharmacieFrequenteeEmpty];
}

class LoadingHeaderDisplayModel extends MessagerieAutocompleteItemDisplayModel {
  const LoadingHeaderDisplayModel();
}

class LoadingItemDisplayModel extends MessagerieAutocompleteItemDisplayModel {
  const LoadingItemDisplayModel();
}

class EmptyMessageDisplayModel extends MessagerieAutocompleteItemDisplayModel {
  const EmptyMessageDisplayModel();
}

class ContactItemDisplayModel extends MessagerieAutocompleteItemDisplayModel {
  final String id;
  final String name;
  final String? mail;
  final String? adresse;
  final bool? isAPharmacie;

  const ContactItemDisplayModel({required this.id, required this.name, this.mail, this.adresse, this.isAPharmacie});

  factory ContactItemDisplayModel.computeIsAPharmacie({required String id, required String name}) {
    return ContactItemDisplayModel(
      id: id,
      name: name,
      mail: null,
      adresse: null,
      isAPharmacie: _buildIsAPharmacie(name),
    );
  }

  static bool _buildIsAPharmacie(String name) => name.toLowerCase().contains('pharmacie');

  ContactItemDisplayModel.fromPsContact(PsContact contact)
      : name = contact.name,
        id = contact.id,
        mail = null,
        adresse = null,
        isAPharmacie = _buildIsAPharmacie(contact.name);

  ContactItemDisplayModel.fromEnsEtablissementDeSante(EtablissementDeSante es)
      : name = es.nameWithAlias,
        id = es.idNat,
        mail = es.mail,
        adresse = es.address?.formattedAddress,
        isAPharmacie = es.activity == null ? _buildIsAPharmacie(es.nameWithAlias) : _buildIsAPharmacie(es.activity!);

  @override
  List<Object?> get props => [id, name, mail, adresse, isAPharmacie];
}
