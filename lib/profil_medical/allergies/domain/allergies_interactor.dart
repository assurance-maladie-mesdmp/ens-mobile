/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:core';

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/link/domaine/links_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/data/allergie_repo_input.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/data/allergies_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/data/traitements_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/traitement_temporaire.dart';

abstract class IAllergiesInteractor {
  Future<RequestResult<void>> addAllergie({
    required String patientId,
    required String? name,
    required String? comment,
    required List<String> traitementsInMesToLink,
    required List<TraitementTemporaire> newTraitementsToLink,
  });

  Future<RequestResult<void>> updateAllergie({
    required String patientId,
    required String id,
    required String? name,
    required String? comment,
    required List<String> traitementsInMesToLink,
    required List<TraitementTemporaire> newTraitementsToLink,
  });
}

class AllergiesInteractor extends IAllergiesInteractor {
  final ITraitementsRepository _traitementsRepository;
  final ILinksInMemoryInteractor _linksInMemoryInteractor;
  final IAllergiesRepository _allergiesRepository;

  AllergiesInteractor(this._traitementsRepository, this._linksInMemoryInteractor, this._allergiesRepository);

  @override
  Future<RequestResult<void>> addAllergie({
    required String patientId,
    required String? name,
    required String? comment,
    required List<String> traitementsInMesToLink,
    required List<TraitementTemporaire> newTraitementsToLink,
  }) async {
    final List<String> allTraitementIds = List.from(traitementsInMesToLink);

    if (newTraitementsToLink.isNotEmpty) {
      final result = await _traitementsRepository.addTraitements(patientId, newTraitementsToLink);
      if (result.isError()) {
        return RequestResultError.genericError();
      }
      result.onSuccess((data) {
        allTraitementIds.addAll(data);
      });
    }
    return _allergiesRepository.addAllergie(
      patientId,
      AddAllergieInputModel(
        name: name,
        comment: comment,
        linkedTraitementsIds: allTraitementIds,
      ),
    );
  }

  @override
  Future<RequestResult<void>> updateAllergie({
    required String patientId,
    required String id,
    required String? name,
    required String? comment,
    required List<String> traitementsInMesToLink,
    required List<TraitementTemporaire> newTraitementsToLink,
  }) async {
    final List<String> allTraitementIds = List.from(traitementsInMesToLink);

    if (newTraitementsToLink.isNotEmpty) {
      final result = await _traitementsRepository.addTraitements(patientId, newTraitementsToLink);
      if (result.isError()) {
        return RequestResultError.genericError();
      }
      result.onSuccess((data) {
        allTraitementIds.addAll(data);
      });
    }
    var traitementsLinkMap = <String, String>{};

    if (allTraitementIds.isNotEmpty) {
      traitementsLinkMap = Map<String, String>.fromEntries(
        allTraitementIds.map(
          (traitementId) => MapEntry(
            traitementId,
            _linksInMemoryInteractor.getTraitementToAllergieLinkId(id, traitementId),
          ),
        ),
      );
    }

    return _allergiesRepository.updateAllergie(
      patientId,
      UpdateAllergieInputModel(
        id: id,
        name: name,
        comment: comment,
        traitementsLinks: traitementsLinkMap,
      ),
    );
  }
}
