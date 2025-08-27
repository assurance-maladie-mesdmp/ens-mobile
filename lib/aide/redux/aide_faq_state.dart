/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'aide_faq_redux.dart';

class AideFaqState extends Equatable {
  final AllPurposesStatus status;
  final Map<String, FaqItem> items;

  const AideFaqState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.items = const {},
  });

  @override
  List<Object?> get props => [items, status];
}
