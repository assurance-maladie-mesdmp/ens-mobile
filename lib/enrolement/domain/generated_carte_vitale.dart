/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class GeneratedCarteVitale extends Equatable {
  final String? nir;
  final String? numeroSerie;
  final DateTime? birthDate;

  const GeneratedCarteVitale({
    this.nir,
    this.numeroSerie,
    this.birthDate,
  });

  GeneratedCarteVitale clone({
    String? nir,
    String? numeroSerie,
    DateTime? birthDate,
  }) {
    return GeneratedCarteVitale(
      nir: nir ?? this.nir,
      numeroSerie: numeroSerie ?? this.numeroSerie,
      birthDate: birthDate ?? this.birthDate,
    );
  }

  @override
  List<Object?> get props => [nir, numeroSerie, birthDate];
}
