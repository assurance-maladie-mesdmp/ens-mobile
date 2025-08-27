/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'search_es_redux.dart';

class SearchEsAction {
  final RechercheEsType rechercheEsType;
  final String name;
  final String? departmentCode;
  final String? cityCode;
  final CodePostaux zipCodes;

  SearchEsAction({
    required this.rechercheEsType,
    required this.name,
    required this.departmentCode,
    required this.cityCode,
    required this.zipCodes,
  });
}

class _ProcessSearchEsSuccessAction {
  final List<EtablissementDeSante> etablissementsDeSante;

  _ProcessSearchEsSuccessAction(this.etablissementsDeSante);
}

class _ProcessSearchEsErrorAction {}

class ClearEsResultsAction {}
