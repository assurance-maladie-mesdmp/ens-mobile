/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'partager_profil_form_redux.dart';

class PartagerProfilFormState extends Equatable {
  final PartagerProfilFromStatus status;
  final String? numeroSecuFromScan;

  const PartagerProfilFormState({
    this.status = PartagerProfilFromStatus.NOT_LOADED,
    this.numeroSecuFromScan,
  });

  @override
  List<Object?> get props => [status, numeroSecuFromScan];

  PartagerProfilFormState clone({
    PartagerProfilFromStatus? status,
    Optional<String>? numeroSecuFromScanOptional,
  }) {
    return PartagerProfilFormState(
      status: status ?? this.status,
      numeroSecuFromScan:
          numeroSecuFromScanOptional != null ? numeroSecuFromScanOptional.orElseNullable(null) : numeroSecuFromScan,
    );
  }
}
