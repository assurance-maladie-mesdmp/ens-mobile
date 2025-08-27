/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'handicaps_redux.dart';

class FetchHandicapsAction {
  final bool force;

  const FetchHandicapsAction({this.force = false});
}

class _ProcessFetchHandicapsSuccessAction {
  final List<EnsHandicap> handicaps;
  final DateTime? nonConcerneDepuis;

  _ProcessFetchHandicapsSuccessAction({required this.handicaps, this.nonConcerneDepuis});
}

class _ProcessFetchHandicapsErrorAction {}

class SaveHandicapAction {
  final EditingHandicap editingHandicap;
  bool isUpdating;

  SaveHandicapAction({required this.editingHandicap, required this.isUpdating});
}

class _ProcessSaveHandicapSuccessAction {
  final EditingHandicap editingHandicap;

  _ProcessSaveHandicapSuccessAction(this.editingHandicap);
}

class _ProcessSaveHandicapErrorAction {}

class DeleteHandicapAction {
  final String handicapId;

  DeleteHandicapAction(this.handicapId);
}

class _ProcessDeleteHandicapSuccessAction {
  final String handicapId;

  _ProcessDeleteHandicapSuccessAction(this.handicapId);
}
