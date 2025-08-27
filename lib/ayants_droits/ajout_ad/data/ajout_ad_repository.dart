/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/data/ajout_ad_repository_mapper.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/domain/ad_to_add.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/domain/non_activable_ad.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/domain/profile_activation_result.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ajout_ad_active_profils_ads.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ajout_ad_get_activation_profils_ads_result.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ajout_ad_get_ads_a_ajouter.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IAjoutAdRepository {
  Future<RequestResult<GetAdToAddResponse>> getAdsAAjouter(String patientId);

  Future<RequestResult<void>> activateAdsProfils(List<int> adIds);

  Future<RequestResult<IActivateAdsProfilsResponse>> getActivationProfilsAdsResult({
    required String patientId,
    required List<int> adIds,
  });
}

class GetAdToAddResponse extends Equatable {
  final List<AdToAdd> adsToAdd;
  final List<NonActivableAd> nonActivableAds;

  const GetAdToAddResponse({required this.adsToAdd, required this.nonActivableAds});

  @override
  List<Object?> get props => [adsToAdd, nonActivableAds];
}

class IActivateAdsProfilsResponse extends Equatable {
  final List<ProfileActivationResult> profilsActivationSucceed;
  final List<ProfileActivationResult> profilsActivationFailed;

  const IActivateAdsProfilsResponse({required this.profilsActivationSucceed, required this.profilsActivationFailed});

  @override
  List<Object?> get props => [profilsActivationSucceed, profilsActivationFailed];
}

class AjoutAdRepository extends IAjoutAdRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  AjoutAdRepository({required this.ferryClient, required this.crashlytics});

  @override
  Future<RequestResult<GetAdToAddResponse>> getAdsAAjouter(String patientId) async {
    try {
      final query = Gget_ads_a_ajouterReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.accountGetAccountFamilyInput.patientId = patientId
          ..vars.accountGetAccountFamilyInput.profilsListIndex = ListBuilder([]),
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getAccountFamily;
      if (result == null) {
        return RequestResultError.genericError();
      }

      final activablesAds = AjoutAdRepositoryMapper.toAdAAjouter(result.profilsToActivate?.toList());
      final nonActivableAds = AjoutAdRepositoryMapper.toAdNonActivable(result.profilsNonActivable?.toList());
      return RequestResultSuccess(GetAdToAddResponse(adsToAdd: activablesAds, nonActivableAds: nonActivableAds));
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> activateAdsProfils(List<int> adIds) async {
    try {
      final mutation = Gactive_profils_adsReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.accountActiveProfilsInput.profilsListIndex = ListBuilder(adIds),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.activeProfils;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      }
      return RequestResultError.genericError();
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<IActivateAdsProfilsResponse>> getActivationProfilsAdsResult({
    required String patientId,
    required List<int> adIds,
  }) async {
    try {
      final query = Gget_activation_profils_ads_resultReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.accountGetAccountFamilyInput.patientId = patientId
          ..vars.accountGetAccountFamilyInput.profilsListIndex = ListBuilder(adIds),
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getAccountFamily;
      if (result == null) {
        return RequestResultError.genericError();
      }
      final adsActivated = result.profilsActivationSucceed;
      final adsNonActivated = result.profilsActivationFailed;
      return RequestResultSuccess(
        IActivateAdsProfilsResponse(
          profilsActivationSucceed: AjoutAdRepositoryMapper.toActivationProfilResultat(adsActivated?.toList()),
          profilsActivationFailed: AjoutAdRepositoryMapper.toActivationProfilResultat(adsNonActivated?.toList()),
        ),
      );
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
