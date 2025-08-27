/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class ProfessionnelDeSanteDocumentsListViewModel extends Equatable {
  final List<EnsDocument> documents;

  const ProfessionnelDeSanteDocumentsListViewModel._internal({required this.documents});

  factory ProfessionnelDeSanteDocumentsListViewModel(Store<EnsState> store, String psNatId) {
    final docsLinkToPs = store.state.documentsState.documentsListState.documents.values
        .where((doc) => doc.proprietaire.id == psNatId)
        .toList();
    return ProfessionnelDeSanteDocumentsListViewModel._internal(documents: docsLinkToPs);
  }

  @override
  List<Object?> get props => [documents];
}
