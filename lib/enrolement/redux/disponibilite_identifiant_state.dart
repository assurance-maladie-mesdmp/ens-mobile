/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'enrolement_redux.dart';

class DisponibiliteIdentifiantState extends Equatable {
  final AllPurposesStatus status;
  final DisponibiliteIdentifiant disponibiliteIdentifiant;

  const DisponibiliteIdentifiantState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.disponibiliteIdentifiant = const DisponibiliteIdentifiant(isDisponible: null, suggestions: []),
  });

  DisponibiliteIdentifiantState clone({
    AllPurposesStatus? status,
    DisponibiliteIdentifiant? disponibiliteIdentifiant,
  }) {
    return DisponibiliteIdentifiantState(
      status: status ?? this.status,
      disponibiliteIdentifiant: disponibiliteIdentifiant ?? this.disponibiliteIdentifiant,
    );
  }

  @override
  List<Object?> get props => [status, disponibiliteIdentifiant];
}
