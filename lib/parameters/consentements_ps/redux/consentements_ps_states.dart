/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'consentements_ps_redux.dart';

class ConsentementsPsListState extends Equatable {
  final AllPurposesStatus status;
  final List<EnsConsentementPs> consentementsPs;

  const ConsentementsPsListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.consentementsPs = const [],
  });

  @override
  List<Object?> get props => [status, consentementsPs];
}
