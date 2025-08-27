/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'search_es_redux.dart';

class SearchEsState extends Equatable {
  final AllPurposesStatus status;
  final List<EtablissementDeSante> etablissementsDeSante;

  const SearchEsState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.etablissementsDeSante = const [],
  });

  @override
  List<Object?> get props => [status, etablissementsDeSante];
}
