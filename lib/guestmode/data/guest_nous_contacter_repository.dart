/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/aide/nous_contacter/data/nous_contacter_repository.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/domain/models/ens_ticket_support.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/domain/models/ens_ticket_support_details.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';

class GuestNousContacterRepository extends INousContacterRepository {
  @override
  Future<RequestResult<List<EnsTicketSupport>>> getTicketsSupport(String patientId) async {
    return RequestResultSuccess(const []);
  }

  @override
  Future<RequestResult<EnsTicketSupportDetails>> getTicketSupportDetails(String ticketId) async {
    return RequestResultError.unavailableInGuestMode();
  }
}
