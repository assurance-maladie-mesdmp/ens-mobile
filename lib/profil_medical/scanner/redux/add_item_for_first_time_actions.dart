/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'add_item_for_first_time_redux.dart';

class CheckIsAddItemForFirstTimeAction {
  final EnsPmlSection pmlSection;

  const CheckIsAddItemForFirstTimeAction(this.pmlSection);
}

class _ProcessCheckIsAddItemForFirstTimeAction {
  final EnsPmlSection pmlSection;
  final bool isFirstTime;

  _ProcessCheckIsAddItemForFirstTimeAction(this.pmlSection, this.isFirstTime);
}

class AddedItemForFirstTimeAction {
  final EnsPmlSection pmlSection;

  AddedItemForFirstTimeAction(this.pmlSection);
}
