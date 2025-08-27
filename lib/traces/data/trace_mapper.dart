/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';

class TracesMapper {
  static GUserActionInputBuilder transform(String ensUserId, EnsSendTrace trace) {
    final userActionInput = GUserActionInput(
      (b) => b
        ..ensUserId = ensUserId
        ..actionNavigation = _transformEnum(trace.type)
        ..params = _transformParams(trace.params),
    );
    final userActionInputBuilder = GUserActionInputBuilder();
    userActionInputBuilder.replace(userActionInput);
    return userActionInputBuilder;
  }

  static GUserActionEnum _transformEnum(EnsTraceType type) {
    switch (type) {
      case EnsTraceType.CONSULT_RUBRIQUE_INFOS_CONNEXION:
        return GUserActionEnum.CONSULT_RUBRIQUE_INFOS_CONNEXION;
      case EnsTraceType.CONSULT_RUBRIQUE_CONFIDENTIALITE:
        return GUserActionEnum.CONSULT_RUBRIQUE_CONFIDENTIALITE;
      case EnsTraceType.CONSULT_RUBRIQUE_CONFIDENTIALITE_INFOS:
        return GUserActionEnum.CONSULT_RUBRIQUE_CONFIDENTIALITE_INFOS;
      case EnsTraceType.CONSULT_RUBRIQUE_ACCES_URGENCE:
        return GUserActionEnum.CONSULT_RUBRIQUE_ACCES_URGENCE;
      case EnsTraceType.CONSULT_RUBRIQUE_ACCES_PS:
        return GUserActionEnum.CONSULT_RUBRIQUE_ACCES_PS;
      case EnsTraceType.ATTRIBUTION_STATUT_MEDECIN_ADMIN:
        return GUserActionEnum.ATTRIBUTION_STATUT_MEDECIN_ADMIN;
      case EnsTraceType.RETRAIT_STATUT_MEDECIN_ADMIN:
        return GUserActionEnum.RETRAIT_STATUT_MEDECIN_ADMIN;
      case EnsTraceType.CONSULT_RUBRIQUE_MHS:
        return GUserActionEnum.CONSULT_RUBRIQUE_MHS;
      case EnsTraceType.CONSULT_RUBRIQUE_HISTORIQUE_DONNEES:
        return GUserActionEnum.CONSULT_RUBRIQUE_HISTORIQUE_DONNEES;
      case EnsTraceType.CONSULT_RUBRIQUE_CLOTURE_PROFIL:
        return GUserActionEnum.CONSULT_RUBRIQUE_CLOTURE_PROFIL;
      case EnsTraceType.CONSULT_RUBRIQUE_SERVICES_SYNCHRO:
        return GUserActionEnum.CONSULT_RUBRIQUE_SERVICES_SYNCHRO;
      case EnsTraceType.CONSULT_RUBRIQUE_HISTORIQUE_ACTIVITE:
        return GUserActionEnum.CONSULT_RUBRIQUE_HISTORIQUE_ACTIVITE;
      case EnsTraceType.CONSULT_RUBRIQUE_TELECHARGEMENT_DONNEES:
        return GUserActionEnum.CONSULT_RUBRIQUE_TELECHARGEMENT_DONNEES;
      case EnsTraceType.CONSULT_RUBRIQUE_MESSAGERIE:
        return GUserActionEnum.CONSULT_RUBRIQUE_MESSAGERIE;
      case EnsTraceType.CONSULT_MESSAGE:
        return GUserActionEnum.CONSULT_MESSAGE;
      case EnsTraceType.CONSULT_RUBRIQUE_PS:
        return GUserActionEnum.CONSULT_RUBRIQUE_PS;
      case EnsTraceType.CONSULT_RUBRIQUE_DOCUMENTS:
        return GUserActionEnum.CONSULT_RUBRIQUE_DOCUMENTS;
      case EnsTraceType.CONSULT_DOC:
        return GUserActionEnum.CONSULT_DOC;
      case EnsTraceType.TELECHARGEMENT_DOC:
        return GUserActionEnum.TELECHARGEMENT_DOC;
      case EnsTraceType.MODIF_MEMBRE_ENTOURAGE:
        return GUserActionEnum.MODIF_MEMBRE_ENTOURAGE;
      case EnsTraceType.SUPP_MEMBRE_ENTOURAGE:
        return GUserActionEnum.SUPP_MEMBRE_ENTOURAGE;
      case EnsTraceType.CONSULT_RUBRIQUE_VACCINATIONS:
        return GUserActionEnum.CONSULT_RUBRIQUE_VACCINATIONS;
      case EnsTraceType.AJOUT_VACCINATION:
        return GUserActionEnum.AJOUT_VACCINATION;
      case EnsTraceType.SUPP_VACCINATION:
        return GUserActionEnum.SUPP_VACCINATION;
      case EnsTraceType.CONSULT_RUBRIQUE_MALADIES:
        return GUserActionEnum.CONSULT_RUBRIQUE_MALADIES;
      case EnsTraceType.CONSULT_RUBRIQUE_TRAITEMENTS:
        return GUserActionEnum.CONSULT_RUBRIQUE_TRAITEMENTS;
      case EnsTraceType.CONSULT_RUBRIQUE_HOSPITALISATIONS:
        return GUserActionEnum.CONSULT_RUBRIQUE_HOSPITALISATIONS;
      case EnsTraceType.CONSULT_RUBRIQUE_HANDICAPS:
        return GUserActionEnum.CONSULT_RUBRIQUE_HANDICAPS;
      case EnsTraceType.CONSULT_RUBRIQUE_ALLERGIES:
        return GUserActionEnum.CONSULT_RUBRIQUE_ALLERGIES;
      case EnsTraceType.CONSULT_RUBRIQUE_ANTECEDENTS_FAMILIAUX:
        return GUserActionEnum.CONSULT_RUBRIQUE_ANTECEDENTS_FAMILIAUX;
      case EnsTraceType.CONSULT_RUBRIQUE_HABITUDES_VIE:
        return GUserActionEnum.CONSULT_RUBRIQUE_HABITUDES_VIE;
      case EnsTraceType.CONSULT_RUBRIQUE_MESURES:
        return GUserActionEnum.CONSULT_RUBRIQUE_MESURES;
      case EnsTraceType.CONSULT_MESURE:
        return GUserActionEnum.CONSULT_MESURE;
      case EnsTraceType.CONSULT_RUBRIQUE_ENTOURAGE_VOLONTES:
        return GUserActionEnum.CONSULT_RUBRIQUE_ENTOURAGE_VOLONTES;
      case EnsTraceType.CONSULT_MENU_AGENDA:
        return GUserActionEnum.CONSULT_MENU_AGENDA;
      case EnsTraceType.CONSULT_MENU_CATALOGUE_SERVICES:
        return GUserActionEnum.CONSULT_MENU_CATALOGUE_SERVICES;
      case EnsTraceType.CONSULT_RUBRIQUE_NOTIFS_MAILS:
        return GUserActionEnum.CONSULT_RUBRIQUE_NOTIFS_MAILS;
      case EnsTraceType.CONSULT_RUBRIQUE_BILAN_DE_PREVENTION:
        return GUserActionEnum.CONSULT_RUBRIQUE_BILAN_DE_PREVENTION;
      case EnsTraceType.CONSULT_RUBRIQUE_HABITUDES_VIE_DETAIL:
        return GUserActionEnum.CONSULT_RUBRIQUE_HABITUDES_VIE_DETAIL;
      case EnsTraceType.CONSULT_RUBRIQUE_ENTOURAGE:
        return GUserActionEnum.CONSULT_RUBRIQUE_ENTOURAGE;
      case EnsTraceType.CONSULT_RUBRIQUE_DIRECTIVES_ANTICIPEES:
        return GUserActionEnum.CONSULT_RUBRIQUE_DIRECTIVES_ANTICIPEES;
      case EnsTraceType.CONSULT_RUBRIQUE_DON_ORGANE:
        return GUserActionEnum.CONSULT_RUBRIQUE_DON_ORGANE;
      case EnsTraceType.CONSULT_RUBRIQUE_GROUPE_SANGUIN:
        return GUserActionEnum.CONSULT_RUBRIQUE_GROUPE_SANGUIN;
    }
  }

  static ListBuilder<GUserActionParams>? _transformParams(Map<String, String>? params) {
    if (params != null) {
      final userActionParams = ListBuilder<GUserActionParams>();
      params.forEach((key, value) {
        userActionParams.add(
          GUserActionParams(
            (b) => b
              ..key = key
              ..value = value,
          ),
        );
      });
      return userActionParams;
    } else {
      return null;
    }
  }
}
