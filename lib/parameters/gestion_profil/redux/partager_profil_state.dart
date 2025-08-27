/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'partager_profil_redux.dart';

class PartagerProfilState extends Equatable {
  final AllPurposesStatus status;
  final List<PartagerProfilGestionnaire> gestionnaires;

  const PartagerProfilState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.gestionnaires = const [],
  });

  @override
  List<Object?> get props => [status, gestionnaires];

  PartagerProfilState clone({
    AllPurposesStatus? status,
    List<PartagerProfilGestionnaire>? gestionnaires,
  }) {
    return PartagerProfilState(
      status: status ?? this.status,
      gestionnaires: gestionnaires ?? this.gestionnaires,
    );
  }
}
