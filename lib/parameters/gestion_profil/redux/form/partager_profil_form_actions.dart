/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'partager_profil_form_redux.dart';

class PartagerProfilFormAction {
  final String lastName;
  final String firstName;
  final DateTime birthDate;
  final String numeroSecu;

  PartagerProfilFormAction({
    required this.lastName,
    required this.firstName,
    required this.birthDate,
    required this.numeroSecu,
  });
}

class _ProcessPartagerProfilFormSuccessAction {}

class _ProcessPartagerProfilFormNetworkErrorAction {}

class _ProcessPartagerProfilFormErrorAction {}

class SaveNumeroSecuFromScanRepresentantLegalAction {
  final String numeroSecu;

  const SaveNumeroSecuFromScanRepresentantLegalAction(this.numeroSecu);
}

class ResetNumeroSecuFromScanRepresentantLegalAction {}
