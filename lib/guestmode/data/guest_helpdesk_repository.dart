/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/helpdesk/data/helpdesk_repository.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/creating_helpdesk_ticket.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/nouvelle_demande_motif.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/send_signalement_data.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/signalement_information.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/signalement_type.dart';

class GuestHelpdeskRepository extends IHelpdeskRepository {
  @override
  Future<RequestResult<void>> createHelpdeskTicket({
    required String patientId,
    required CreatingHelpdeskTicket ticket,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    return RequestResultSuccess(null);
  }

  @override
  Future<RequestResult<List<NouvelleDemandeMotif>>> getMotifs() async {
    return RequestResultSuccess(const []);
  }

  @override
  Future<RequestResult<void>> sendSignalement({
    required String patientId,
    required SendSignalementData signalement,
  }) async {
    return RequestResultSuccess(null);
  }

  @override
  Future<RequestResult<SignalementInformation>> fetchSignalementInformation({
    required String patientId,
    required SignalementType signalementType,
    required String idToSignal,
  }) async {
    return RequestResultSuccess(
      const SignalementInformation(
        lastReportDate: null,
        isReportLimitExceeded: false,
      ),
    );
  }
}
