/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'consentement_extraction_donnees_sante_redux.dart';

class ProcessFetchConsentementExtractionDonneesSanteSuccessAction {
  final bool? hasAccepted;
  final bool? isWhitelisted;

  ProcessFetchConsentementExtractionDonneesSanteSuccessAction({this.hasAccepted, this.isWhitelisted});
}

class UpdateConsentementExtractionDonneesSanteAction {
  final bool hasAccepted;

  UpdateConsentementExtractionDonneesSanteAction(this.hasAccepted);
}

class _ProcessUpdateConsentementExtractionDonneesSanteSuccessAction {
  final bool hasAccepted;

  _ProcessUpdateConsentementExtractionDonneesSanteSuccessAction(this.hasAccepted);
}

class _ProcessUpdateConsentementExtractionDonneesSanteErrorAction {}
