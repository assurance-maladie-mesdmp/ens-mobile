/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'etablissements_de_sante_redux.dart';

class FetchEtablissementsDeSanteAction {
  final bool force;
  final bool isFromAddEs;

  FetchEtablissementsDeSanteAction({this.force = false, this.isFromAddEs = false});
}

class _ProcessFetchEtablissementsDeSanteSuccessAction {
  final List<EtablissementDeSante> etablissementsDeSante;

  _ProcessFetchEtablissementsDeSanteSuccessAction(this.etablissementsDeSante);
}

class _ProcessFetchEtablissementsDeSanteErrorAction {}

class FetchEtablissementDeSanteFromIdNatDetailsAction {
  final String idNat;

  FetchEtablissementDeSanteFromIdNatDetailsAction(this.idNat);
}

class _ProcessFetchEtablissementDeSanteByIdNatDetailsSuccessAction {
  final String idNat;
  final EtablissementDeSante etablissementDeSante;

  _ProcessFetchEtablissementDeSanteByIdNatDetailsSuccessAction({
    required this.idNat,
    required this.etablissementDeSante,
  });
}

class _ProcessFetchEtablissementDeSanteByIdNatDetailsErrorAction {
  final String idNat;

  _ProcessFetchEtablissementDeSanteByIdNatDetailsErrorAction({required this.idNat});
}

class FetchPharmaciesSuggestionsAction {
  final bool force;

  const FetchPharmaciesSuggestionsAction({this.force = false});
}

class _ProcessFetchPharmaciesSuggestionsSuccessAction {
  final List<EtablissementDeSanteSuggestion> suggestions;

  const _ProcessFetchPharmaciesSuggestionsSuccessAction(this.suggestions);
}

class _ProcessFetchPharmaciesSuggestionsErrorAction {}

class AddEsAction {
  final String etablissementDeSanteId;

  AddEsAction(this.etablissementDeSanteId);
}

class _ProcessAddEsSuccessAction {
  final String etablissementDeSanteId;

  _ProcessAddEsSuccessAction(this.etablissementDeSanteId);
}

class _ProcessAddEsErrorAction {}

class RemoveEsAction {
  final String? organizationId;

  RemoveEsAction(this.organizationId);
}

class _ProcessRemoveEsSuccessAction {
  final String organizationId;

  _ProcessRemoveEsSuccessAction(this.organizationId);
}
