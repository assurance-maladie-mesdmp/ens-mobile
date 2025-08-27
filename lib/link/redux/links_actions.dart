/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

enum RemovedEntity { TRAITEMENT, DOCUMENT }

class DeleteLinkAction {
  final String linkId;
  final RemovedEntity removedEntity;
  final Function() onDeleteSuccess;

  DeleteLinkAction({
    required this.linkId,
    required this.removedEntity,
    required this.onDeleteSuccess,
  });
}
