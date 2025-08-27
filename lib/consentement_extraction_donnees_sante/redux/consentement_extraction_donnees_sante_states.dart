/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'consentement_extraction_donnees_sante_redux.dart';

class ConsentementExtractionDonneesSanteState extends Equatable {
  final AllPurposesStatus status;
  final bool? hasAcceptedToConsent;
  final bool isWhitelisted;

  const ConsentementExtractionDonneesSanteState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.hasAcceptedToConsent,
    this.isWhitelisted = false,
  });

  ConsentementExtractionDonneesSanteState clone({
    AllPurposesStatus? status,
    Optional<bool>? hasAcceptedToConsentOptional,
    bool? isWhitelisted,
  }) {
    return ConsentementExtractionDonneesSanteState(
      status: status ?? this.status,
      hasAcceptedToConsent: hasAcceptedToConsentOptional != null
          ? hasAcceptedToConsentOptional.orElseNullable(hasAcceptedToConsent)
          : hasAcceptedToConsent,
      isWhitelisted: isWhitelisted ?? this.isWhitelisted,
    );
  }

  bool get shouldDisplayConsentementOnFirstConnexion {
    return status.isSuccess() && isWhitelisted && hasAcceptedToConsent == null;
  }

  @override
  List<Object?> get props => [status, hasAcceptedToConsent, isWhitelisted];
}
