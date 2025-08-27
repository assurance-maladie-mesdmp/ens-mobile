/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'raccourcis_redux.dart';

class RaccourcisState extends Equatable {
  final List<Raccourcis> raccourcisParCategorie;
  final List<Raccourcis> raccourcis;

  const RaccourcisState({
    this.raccourcisParCategorie = const [],
    this.raccourcis = const [],
  });

  RaccourcisState clone({
    List<Raccourcis>? raccourcisParCategorie,
    List<Raccourcis>? raccourcis,
  }) {
    return RaccourcisState(
      raccourcisParCategorie: raccourcisParCategorie ?? this.raccourcisParCategorie,
      raccourcis: raccourcis ?? this.raccourcis,
    );
  }

  @override
  List<Object?> get props => [raccourcis, raccourcisParCategorie];
}
