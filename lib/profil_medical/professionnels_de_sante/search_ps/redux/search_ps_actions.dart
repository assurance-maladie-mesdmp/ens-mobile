/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'search_ps_redux.dart';

class SearchPsAction {
  final String lastname;
  final String firstname;
  final String departmentCode;
  final String cityCode;
  final CodePostaux zipCodes;
  final String? professionalActivityId;

  SearchPsAction({
    required this.lastname,
    required this.firstname,
    required this.departmentCode,
    required this.cityCode,
    required this.zipCodes,
    required this.professionalActivityId,
  });
}

class ClearPsResultsAction {}

class _ProcessSearchPsSuccessAction {
  final List<ProfessionnelDeSante> professionnelsDeSante;

  _ProcessSearchPsSuccessAction(this.professionnelsDeSante);
}

class _ProcessSearchPsErrorAction {}

class SelectPsAction {
  final String selectedPsId;

  SelectPsAction(this.selectedPsId);
}

class _ProcessSelectPsAction {
  final ProfessionnelDeSante selectedPs;

  _ProcessSelectPsAction(this.selectedPs);
}
