/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rappel.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rendez_vous.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/rendez_vous_details_screen_view_model.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_examen_recommande.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_rappel.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_rdv.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_datetime_formater.dart';
import 'package:fr_cnamts_ens/prevention/data/prevention_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccination.dart';

class AgendaRepositoryMapper {
  static RendezVous toEnsRdv(Grdv rdvDto, LocaleHelper localHelper) {
    return RendezVous(
      title: rdvDto.name,
      date: localHelper.toLocal(DateTime.parse(rdvDto.date)),
      nomActeurSante: rdvDto.professionalOrEstablishmentName,
      rdvType: _transformRdvType(rdvDto.type),
      specialiteActeurSante: rdvDto.speciality,
      note: rdvDto.comment,
      id: rdvDto.id,
      address: rdvDto.address,
      isFromUser: rdvDto.author?.type != GAgendaAuthorTypeEnum.EDITOR_SOLUTION,
      author: rdvDto.author?.authorLabel ?? '',
      status: _transformRdvStatus(rdvDto.status),
      idActeurSante: rdvDto.idProfessionnelSante ?? rdvDto.idEtablissementSante,
    );
  }

  static RendezVousType _transformRdvType(GAppointmentType rdvType) {
    return switch (rdvType) {
      GAppointmentType.PRACTITIONER => RendezVousType.PROFESSIONEL_DE_SANTE,
      GAppointmentType.HEALTHCARE_SERVICE => RendezVousType.ETABLISSEMENT_DE_SANTE,
      _ => RendezVousType.UNKNOWN,
    };
  }

  static GAppointmentType toAppointmentType(RendezVousType rdvType) {
    switch (rdvType) {
      case RendezVousType.PROFESSIONEL_DE_SANTE:
        return GAppointmentType.PRACTITIONER;
      case RendezVousType.ETABLISSEMENT_DE_SANTE:
        return GAppointmentType.HEALTHCARE_SERVICE;
      case RendezVousType.UNKNOWN:
        return GAppointmentType.gUnknownEnumValue;
    }
  }

  static RendezVousStatus? _transformRdvStatus(String? status) {
    switch (status) {
      case 'booked':
        return RendezVousStatus.BOOKED;
      case 'entered-in-error':
        return RendezVousStatus.ENTEREDINERROR;
      case 'proposed':
        return RendezVousStatus.PROPOSED;
      case 'pending':
        return RendezVousStatus.PENDING;
      case 'arrived':
        return RendezVousStatus.ARRIVED;
      case 'fulfilled':
        return RendezVousStatus.FULFILLED;
      case 'cancelled':
        return RendezVousStatus.CANCELLED;
      case 'noshow':
        return RendezVousStatus.NOSHOW;
      case 'checked-in':
        return RendezVousStatus.CHECKEDIN;
      case 'waitlist':
        return RendezVousStatus.WAITLIST;
    }
    return null;
  }

  static Rappel toEnsRappel(Grappel rappel, LocaleHelper localHelper) {
    return Rappel(
      id: rappel.id,
      date: localHelper.toLocal(DateTime.parse(rappel.date)),
      title: rappel.title,
      comment: rappel.comment.isEmpty ? null : rappel.comment,
      authorLabel: rappel.author?.authorLabel,
    );
  }

  static ExamenRecommande? toEnsExamen(
    GexamenRecommande examen,
    Map<String, ExamenRecommandeDetail> result,
    LocaleHelper localHelper,
  ) {
    final examenRecommandeDetail = result[examen.code];
    if (examenRecommandeDetail != null) {
      return ExamenRecommande(
        id: examen.code,
        startDate: localHelper.toLocal(DateTime.parse(examen.dateDebutPrevention)),
        endDate: localHelper.toLocal(DateTime.parse(examen.dateFinPrevention)),
        title: examen.title,
        status: _getExamenStatus(examen.statut),
        body: examenRecommandeDetail.body,
        linkLabel: examenRecommandeDetail.linkLabel,
        linkUrl: examenRecommandeDetail.linkUrl,
        type: _toType(examen.type),
        dateRealisation:
            examen.executionDate != null ? localHelper.toLocal(DateTime.parse(examen.executionDate!)) : null,
        niveauRecommandation: _getNiveauRecommandation(examen.requirementLevel),
      );
    } else {
      return null;
    }
  }

  static String? _toType(String type) {
    switch (type) {
      case 'CAR_SANTE':
        return 'Examen médical';
      case 'BILAN_AQ':
        return 'Bilan de prévention';
      case 'CAR_VAC':
        return 'Vaccination';
      case 'EXAMEN_CARNET_SANTE':
        return 'Examen médical';
      case 'MT_DENTS':
        return 'Examen de prévention dentaire';
      case 'PREV_DENT':
        return 'Examen de suivi dentaire';
      case 'PREV_OPHT':
        return 'Examen de prévention ophtalmologique';
      case 'EXAMEN_DEPISTAGE':
        return 'Examen de dépistage';
      default:
        return null;
    }
  }

  static ExamenStatus _getExamenStatus(GPreventionTypeEnum json) {
    if (json == GPreventionTypeEnum.TO_PLAN) {
      return ExamenStatus.A_PLANIFIER;
    }
    if (json == GPreventionTypeEnum.DONE) {
      return ExamenStatus.REALISE;
    }
    if (json == GPreventionTypeEnum.NOT_DONE) {
      return ExamenStatus.NON_REALISE;
    }
    return ExamenStatus.NON_RENSEIGNE;
  }

  static GPreventionTypeEnum getExamenStatusApi(ExamenStatus status) {
    switch (status) {
      case ExamenStatus.A_PLANIFIER:
        return GPreventionTypeEnum.NOT_SPECIFIED;
      case ExamenStatus.REALISE:
        return GPreventionTypeEnum.DONE;
      case ExamenStatus.NON_REALISE:
        return GPreventionTypeEnum.NOT_DONE;
      case ExamenStatus.NON_RENSEIGNE:
        return GPreventionTypeEnum.NOT_SPECIFIED;
    }
  }

  static VaccinationNiveauRecommandation? _getNiveauRecommandation(String? requirementLevel) {
    return switch (requirementLevel) {
      'RECOMMANDE' => VaccinationNiveauRecommandation.RECOMMANDE,
      'OBLIGATOIRE' => VaccinationNiveauRecommandation.OBLIGATOIRE,
      _ => null,
    };
  }
}
