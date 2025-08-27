/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_historique_activites_get_mes_activites_traces.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_historique_activites_get_professionnel_de_sante_traces_by_id.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_historique_activites_get_professionnels_de_sante_traces.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_historique_activites_get_services_synchronises_traces.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_datetime_formater.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/trace.dart';

class HistoriqueActivitesRepositoryMapper {
  static List<Trace> userTraceToTrace(
    List<Gget_mes_activites_tracesData_ensActivityHistory> traceHistoryModel,
    LocaleHelper localeHelper,
  ) {
    return traceHistoryModel
        .map(
          (trace) {
            final name = trace.name;
            final author = trace.author;
            if (name == null || author == null) {
              return null;
            } else {
              return Trace(
                date: localeHelper.toLocal(DateTime.parse(trace.date)),
                label: name,
                author: TraceAuthor(
                  name: author,
                  type: _getMyActivityType(trace.authorType),
                ),
              );
            }
          },
        )
        .nonNulls
        .toList();
  }

  static List<Trace> psTraceToTrace(
    List<Gget_professionnels_de_sante_tracesData_activityTraces_items> traceHistoryModel,
    LocaleHelper localeHelper,
  ) {
    return traceHistoryModel
        .map(
          (ensTrace) {
            final psType = _getPsType(ensTrace.actorType);
            return psType == null
                ? null
                : Trace(
                    date: localeHelper.toLocal(DateTime.parse(ensTrace.actionDate)),
                    label: ensTrace.actionDescription,
                    author: TraceAuthor(
                      name: ensTrace.actorDisplayName,
                      type: psType,
                    ),
                  );
          },
        )
        .nonNulls
        .toList();
  }

  static List<Trace> synchronizedTraceToTrace(
    List<Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory> traceHistoryModel,
    LocaleHelper localeHelper,
  ) {
    return traceHistoryModel
        .map(
          (trace) {
            final label = trace.name;
            final author = trace.author;
            if (label == null || author == null) {
              return null;
            } else {
              return Trace(
                date: localeHelper.toLocal(DateTime.parse(trace.date)),
                label: label,
                author: TraceAuthor(
                  name: author,
                  type: EnsHistoryTraceType.SERVICE_SYNCHRO,
                ),
              );
            }
          },
        )
        .nonNulls
        .toList();
  }

  static EnsHistoryTraceType _getMyActivityType(String? type) {
    if (type == null) {
      return EnsHistoryTraceType.USER;
    }
    switch (type.toUpperCase()) {
      case 'PATIENT':
        return EnsHistoryTraceType.USER;
      case 'SUPPORT':
        return EnsHistoryTraceType.SUPPORT;
      case 'SYSTEME':
        return EnsHistoryTraceType.SYSTEME;
      case 'ENROLMENT':
        return EnsHistoryTraceType.ENROLEMENT;
      default:
        return EnsHistoryTraceType.USER;
    }
  }

  static EnsHistoryTraceType? _getPsType(GActivityActorType actorType) {
    switch (actorType) {
      case GActivityActorType.HEALTHCARE_FACILITY:
        return EnsHistoryTraceType.ES;
      case GActivityActorType.HEALTHCARE_PROFESSIONAL:
        return EnsHistoryTraceType.PS;
      default:
        return null;
    }
  }
}

extension GetPsTracesHistoryMapper on BuiltList<Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory> {
  List<Trace> toTraces(LocaleHelper localeHelper) {
    return map(
      (psTrace) {
        final label = psTrace.name;
        final author = psTrace.author;
        if (label == null || author == null) {
          return null;
        } else {
          return Trace(
            date: localeHelper.toLocal(DateTime.parse(psTrace.date)),
            label: label,
            author: TraceAuthor(
              name: author,
              type: EnsHistoryTraceType.PS,
            ),
          );
        }
      },
    ).nonNulls.toList();
  }
}
