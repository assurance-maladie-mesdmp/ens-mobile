/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'unconcerned_redux.dart';

class SetUnconcernedAction {
  final SectionUnconcerned section;

  SetUnconcernedAction(this.section);
}

class _ProcessSetUnconcernedSuccessAction {
  final EnsUnconcerned unconcerned;

  _ProcessSetUnconcernedSuccessAction(this.unconcerned);
}

class _ProcessSetUnconcernedErrorAction {
  final SectionUnconcerned section;

  _ProcessSetUnconcernedErrorAction(this.section);
}
