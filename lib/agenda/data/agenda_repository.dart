/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/agenda/data/agenda_repository_mapper.dart';
import 'package:fr_cnamts_ens/agenda/domain/agenda_domain_error.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/exam_recommander_date_utils.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rappel.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rendez_vous.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_create_rappel.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_create_rdv.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_delete_rappel.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_delete_rdv.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_get_examen_recommande.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_get_rappel_by_id_and_patient_id.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_get_rdv_et_rappel.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_get_rendez_vous_by_id_and_patient_id.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_update_examen_status.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_update_rappel.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_update_rdv.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_examens_recommandes.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_datetime_formater.dart';
import 'package:fr_cnamts_ens/prevention/data/prevention_repository.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';
import 'package:intl/intl.dart';

abstract class IAgendaRepository {
  Future<GetRendezVousEtRappelsEtExamensResponse> getRendezVousEtRappelsEtExamens(String patientId);

  Future<RequestResult<RendezVous>> addRendezVous(String patientId, RendezVous rdv);

  Future<RequestResult<RendezVous>> updateRendezVous(String patientId, RendezVous rdv);

  Future<RequestResult<String>> deleteRendezVous(String patientId, String rdvId);

  Future<RequestResult<void>> updateExamenStatus({
    required String patientId,
    required String examenId,
    required ExamenStatus status,
    required ExamenStatus previousStatus,
    required DateTime dateDebut,
    required DateTime? dateRealisation,
  });

  Future<RequestResult<Rappel>> addRappel({
    required String patientId,
    required DateTime date,
    required String title,
    required String? comment,
  });

  Future<RequestResult<Rappel>> updateRappel(String patientId, Rappel rappel);

  Future<RequestResult<void>> deleteRappel(String patientId, String rappelId);

  Future<RequestResult<RendezVous>> getRendezVousByIdByPatientId(String patientId, String rdvId);

  Future<RequestResult<Rappel>> getRappelByIdByPatientId(String patientId, String rappelId);

  Future<RequestResult<ExamenRecommande>> getExamenRecommandeByCodeAndDate(
    String patientId,
    String code,
    DateTime dateDebut,
  );

  Future<RequestResult<int>> getNombreExamensRecommandes(String patientId);
}

class GetRendezVousEtRappelsEtExamensResponse extends Equatable {
  final RequestResult<List<RendezVous>> rdvs;
  final RequestResult<List<Rappel>> rappels;
  final RequestResult<List<ExamenRecommande>> examensRecommandes;

  const GetRendezVousEtRappelsEtExamensResponse({
    required this.rdvs,
    required this.rappels,
    required this.examensRecommandes,
  });

  @override
  List<Object?> get props => [rdvs, rappels, examensRecommandes];
}

class AgendaRepository extends IAgendaRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;
  final IPreventionRepository preventionRepository;
  final LocaleHelper localHelper;

  AgendaRepository(this.ferryClient, this.crashlytics, this.preventionRepository, this.localHelper);

  @override
  Future<GetRendezVousEtRappelsEtExamensResponse> getRendezVousEtRappelsEtExamens(String patientId) async {
    RequestResult<List<RendezVous>>? appointmentsRequestResult;
    RequestResult<List<Rappel>>? remindersRequestResult;
    RequestResult<List<ExamenRecommande>>? examensRecommandesRequestResult;

    try {
      final query = Gget_rdv_et_rappelReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final detailsExamen = await preventionRepository.getExamenRecommandeDetails();
      if (detailsExamen.isError()) {
        examensRecommandesRequestResult = RequestResultError.genericError();
      }

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return GetRendezVousEtRappelsEtExamensResponse(
          rdvs: RequestResultError.genericError(),
          rappels: RequestResultError.genericError(),
          examensRecommandes: RequestResultError.genericError(),
        );
      }

      final result = graphQLResponse.data;
      if (result != null) {
        final ensRdvs = result.fetchAllFuturesAppointmentsByPatientId
            .map((ensRdv) => AgendaRepositoryMapper.toEnsRdv(ensRdv, localHelper))
            .toList();
        final ensPastRdvs = result.fetchAllPastsAppointmentsByPatientId
            .map((ensRdv) => AgendaRepositoryMapper.toEnsRdv(ensRdv, localHelper))
            .toList();
        appointmentsRequestResult = RequestResultSuccess([...ensRdvs, ...ensPastRdvs]);

        if (result.fetchAllFuturesRemindersByPatientId != null && result.fetchPastsRemindersByPatientId != null) {
          final rappels = result.fetchAllFuturesRemindersByPatientId!
              .map((rappel) => AgendaRepositoryMapper.toEnsRappel(rappel, localHelper))
              .toList();
          final pastRappels = result.fetchPastsRemindersByPatientId!
              .map((rappel) => AgendaRepositoryMapper.toEnsRappel(rappel, localHelper))
              .toList();
          remindersRequestResult = RequestResultSuccess([...rappels, ...pastRappels]);
        }

        if (result.fetchPreventionsByPatientId != null && !detailsExamen.isError()) {
          final examensRecommandes = result.fetchPreventionsByPatientId!
              .map(
                (examen) => AgendaRepositoryMapper.toEnsExamen(
                  examen,
                  (detailsExamen as RequestResultSuccess<Map<String, ExamenRecommandeDetail>>).result,
                  localHelper,
                ),
              )
              .nonNulls
              .toList();
          examensRecommandesRequestResult = RequestResultSuccess(examensRecommandes);
        }
      }
      return GetRendezVousEtRappelsEtExamensResponse(
        rdvs: appointmentsRequestResult ?? RequestResultError.genericError(),
        rappels: remindersRequestResult ?? RequestResultError.genericError(),
        examensRecommandes: examensRecommandesRequestResult ?? RequestResultError.genericError(),
      );
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return GetRendezVousEtRappelsEtExamensResponse(
        rdvs: RequestResultError.genericError(),
        rappels: RequestResultError.genericError(),
        examensRecommandes: RequestResultError.genericError(),
      );
    }
  }

  @override
  Future<RequestResult<RendezVous>> addRendezVous(String patientId, RendezVous rdv) async {
    try {
      final dateFormatted = DateFormat('yyyy-MM-ddTHH:mm:ss').format(rdv.date);
      final mutation = Gcreate_rdvReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.rdv.patientId = patientId
          ..vars.rdv.name = rdv.title
          ..vars.rdv.date = dateFormatted
          ..vars.rdv.type = AgendaRepositoryMapper.toAppointmentType(rdv.rdvType)
          ..vars.rdv.professionalOrEstablishmentName = _formattedName(rdv.nomActeurSante)
          ..vars.rdv.speciality = rdv.specialiteActeurSante
          ..vars.rdv.comment = rdv.note
          ..vars.rdv.address = rdv.address
          ..vars.rdv.idProfessionnelSante =
              rdv.rdvType == RendezVousType.PROFESSIONEL_DE_SANTE ? rdv.idActeurSante : null
          ..vars.rdv.idEtablissementSante =
              rdv.rdvType == RendezVousType.ETABLISSEMENT_DE_SANTE ? rdv.idActeurSante : null,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.createAppointment;
      if (graphQLResult != null) {
        return RequestResultSuccess(AgendaRepositoryMapper.toEnsRdv(graphQLResult, localHelper));
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<RendezVous>> updateRendezVous(String patientId, RendezVous rdv) async {
    try {
      final dateFormatted = DateFormat('yyyy-MM-ddTHH:mm:ss').format(rdv.date);
      final mutation = Gupdate_rdvReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.rdv.id = rdv.id
          ..vars.rdv.patientId = patientId
          ..vars.rdv.name = rdv.title
          ..vars.rdv.date = dateFormatted
          ..vars.rdv.type = AgendaRepositoryMapper.toAppointmentType(rdv.rdvType)
          ..vars.rdv.professionalOrEstablishmentName = _formattedName(rdv.nomActeurSante)
          ..vars.rdv.speciality = rdv.specialiteActeurSante
          ..vars.rdv.comment = rdv.note
          ..vars.rdv.address = rdv.address
          ..vars.rdv.idProfessionnelSante =
              rdv.rdvType == RendezVousType.PROFESSIONEL_DE_SANTE ? rdv.idActeurSante : null
          ..vars.rdv.idEtablissementSante =
              rdv.rdvType == RendezVousType.ETABLISSEMENT_DE_SANTE ? rdv.idActeurSante : null,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.updateAppointmentByIdAndPatientId;
      if (graphQLResult != null) {
        return RequestResultSuccess(AgendaRepositoryMapper.toEnsRdv(graphQLResult, localHelper));
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<String>> deleteRendezVous(String patientId, String rdvId) async {
    try {
      final mutation = Gdelete_rdvReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.rdvId = rdvId
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final success = graphQLResponse.data?.removeAppointmentByIdAndPatientId.success;
      if (success != null && success == true) {
        return RequestResultSuccess(rdvId);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<Rappel>> addRappel({
    required String patientId,
    required DateTime date,
    required String title,
    required String? comment,
  }) async {
    try {
      final dateFormatted = date.toIso8601String();
      final mutation = Gcreate_rappelReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.rappel.patientId = patientId
          ..vars.rappel.title = title
          ..vars.rappel.date = dateFormatted
          ..vars.rappel.comment = comment ?? '',
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.createReminder;
      if (graphQLResult != null) {
        return RequestResultSuccess(AgendaRepositoryMapper.toEnsRappel(graphQLResult, localHelper));
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<Rappel>> updateRappel(String patientId, Rappel rappel) async {
    try {
      final dateFormatted = rappel.date.toIso8601String();
      final mutation = Gupdate_rappelReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.rappel.id = rappel.id
          ..vars.rappel.patientId = patientId
          ..vars.rappel.title = rappel.title
          ..vars.rappel.date = dateFormatted
          ..vars.rappel.comment = rappel.comment,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.updateReminder;
      if (graphQLResult != null) {
        return RequestResultSuccess(AgendaRepositoryMapper.toEnsRappel(graphQLResult, localHelper));
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> deleteRappel(String patientId, String rappelId) async {
    try {
      final mutation = Gdelete_rappelReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.rappelId = rappelId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.removeReminderByIdAndPatientId.success;
      if (graphQLResult == true) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<Rappel>> getRappelByIdByPatientId(String patientId, String rappelId) async {
    try {
      final query = Gget_rappel_by_id_and_patient_idReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.rappelId = rappelId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.error(
          domainError: AgendaDomainError.getErrorDomainFromGraphQLError(
            isNotFoundError: graphQLResponse.hasNotFoundError(),
          ),
        );
      }

      final result = graphQLResponse.data?.fetchReminderByIdAndPatientId;
      if (result != null) {
        return RequestResultSuccess(AgendaRepositoryMapper.toEnsRappel(result, localHelper));
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> updateExamenStatus({
    required String patientId,
    required String examenId,
    required ExamenStatus status,
    required ExamenStatus previousStatus,
    required DateTime dateDebut,
    required DateTime? dateRealisation,
  }) async {
    try {
      final dateDebutFormatted = DateFormat('yyyy-MM-dd').format(dateDebut);
      final dateRealisationFormatted =
          dateRealisation != null ? DateFormat('yyyy-MM-dd').format(dateRealisation) : null;
      final mutation = Gupdate_examen_statusReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.code = examenId
          ..vars.input.patientId = patientId
          ..vars.input.statut = AgendaRepositoryMapper.getExamenStatusApi(status)
          ..vars.input.dateDebutPrevention = dateDebutFormatted
          ..vars.input.executionDate = dateRealisationFormatted
          ..vars.input.previousStatus = AgendaRepositoryMapper.getExamenStatusApi(previousStatus),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.updatePreventionStatus.success;
      if (graphQLResult == true) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  String _formattedName(String name) {
    final regex = RegExp(r'\(.*\)');
    final formattedTitle = name.replaceAll(regex, '').trim();

    return formattedTitle;
  }

  @override
  Future<RequestResult<ExamenRecommande>> getExamenRecommandeByCodeAndDate(
    String patientId,
    String code,
    DateTime dateDebut,
  ) async {
    try {
      final dateFormatted = EnsDateUtils.formatYYYYMMDD(dateDebut);
      final query = Gget_examen_recommandeReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.code = code
          ..vars.dateDebutPrevention = dateFormatted,
      );

      final detailsExamen = await preventionRepository.getExamenRecommandeDetails();
      if (detailsExamen.isError()) {
        return RequestResultError.genericError();
      }

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.fetchPreventionByPatientIdAndCodeAndDate;
      if (result != null) {
        final examenRecommande = AgendaRepositoryMapper.toEnsExamen(
          result,
          (detailsExamen as RequestResultSuccess<Map<String, ExamenRecommandeDetail>>).result,
          localHelper,
        );
        if (examenRecommande == null) return RequestResultError.genericError();
        return RequestResultSuccess(examenRecommande);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<int>> getNombreExamensRecommandes(String patientId) async {
    try {
      final query = Gget_examens_recommandesReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.fetchPreventionsByPatientId;

      if (result != null) {
        final toPlanExamen = result.where((examenRecommande) {
          if (examenRecommande.statut == GPreventionTypeEnum.TO_PLAN) {
            final startDate = localHelper.toLocal(DateTime.parse(examenRecommande.dateDebutPrevention));
            final endDate = localHelper.toLocal(DateTime.parse(examenRecommande.dateFinPrevention));
            return ExamRecommanderDateUtils.hasExamPeriodeStartedOrIsStartingThisYear(startDate, endDate);
          }
          return false;
        });
        return RequestResultSuccess(toPlanExamen.length);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<RendezVous>> getRendezVousByIdByPatientId(String patientId, String rdvId) async {
    try {
      final query = Gget_rendez_vous_by_id_and_patient_idReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.rdvId = rdvId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.error(
          domainError: AgendaDomainError.getErrorDomainFromGraphQLError(
            isNotFoundError: graphQLResponse.hasNotFoundError(),
          ),
        );
      }

      final result = graphQLResponse.data?.fetchAppointmentByIdAndPatientId;
      if (result != null) {
        return RequestResultSuccess(AgendaRepositoryMapper.toEnsRdv(result, localHelper));
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
