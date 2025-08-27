/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/parameters/preference_notification/data/preference_notification_repository.dart';
import 'package:fr_cnamts_ens/parameters/preference_notification/domain/preference_notification.dart';

class GuestPreferenceNotificationRepository extends IPreferenceNotificationRepository {
  @override
  Future<RequestResult<List<PreferenceNotification>>> getPreferenceNotification(String patientId) {
    return Future.value(
      RequestResultSuccess(
        const [
          PreferenceNotification(
            typePreferenceNotification: TypePreferenceNotification.NOTIF_MESSAGE,
            isActive: true,
          ),
          PreferenceNotification(
            typePreferenceNotification: TypePreferenceNotification.NOTIF_DOCUMENT,
            isActive: false,
          ),
          PreferenceNotification(
            typePreferenceNotification: TypePreferenceNotification.NOTIF_APPOINTMENT,
            isActive: true,
          ),
          PreferenceNotification(
            typePreferenceNotification: TypePreferenceNotification.NOTIF_SYNCHRONIZED_SERVICE,
            isActive: true,
          ),
        ],
      ),
    );
  }

  @override
  Future<RequestResult<void>> setPreferenceNotification(
    String patientId,
    PreferenceNotification preferenceNotification,
  ) {
    return Future.value(RequestResultSuccess(null));
  }
}
