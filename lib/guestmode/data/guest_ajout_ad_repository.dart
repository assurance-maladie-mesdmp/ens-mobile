/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/data/ajout_ad_repository.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/domain/ad_to_add.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/domain/non_activable_ad.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';

class GuestAjoutAdRepository extends IAjoutAdRepository {
  @override
  Future<RequestResult<GetAdToAddResponse>> getAdsAAjouter(String patientId) async {
    return RequestResultSuccess(
      const GetAdToAddResponse(
        adsToAdd: [
          AdToAdd(
            id: 1,
            firstName: 'John',
            lastName: 'Doe',
            status: AdToAddStatus.EN_ATTENTE,
            hasDeleteRequest: false,
          ),
          AdToAdd(
            id: 2,
            firstName: 'Jane',
            lastName: 'Doe',
            status: AdToAddStatus.EN_ATTENTE,
            hasDeleteRequest: false,
          ),
        ],
        nonActivableAds: [
          NonActivableAd(
            firstName: 'Jane',
            lastName: 'Doe',
            status: AdToAddStatus.OPPOSE,
          ),
          NonActivableAd(
            firstName: 'John',
            lastName: 'Doe',
            status: AdToAddStatus.CLOTURE,
          ),
        ],
      ),
    );
  }

  @override
  Future<RequestResult<void>> activateAdsProfils(List<int> adIds) async {
    return RequestResultSuccess(null);
  }

  @override
  Future<RequestResult<IActivateAdsProfilsResponse>> getActivationProfilsAdsResult({
    required String patientId,
    required List<int> adIds,
  }) async {
    return RequestResultSuccess(
      const IActivateAdsProfilsResponse(
        profilsActivationSucceed: [],
        profilsActivationFailed: [],
      ),
    );
  }
}
