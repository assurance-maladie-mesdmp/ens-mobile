/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_notification_get_preference_notification.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_notification_set_preference_notification.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/parameters/preference_notification/domain/preference_notification.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IPreferenceNotificationRepository {
  Future<RequestResult<List<PreferenceNotification>>> getPreferenceNotification(String patientId);

  Future<RequestResult<void>> setPreferenceNotification(
    String patientId,
    PreferenceNotification preferenceNotification,
  );
}

class PreferenceNotificationRepository extends IPreferenceNotificationRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  PreferenceNotificationRepository({required this.ferryClient, required this.crashlytics});

  @override
  Future<RequestResult<List<PreferenceNotification>>> getPreferenceNotification(String patientId) async {
    try {
      final query = Gget_preference_notificationReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.getPersonalInformationInput.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getPreferenceNotification;
      if (result == null || result.preferenceNotification == null) {
        return RequestResultError<List<PreferenceNotification>>.genericError();
      }

      final preferenceNotification = result.preferenceNotification!
          .map(
            (preference) {
              final typePreferenceNotification = _toTypePreferenceNotification(preference.typeNotification);
              if (typePreferenceNotification == null) {
                return null;
              } else {
                return PreferenceNotification(
                  typePreferenceNotification: typePreferenceNotification,
                  isActive: preference.isActive,
                );
              }
            },
          )
          .nonNulls
          .toList();

      return RequestResultSuccess(preferenceNotification);
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> setPreferenceNotification(
    String patientId,
    PreferenceNotification preferenceNotification,
  ) async {
    final mutation = Gset_preference_notificationReq(
      (builder) => builder
        ..fetchPolicy = FetchPolicy.NetworkOnly
        ..vars.changePreferenceNotificationInput.patientId = patientId
        ..vars.changePreferenceNotificationInput.typeNotification =
            _toGPreferenceNotificationEnum(preferenceNotification.typePreferenceNotification)
        ..vars.changePreferenceNotificationInput.isActive = preferenceNotification.isActive,
    );

    try {
      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.setPreferenceNotification;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  TypePreferenceNotification? _toTypePreferenceNotification(GPreferenceNotificationEnum typePreferenceNotification) {
    return switch (typePreferenceNotification) {
      GPreferenceNotificationEnum.NOTIF_MESSAGE => TypePreferenceNotification.NOTIF_MESSAGE,
      GPreferenceNotificationEnum.NOTIF_DOCUMENT => TypePreferenceNotification.NOTIF_DOCUMENT,
      GPreferenceNotificationEnum.NOTIF_APPOINTMENT => TypePreferenceNotification.NOTIF_APPOINTMENT,
      GPreferenceNotificationEnum.NOTIF_SYNCHRONIZED_SERVICE => TypePreferenceNotification.NOTIF_SYNCHRONIZED_SERVICE,
      GPreferenceNotificationEnum.NOTIF_DEPISTAGE => TypePreferenceNotification.NOTIF_DEPISTAGE,
      GPreferenceNotificationEnum.gUnknownEnumValue => null,
      _ => null,
    };
  }

  GPreferenceNotificationEnum _toGPreferenceNotificationEnum(TypePreferenceNotification typePreferenceNotification) {
    return switch (typePreferenceNotification) {
      TypePreferenceNotification.NOTIF_MESSAGE => GPreferenceNotificationEnum.NOTIF_MESSAGE,
      TypePreferenceNotification.NOTIF_DOCUMENT => GPreferenceNotificationEnum.NOTIF_DOCUMENT,
      TypePreferenceNotification.NOTIF_APPOINTMENT => GPreferenceNotificationEnum.NOTIF_APPOINTMENT,
      TypePreferenceNotification.NOTIF_SYNCHRONIZED_SERVICE => GPreferenceNotificationEnum.NOTIF_SYNCHRONIZED_SERVICE,
      TypePreferenceNotification.NOTIF_DEPISTAGE => GPreferenceNotificationEnum.NOTIF_DEPISTAGE,
    };
  }
}
