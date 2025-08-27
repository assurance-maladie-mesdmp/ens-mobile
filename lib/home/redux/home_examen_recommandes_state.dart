/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'home_examen_recommandes_redux.dart';

class HomeExamenRecommandesState extends Equatable {
  final AllPurposesStatus status;
  final int examensRecommandesAPlanifierLength;

  const HomeExamenRecommandesState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.examensRecommandesAPlanifierLength = 0,
  });

  @override
  List<Object?> get props => [status, examensRecommandesAPlanifierLength];
}
