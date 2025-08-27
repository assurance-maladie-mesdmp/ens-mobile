/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'profils_rattaches_redux.dart';

class ProfilsRattachesState extends Equatable {
  final AllPurposesStatus status;
  final List<EnsProfilRattache> profilsRattaches;

  const ProfilsRattachesState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.profilsRattaches = const [],
  });

  @override
  List<Object?> get props => [status, profilsRattaches];

  ProfilsRattachesState clone({
    AllPurposesStatus? status,
    List<EnsProfilRattache>? profilsRattaches,
  }) {
    return ProfilsRattachesState(
      status: status ?? this.status,
      profilsRattaches: profilsRattaches ?? this.profilsRattaches,
    );
  }
}
