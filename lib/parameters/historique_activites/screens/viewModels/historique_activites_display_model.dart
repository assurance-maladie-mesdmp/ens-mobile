/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/trace.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

sealed class HistoriqueActivitesDisplayModel extends Equatable {
  const HistoriqueActivitesDisplayModel();
}

class HistoriqueActivitesDateHeaderDisplayModel extends HistoriqueActivitesDisplayModel {
  final String formattedDate;

  const HistoriqueActivitesDateHeaderDisplayModel({required this.formattedDate});

  factory HistoriqueActivitesDateHeaderDisplayModel.fromDate(DateTime date) {
    final formattedDate = EnsDateUtils.formatPlainTextMonthAndYear(date).capitalize();
    return HistoriqueActivitesDateHeaderDisplayModel(formattedDate: formattedDate);
  }

  @override
  List<Object?> get props => [formattedDate];
}

class HistoriqueActivitesTraceDisplayModel extends HistoriqueActivitesDisplayModel {
  final String label;
  final String formattedDate;
  final String a11yFormattedDate;

  const HistoriqueActivitesTraceDisplayModel({
    required this.label,
    required this.formattedDate,
    required this.a11yFormattedDate,
  });

  factory HistoriqueActivitesTraceDisplayModel.fromTrace(Trace trace) {
    return HistoriqueActivitesTraceDisplayModel(
      label: '${trace.author.name.capitalizeName()} ${trace.label}',
      formattedDate: EnsDateUtils.formatFullDateWithTime(trace.date),
      a11yFormattedDate: EnsDateUtils.formatFullDateWithTimeA11y(trace.date),
    );
  }

  @override
  List<Object?> get props => [label, formattedDate, a11yFormattedDate];
}
