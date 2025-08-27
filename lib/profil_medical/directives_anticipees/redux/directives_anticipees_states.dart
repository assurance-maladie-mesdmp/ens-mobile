/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'directives_anticipees_redux.dart';

class DirectivesAnticipeesState extends Equatable {
  final AllPurposesWithEmptyStatus status;
  final String? documentId;

  const DirectivesAnticipeesState({
    this.status = AllPurposesWithEmptyStatus.NOT_LOADED,
    this.documentId,
  });

  bool get isSuccess => status.isSuccess && documentId != null;

  DirectivesAnticipeesState clone({
    AllPurposesWithEmptyStatus? status,
    String? documentId,
  }) {
    return DirectivesAnticipeesState(
      status: status ?? this.status,
      documentId: documentId ?? this.documentId,
    );
  }

  @override
  List<Object?> get props => [status, documentId];
}
