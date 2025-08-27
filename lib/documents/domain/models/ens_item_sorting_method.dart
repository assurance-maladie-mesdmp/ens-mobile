/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/documents/screens/viewmodels/documents_screen_view_model.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

enum EnsItemSortingMethod {
  NEWEST,
  OLDEST,
  ITEM_TITLE_ALPHABETICAL_ORDER,
  ITEM_TITLE_REVERSE_ALPHABETICAL_ORDER,
  DOCUMENT_OWNER_ALPHABETICAL_ORDER,
  DOCUMENT_OWNER_REVERSE_ALPHABETICAL_ORDER;

  String get label {
    switch (this) {
      case EnsItemSortingMethod.NEWEST:
        return 'Par défaut : Plus récents';
      case EnsItemSortingMethod.OLDEST:
        return 'Plus anciens';
      case EnsItemSortingMethod.ITEM_TITLE_ALPHABETICAL_ORDER:
        return 'Nom : A à Z';
      case EnsItemSortingMethod.ITEM_TITLE_REVERSE_ALPHABETICAL_ORDER:
        return 'Nom : Z à A';
      case EnsItemSortingMethod.DOCUMENT_OWNER_ALPHABETICAL_ORDER:
        return 'Ajouté par : A à Z';
      case EnsItemSortingMethod.DOCUMENT_OWNER_REVERSE_ALPHABETICAL_ORDER:
        return 'Ajouté par : Z à A';
    }
  }

  List<ViewItem> sort(List<ViewItem> viewItemList) {
    if (viewItemList.isEmpty) return viewItemList;
    if (viewItemList.first is ViewItemDocument) {
      final a = _sortDocument(viewItemList.whereType<ViewItemDocument>().toList(), this);
      return a;
    }
    if (viewItemList.first is ViewItemDossier) {
      final b = _sortDossier(viewItemList.whereType<ViewItemDossier>().toList(), this);
      return b;
    }
    return viewItemList;
  }
}

List<ViewItemDocument> _sortDocument(List<ViewItemDocument> viewItemDocuments, EnsItemSortingMethod sortingMethod) {
  switch (sortingMethod) {
    case EnsItemSortingMethod.NEWEST:
      viewItemDocuments.sort((docA, docB) {
        return docB.document.date.compareTo(docA.document.date);
      });
    case EnsItemSortingMethod.OLDEST:
      viewItemDocuments.sort((docA, docB) {
        return docA.document.date.compareTo(docB.document.date);
      });
    case EnsItemSortingMethod.ITEM_TITLE_ALPHABETICAL_ORDER:
      viewItemDocuments.sort((docA, docB) {
        return docA.document.title.compareToIgnoringCase(docB.document.title);
      });
    case EnsItemSortingMethod.ITEM_TITLE_REVERSE_ALPHABETICAL_ORDER:
      viewItemDocuments.sort((docA, docB) {
        return docB.document.title.compareToIgnoringCase(docA.document.title);
      });
    case EnsItemSortingMethod.DOCUMENT_OWNER_ALPHABETICAL_ORDER:
      viewItemDocuments.sort((docA, docB) {
        return (docA.document.proprietaire.lastName ?? '')
            .compareToIgnoringCase(docB.document.proprietaire.lastName ?? '');
      });
    case EnsItemSortingMethod.DOCUMENT_OWNER_REVERSE_ALPHABETICAL_ORDER:
      viewItemDocuments.sort((docA, docB) {
        return (docB.document.proprietaire.lastName ?? '')
            .compareToIgnoringCase(docA.document.proprietaire.lastName ?? '');
      });
  }
  return viewItemDocuments;
}

List<ViewItemDossier> _sortDossier(List<ViewItemDossier> viewItemDossiers, EnsItemSortingMethod sortingMethod) {
  switch (sortingMethod) {
    case EnsItemSortingMethod.NEWEST:
    case EnsItemSortingMethod.OLDEST:
    case EnsItemSortingMethod.DOCUMENT_OWNER_ALPHABETICAL_ORDER:
    case EnsItemSortingMethod.DOCUMENT_OWNER_REVERSE_ALPHABETICAL_ORDER:
    case EnsItemSortingMethod.ITEM_TITLE_ALPHABETICAL_ORDER:
      viewItemDossiers.sort((dossierA, dossierB) {
        return dossierA.title.compareToIgnoringCase(dossierB.title);
      });
    case EnsItemSortingMethod.ITEM_TITLE_REVERSE_ALPHABETICAL_ORDER:
      viewItemDossiers.sort((dossierA, dossierB) {
        return dossierB.title.compareToIgnoringCase(dossierA.title);
      });
  }
  return viewItemDossiers;
}
