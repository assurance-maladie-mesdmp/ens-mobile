/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'catalogue_services_consentements_redux.dart';

class FetchServiceConsentementsAction {
  final String oid;
  final bool showLoadingPage;

  FetchServiceConsentementsAction(this.oid, {this.showLoadingPage = true});
}

class _ProcessFetchServiceConsentementsSuccessAction {
  final List<CatalogueServiceConsentement> consentements;

  _ProcessFetchServiceConsentementsSuccessAction(this.consentements);
}

class _ProcessFetchServiceConsentementsErrorAction {}

class AddConsentementForServiceByOidAction {
  final String oid;
  final String context;

  AddConsentementForServiceByOidAction(this.oid, this.context);
}

class RemoveConsentementForServiceByOidAction {
  final String oid;
  final String context;

  RemoveConsentementForServiceByOidAction(this.oid, this.context);
}

class UnsynchronizeServiceAction {
  final String oid;
  final String name;

  UnsynchronizeServiceAction(this.oid, this.name);
}

class UpdateConsentementAfterMajoriteAction {
  final String oid;

  UpdateConsentementAfterMajoriteAction(this.oid);
}

class _ProcessUpdateConsentementAfterMajoriteSuccessAction {
  final String oid;

  _ProcessUpdateConsentementAfterMajoriteSuccessAction(this.oid);
}
