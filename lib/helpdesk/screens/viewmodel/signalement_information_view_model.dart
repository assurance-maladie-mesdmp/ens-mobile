/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:redux/redux.dart';

class SignalementInformationViewModel extends Equatable {
  final String? formattedLastReportDate;
  final bool isReportLimitExceeded;

  const SignalementInformationViewModel._internal({
    required this.formattedLastReportDate,
    required this.isReportLimitExceeded,
  });

  factory SignalementInformationViewModel.from(Store<EnsState> store) {
    final signalementInformationState = store.state.helpdeskState.signalementInformationState;
    final signalementInformation = signalementInformationState.signalementInformation;
    final lastReportDate = signalementInformation?.lastReportDate;
    return SignalementInformationViewModel._internal(
      formattedLastReportDate: signalementInformationState.isSuccessWithData && lastReportDate != null
          ? EnsDateUtils.formatddmmyyyy(lastReportDate)
          : null,
      isReportLimitExceeded: signalementInformation?.isReportLimitExceeded ?? false,
    );
  }

  @override
  List<Object?> get props => [formattedLastReportDate, isReportLimitExceeded];
}
