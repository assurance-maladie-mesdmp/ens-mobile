/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/editing_hospitalisation.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/ens_hospitalisation.dart';

class FetchHospitalisationsAction {
  final bool force;

  const FetchHospitalisationsAction({this.force = false});
}

class ProcessFetchHospitalisationsSuccessAction {
  final List<EnsHospitalisation> hospitalisations;
  final DateTime? nonConcerneDepuis;

  ProcessFetchHospitalisationsSuccessAction({required this.hospitalisations, required this.nonConcerneDepuis});
}

class ProcessFetchHospitalisationsErrorAction {}

class AddHospitalisationAction {
  final EditingHospitalisation editingHospitalisation;
  final List<DocumentEditionCreation> docsToCreateAndLink;

  AddHospitalisationAction(this.editingHospitalisation, this.docsToCreateAndLink);
}

class ProcessAddOrUpdateHospitalisationSuccessAction {
  final EditingHospitalisation editingHospitalisation;

  ProcessAddOrUpdateHospitalisationSuccessAction(this.editingHospitalisation);
}

class ProcessAddOrUpdateHospitalisationErrorAction {}

class UpdateHospitalisationAction {
  final EditingHospitalisation editingHospitalisation;
  final List<DocumentEditionCreation> docsToCreateAndLink;

  UpdateHospitalisationAction(this.editingHospitalisation, this.docsToCreateAndLink);
}

class DeleteHospitalisationAction {
  final String hospitalisationId;

  DeleteHospitalisationAction(this.hospitalisationId);
}

class ProcessDeleteHospitalisationSuccessAction {
  final String hospitalisationId;

  ProcessDeleteHospitalisationSuccessAction(this.hospitalisationId);
}

class RemoveDocumentLinkedToHospitalisationAction {
  final String hospitalisationId;
  final String documentId;

  RemoveDocumentLinkedToHospitalisationAction({
    required this.hospitalisationId,
    required this.documentId,
  });
}

class ProcessDocumentRemovedFromHospitalisationAction {
  final String hospitalisationId;
  final String documentId;

  ProcessDocumentRemovedFromHospitalisationAction(this.hospitalisationId, this.documentId);
}
