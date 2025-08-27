/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/notifications/data/notification_repository.dart';
import 'package:redux/redux.dart';

class GuestNotificationRepository extends INotificationRepository {
  @override
  Future<RequestResult<void>> saveNotificationToken(String notificationToken) async {
    return RequestResultSuccess(null);
  }

  @override
  Future<RequestResult<void>> deleteNotificationToken(String patientId) async {
    return RequestResultSuccess(null);
  }

  @override
  Future<void> configureForegroundNotification(Store<EnsState> store) async {}
}
