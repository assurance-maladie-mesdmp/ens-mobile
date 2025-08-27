/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'catalogue_services_consentements_redux.dart';

class CatalogueServiceConsentementsState extends Equatable {
  final AllPurposesStatus status;
  final List<CatalogueServiceConsentement> consentements;

  const CatalogueServiceConsentementsState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.consentements = const [],
  });

  CatalogueServiceConsentementsState clone({
    AllPurposesStatus? status,
    List<CatalogueServiceConsentement>? consentements,
    AllPurposesStatus? updateConsentementsStatus,
  }) {
    return CatalogueServiceConsentementsState(
      status: status ?? this.status,
      consentements: consentements ?? this.consentements,
    );
  }

  @override
  List<Object?> get props => [status, consentements];
}
