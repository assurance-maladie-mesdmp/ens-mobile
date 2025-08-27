/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'antecedents_familiaux_redux.dart';

class FetchAntecedentsFamiliauxAction {
  final bool force;

  const FetchAntecedentsFamiliauxAction({this.force = false});
}

class ProcessFetchAntecedentsFamiliauxSuccessAction {
  final List<EnsAntecedentFamilial> antecedentsFamiliaux;
  final DateTime? nonConcerneDepuis;

  ProcessFetchAntecedentsFamiliauxSuccessAction({required this.antecedentsFamiliaux, required this.nonConcerneDepuis});
}

class ProcessFetchAntecedentsFamiliauxErrorAction {}

class AddAntecedentFamilialAction {
  final EditingAntecedentFamilial editingAntecedentFamilial;

  AddAntecedentFamilialAction(this.editingAntecedentFamilial);
}

class ProcessAddOrUpdateAntecedentFamilialSuccessAction {}

class ProcessAddOrUpdateAntecedentFamilialErrorAction {}

class UpdateAntecedentFamilialAction {
  final EditingAntecedentFamilial editingAntecedentFamilial;

  UpdateAntecedentFamilialAction(this.editingAntecedentFamilial);
}

class DeleteAntecedentFamilialAction {
  final String antecedentFamilialId;

  DeleteAntecedentFamilialAction(this.antecedentFamilialId);
}

class ProcessDeleteAntecedentFamilialSuccessAction {
  final String antecedentFamilialId;

  ProcessDeleteAntecedentFamilialSuccessAction(this.antecedentFamilialId);
}
