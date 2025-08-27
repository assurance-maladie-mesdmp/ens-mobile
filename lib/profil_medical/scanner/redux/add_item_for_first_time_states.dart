/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'add_item_for_first_time_redux.dart';

class AddItemForFirstTimeState extends Equatable {
  final List<EnsPmlSection> firstTimeItemAdded;

  const AddItemForFirstTimeState({
    this.firstTimeItemAdded = const [],
  });

  @override
  List<Object?> get props => [firstTimeItemAdded];
}
