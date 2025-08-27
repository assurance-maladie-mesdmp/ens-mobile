/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/agenda/screens/agenda_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/examen_recommande_detail_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/examens_recommandes_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/rappel_detail_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/rappels_list_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/rendez_vous_details_screen.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/screens/nous_contacter_screen.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/screens/nous_contacter_ticket_details_screen.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/bottom_navigation_tabs_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/document_preview_screen.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_content/screens/conversation_content_screen.dart';
import 'package:fr_cnamts_ens/notification_center/domain/notification_profile_details.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/historique_activites_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/screens/directives_anticipees_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/entourage_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/mesure_history_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/mon_histoire_de_sante_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/vaccinations_screen.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_rattaches_invitations_screen.dart';

class WithoutUrnRedirector {
  final BuildContext context;

  WithoutUrnRedirector(this.context);

  void redirect({required NotificationDetails notification, required String profileId}) {
    switch (notification.type) {
      case NotificationType.DOCUMENT:
        if (notification.resourceId == null) {
          Navigator.pop(context);
          BottomNavigationTabsScreen.navigateToTab(BottomTabs.DOCUMENTS);
        } else {
          Navigator.pushNamed(
            context,
            DocumentPreviewScreen.routeName,
            arguments: DocumentPreviewScreenArgument(
              documentToDisplayId: notification.resourceId!,
            ),
          );
        }
      case NotificationType.CONSULTATION_DOCUMENT:
        Navigator.pushNamed(context, HistoriqueActivitesScreen.routeName);
      case NotificationType.MESSAGE:
        if (notification.resourceId == null) {
          Navigator.pop(context);
          BottomNavigationTabsScreen.navigateToTab(BottomTabs.MESSAGES);
        } else {
          Navigator.pushNamed(
            context,
            ConversationContentScreen.routeName,
            arguments: ConversationContentScreenArguments(messageId: notification.resourceId),
          );
        }
      case NotificationType.AJOUT_VACCINATION:
        Navigator.pushNamed(context, VaccinationsScreen.routeName);
      case NotificationType.RAPPEL_AGENDA:
        if (notification.resourceId == null) {
          Navigator.pop(context);
          Navigator.pushNamed(context, RappelsListScreen.routeName);
        } else {
          Navigator.pushNamed(
            context,
            RappelDetailScreen.routeName,
            arguments: RappelDetailScreenArguments(
              rappelId: notification.resourceId,
              patientId: profileId,
              fromCdn: true,
            ),
          );
        }
      case NotificationType.RDV_AGENDA:
        if (notification.resourceId == null) {
          Navigator.pop(context);
          Navigator.pushNamed(
            context,
            AgendaScreen.routeName,
          );
        } else {
          Navigator.pushNamed(
            context,
            RendezVousDetailsScreen.routeName,
            arguments: RendezVousDetailScreenArguments(
              rdvId: notification.resourceId,
              patientId: profileId,
              fromCdn: true,
            ),
          );
        }
      case NotificationType.EXAMEN_RECOMMANDE:
        if (notification.resourceId == null) {
          Navigator.pop(context);
          Navigator.pushNamed(context, AgendaScreen.routeName);
        } else {
          Navigator.pushNamed(
            context,
            ExamenRecommandeDetailScreen.routeName,
            arguments: ExamenRecommandeDetailScreenArguments(
              notification.resourceId!,
              notification.ressourceDateDebut,
              profileId,
            ),
          );
        }
      case NotificationType.AJOUT_GLYCEMIE:
        Navigator.pushNamed(context, MesureHistoryScreen.routeName, arguments: EnsMesureType.GLYCEMIE);
      case NotificationType.AJOUT_HBA1C:
        Navigator.pushNamed(context, MesureHistoryScreen.routeName, arguments: EnsMesureType.HEMOGLOBINE_GLYQUEE);
      case NotificationType.AJOUT_TAILLE:
        Navigator.pushNamed(context, MesureHistoryScreen.routeName, arguments: EnsMesureType.TAILLE);
      case NotificationType.AJOUT_POIDS:
        Navigator.pushNamed(context, MesureHistoryScreen.routeName, arguments: EnsMesureType.POIDS);
      case NotificationType.AJOUT_PERIMETRE_CRANIEN:
        Navigator.pushNamed(context, MesureHistoryScreen.routeName, arguments: EnsMesureType.PERIMETRE_CRANIEN);
      case NotificationType.REPONSE_SUPPORT:
        if (notification.resourceId != null) {
          Navigator.pushNamed(context, NousContacterTicketDetailsScreen.routeName, arguments: notification.resourceId);
        } else {
          Navigator.pushNamed(context, NousContacterScreen.routeName);
        }
      case NotificationType.CONSULT_VACCINATION:
        Navigator.pushNamed(context, VaccinationsScreen.routeName);
      case NotificationType.AJOUT_ENTOURAGE:
        Navigator.pushNamed(context, EntourageScreen.routeName);
      case NotificationType.RAPPEL_RDV_PREV_VACC:
        if (notification.resourceId == null) {
          Navigator.pop(context);
          Navigator.pushNamed(context, AgendaScreen.routeName);
        } else {
          final resourceId = notification.resourceId!.split('/').first;
          Navigator.pushNamed(
            context,
            ExamenRecommandeDetailScreen.routeName,
            arguments: ExamenRecommandeDetailScreenArguments(
              resourceId,
              notification.ressourceDateDebut,
              profileId,
            ),
          );
        }
      case NotificationType.RAPPEL_RDV_PREV_DEPIST:
        if (notification.resourceId == null) {
          Navigator.pop(context);
          Navigator.pushNamed(context, ExamensRecommandesScreen.routeName);
        } else {
          final resourceId = notification.resourceId!.split('/').first;
          Navigator.pushNamed(
            context,
            ExamenRecommandeDetailScreen.routeName,
            arguments: ExamenRecommandeDetailScreenArguments(
              resourceId,
              notification.ressourceDateDebut,
              profileId,
            ),
          );
        }
      case NotificationType.ACCORD_PARTAGE_PROFIL:
        Navigator.pushNamed(
          context,
          DocumentPreviewScreen.routeName,
          arguments: DocumentPreviewScreenArgument(
            documentToDisplayId: notification.resourceId!,
          ),
        );
      case NotificationType.REVOCATION_PAR_AIDANT:
        Navigator.pushNamed(
          context,
          DocumentPreviewScreen.routeName,
          arguments: DocumentPreviewScreenArgument(
            documentToDisplayId: notification.resourceId!,
          ),
        );
      case NotificationType.PARTAGE_PROFIL_AIDANT:
        Navigator.pushNamed(context, ProfilsRattachesInvitationsScreen.routeName);
      case NotificationType.PRIMO_ALIM_MHS:
        Navigator.pushNamed(context, MonHistoireDeSanteScreen.routeName);
      case NotificationType.RAPPEL_MODIF_DA:
        Navigator.pushNamed(context, DirectivesAnticipeesScreen.routeName);
      default:
        {
          // NOOP - pas de redirection
        }
    }
  }
}
