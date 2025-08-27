/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'consentements_ps_redux.dart';

class FetchConsentementsPsAction {
  final bool force;

  const FetchConsentementsPsAction({this.force = false});
}

class _ProcessFetchConsentementsPsSuccessAction {
  final List<EnsConsentementPs> consentementPs;

  _ProcessFetchConsentementsPsSuccessAction(this.consentementPs);
}

class _ProcessFetchConsentementsPsErrorAction {}

class BlockPsAction {
  final String psIdNat;

  BlockPsAction(this.psIdNat);
}

class UnblockPsAction {
  final String psIdNat;
  final String consentementId;

  UnblockPsAction({required this.psIdNat, required this.consentementId});
}
