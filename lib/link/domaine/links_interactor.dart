/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/link/data/links_repository.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/random_generator.dart';
import 'package:redux/redux.dart';

abstract class ILinksInMemoryInteractor {
  Future<RequestResult> deleteTraitementLinkedToMaladie({
    required Store<EnsState> store,
    required String maladieId,
    required String traitementId,
  });

  Future<RequestResult> deleteTraitementLinkedToAllergie({
    required Store<EnsState> store,
    required String allergieId,
    required String traitementId,
  });

  Future<RequestResult> deleteDocumentLinkedToMaladie({
    required Store<EnsState> store,
    required String maladieId,
    required String documentId,
  });

  Future<RequestResult> deleteDocumentLinkedToHospitalisation({
    required Store<EnsState> store,
    required String hospitalisationId,
    required String documentId,
  });

  void addDocumentToMaladieLink(String maladieId, String documentId, String linkId);

  void addTraitementToMaladieLink({required String maladieId, required String traitementId, required String linkId});

  void addDocumentToHospitalisationLink(String hospitalisationId, String documentId, String linkId);

  void addTraitementToAllergiesLink({required String allergieId, required String traitementId, required String linkId});

  String? getDocumentToHospitalisationLinkId(String hospitalisationId, String documentId);

  String? getDocumentToMaladieLinkId(String maladieId, String documentId);

  String? getTraitementToMaladieLinkId(String maladieId, String traitementId);

  String getTraitementToAllergieLinkId(String allergieId, String traitementId);

  String? getTraitementToAllergieLinkIdForDeleteUseCase(String allergieId, String traitementId);
}

class LinksInMemoryInteractor extends ILinksInMemoryInteractor {
  final ILinksRepository _linksRepository;
  final IRandomGenerator _randomGenerator;
  final maladiesTraitementLinkMap = <String, Map<String, String>>{};
  final maladiesDocumentLinkMap = <String, Map<String, String>>{};
  final hospitalisationDocumentLinkMap = <String, Map<String, String>>{};
  final allergiesTraitementLinkMap = <String, Map<String, String>>{};

  LinksInMemoryInteractor(this._linksRepository, this._randomGenerator);

  @override
  Future<RequestResult> deleteTraitementLinkedToMaladie({
    required Store<EnsState> store,
    required String maladieId,
    required String traitementId,
  }) async {
    final patientId = UserSelectors.getPatientId(store.state);
    final linkId = maladiesTraitementLinkMap[maladieId]?[traitementId];
    if (linkId == null) {
      return RequestResultError.genericError();
    }
    final result = await _linksRepository.removeLinkBetweenEntities(
      patientId,
      linkId,
    );
    result.onSuccess((successResult) {
      maladiesTraitementLinkMap[maladieId]!.remove(traitementId);
    });
    return result;
  }

  @override
  Future<RequestResult> deleteDocumentLinkedToMaladie({
    required Store<EnsState> store,
    required String maladieId,
    required String documentId,
  }) async {
    final patientId = UserSelectors.getPatientId(store.state);
    final linkId = maladiesDocumentLinkMap[maladieId]?[documentId];
    if (linkId == null) {
      return RequestResultError.genericError();
    }
    final RequestResult<String> result = await _linksRepository.removeLinkBetweenEntities(
      patientId,
      linkId,
    );
    result.onSuccess((successResult) {
      maladiesDocumentLinkMap[maladieId]!.remove(documentId);
    });
    return result;
  }

  @override
  Future<RequestResult> deleteTraitementLinkedToAllergie({
    required Store<EnsState> store,
    required String allergieId,
    required String traitementId,
  }) async {
    final patientId = UserSelectors.getPatientId(store.state);
    final linkId = allergiesTraitementLinkMap[allergieId]?[traitementId];
    if (linkId == null) {
      return RequestResultError.genericError();
    }
    final result = await _linksRepository.removeLinkBetweenEntities(
      patientId,
      linkId,
    );
    result.onSuccess((successResult) {
      allergiesTraitementLinkMap[allergieId]!.remove(traitementId);
    });
    return result;
  }

  @override
  Future<RequestResult> deleteDocumentLinkedToHospitalisation({
    required Store<EnsState> store,
    required String hospitalisationId,
    required String documentId,
  }) async {
    final patientId = UserSelectors.getPatientId(store.state);
    final linkId = hospitalisationDocumentLinkMap[hospitalisationId]?[documentId];
    if (linkId == null) {
      return RequestResultError.genericError();
    }
    final RequestResult<String> result = await _linksRepository.removeLinkBetweenEntities(
      patientId,
      linkId,
    );
    result.onSuccess((successResult) {
      hospitalisationDocumentLinkMap[hospitalisationId]!.remove(documentId);
    });
    return result;
  }

  @override
  void addDocumentToMaladieLink(String maladieId, String documentId, String linkId) {
    _addOrModifyLink(maladiesDocumentLinkMap, maladieId, documentId, linkId);
  }

  @override
  void addTraitementToMaladieLink({required String maladieId, required String traitementId, required String linkId}) {
    _addOrModifyLink(maladiesTraitementLinkMap, maladieId, traitementId, linkId);
  }

  @override
  void addDocumentToHospitalisationLink(String hospitalisationId, String documentId, String linkId) {
    _addOrModifyLink(hospitalisationDocumentLinkMap, hospitalisationId, documentId, linkId);
  }

  @override
  void addTraitementToAllergiesLink({
    required String allergieId,
    required String traitementId,
    required String linkId,
  }) {
    _addOrModifyLink(allergiesTraitementLinkMap, allergieId, traitementId, linkId);
  }

  void _addOrModifyLink(Map<String, Map<String, String>> map, String parentId, String childId, String linkId) {
    if (map[parentId] == null) {
      map[parentId] = {
        childId: linkId,
      };
    } else {
      map[parentId]![childId] = linkId;
    }
  }

  @override
  String? getDocumentToHospitalisationLinkId(String hospitalisationId, String documentId) {
    return hospitalisationDocumentLinkMap[hospitalisationId]?[documentId];
  }

  @override
  String? getDocumentToMaladieLinkId(String maladieId, String documentId) {
    return maladiesDocumentLinkMap[maladieId]?[documentId];
  }

  @override
  String? getTraitementToMaladieLinkId(String maladieId, String traitementId) {
    return maladiesTraitementLinkMap[maladieId]?[traitementId];
  }

  @override
  String getTraitementToAllergieLinkId(String allergieId, String traitementId) {
    final variableName = allergiesTraitementLinkMap[allergieId]?[traitementId];
    return variableName ?? _randomGenerator.generateRandomString(6);
  }

  @override
  String? getTraitementToAllergieLinkIdForDeleteUseCase(String allergieId, String traitementId) {
    return allergiesTraitementLinkMap[allergieId]?[traitementId];
  }
}
