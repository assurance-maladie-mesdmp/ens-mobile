/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

enum ConfirmationPartageProfilStatut {
  ACCEPTED,
  REFUSED,
  UNKNOWN;

  bool isAccepted() => this == ACCEPTED;

  bool isRefused() => this == REFUSED;

  bool isNotAccepted() => this != ACCEPTED;

  bool isNotRefused() => this != REFUSED;
}
