/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/agenda/screens/agenda_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/examen_recommande_detail_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/rappel_detail_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/rappels_list_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/rendez_vous_details_screen.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/screens/nous_contacter_screen.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/screens/nous_contacter_ticket_details_screen.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/bottom_navigation_tabs_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/document_preview_screen.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_content/screens/conversation_content_screen.dart';
import 'package:fr_cnamts_ens/notification_center/domain/notification_profile_details.dart';
import 'package:fr_cnamts_ens/parameters/password/screens/change_password_screen.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/services_synchronises_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/screens/directives_anticipees_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/entourage_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/mesure_history_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/mon_histoire_de_sante_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/etablissement_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnels_de_sante_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/called_es_or_ps_detail_screen_from.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/vaccinations_screen.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_rattaches_invitations_screen.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';

class UrnRedirector {
  final BuildContext context;

  UrnRedirector(this.context);

  void redirect({required NotificationDetails notification, required String profileId}) {
    final urn = notification.urn;
    if (urn != null) {
      switch (urn.domain) {
        case NamespaceIdentifier.DOCUMENT:
          if (urn.resourceId != null) {
            Navigator.pushNamed(
              context,
              DocumentPreviewScreen.routeName,
              arguments: DocumentPreviewScreenArgument(
                documentToDisplayId: urn.resourceId!,
              ),
            );
          } else {
            Navigator.pop(context);
            BottomNavigationTabsScreen.navigateToTab(BottomTabs.DOCUMENTS);
          }
        case NamespaceIdentifier.ENTOURAGE:
          Navigator.pushNamed(context, EntourageScreen.routeName);
        case NamespaceIdentifier.ESPACE_ECHANGE:
          if (urn.resourceId != null) {
            Navigator.pushNamed(
              context,
              NousContacterTicketDetailsScreen.routeName,
              arguments: urn.resourceId,
            );
          } else {
            Navigator.pushNamed(context, NousContacterScreen.routeName);
          }
        case NamespaceIdentifier.ETABLISSEMENT_SANTE:
          if (urn.resourceId != null) {
            Navigator.pushNamed(
              context,
              EtablissementDeSanteDetailScreen.routeName,
              arguments: EtablissementDeSanteArgument(
                urn.resourceId!,
                CalledESorPSDetailScreenFrom.NOTIFICATIONS_CENTER_SCREEN,
              ),
            );
          } else {
            Navigator.pushNamed(context, ProfessionnelsDeSanteScreen.routeName);
          }
        case NamespaceIdentifier.EXAMEN:
          if (urn.resourceId != null) {
            final splittedId = urn.resourceId!.split('|');
            Navigator.pushNamed(
              context,
              ExamenRecommandeDetailScreen.routeName,
              arguments: ExamenRecommandeDetailScreenArguments(splittedId[0], DateTime.parse(splittedId[1]), profileId),
            );
          } else {
            Navigator.pop(context);
            Navigator.pushNamed(context, AgendaScreen.routeName);
          }
        case NamespaceIdentifier.INVITATION_EN_ATTENTE:
          Navigator.pushNamed(context, ProfilsRattachesInvitationsScreen.routeName);
        case NamespaceIdentifier.MESURE:
          final mesureType = _resourceToMesureType(urn.resourceId);
          if (mesureType != EnsMesureType.UNKNOWN) {
            Navigator.pushNamed(context, MesureHistoryScreen.routeName, arguments: mesureType);
          } else {
            StoreProvider.of<EnsState>(context)
                .dispatch(const DisplaySnackbarAction.error('La mesure est introuvable.'));
          }
        case NamespaceIdentifier.MESSAGE:
          if (urn.resourceId != null) {
            Navigator.pushNamed(
              context,
              ConversationContentScreen.routeName,
              arguments: ConversationContentScreenArguments(messageId: notification.urn?.resourceId),
            );
          } else {
            Navigator.pop(context);
            BottomNavigationTabsScreen.navigateToTab(BottomTabs.MESSAGES);
          }
        case NamespaceIdentifier.PROFESSIONNEL_SANTE:
          if (urn.resourceId != null) {
            Navigator.pushNamed(
              context,
              ProfessionnelDeSanteDetailScreen.routeName,
              arguments: ProfessionnelDeSanteArgument(
                urn.resourceId!,
                CalledESorPSDetailScreenFrom.NOTIFICATIONS_CENTER_SCREEN,
              ),
            );
          } else {
            Navigator.pushNamed(context, ProfessionnelsDeSanteScreen.routeName);
          }
        case NamespaceIdentifier.MHS:
          Navigator.pushNamed(context, MonHistoireDeSanteScreen.routeName);
        case NamespaceIdentifier.RAPPEL:
          if (urn.resourceId != null) {
            Navigator.pushNamed(
              context,
              RappelDetailScreen.routeName,
              arguments: RappelDetailScreenArguments(
                rappelId: urn.resourceId,
                patientId: profileId,
                fromCdn: true,
              ),
            );
          } else {
            Navigator.pop(context);
            Navigator.pushNamed(context, RappelsListScreen.routeName);
          }
        case NamespaceIdentifier.RDV:
          if (urn.resourceId != null) {
            Navigator.pushNamed(
              context,
              RendezVousDetailsScreen.routeName,
              arguments: RendezVousDetailScreenArguments(
                rdvId: urn.resourceId,
                patientId: profileId,
                fromCdn: true,
              ),
            );
          } else {
            Navigator.pop(context);
            Navigator.pushNamed(context, AgendaScreen.routeName);
          }
        case NamespaceIdentifier.VACCINATION:
          Navigator.pushNamed(context, VaccinationsScreen.routeName);
        case NamespaceIdentifier.ENTOURAGE_VOLONTES:
        case NamespaceIdentifier.DIRECTIVES_ANTICIPEES:
          Navigator.pushNamed(context, DirectivesAnticipeesScreen.routeName);
        case NamespaceIdentifier.SERVICES_SYNCHRONISES:
          Navigator.pushNamed(context, ServicesSynchronisesScreen.routeName);
        case NamespaceIdentifier.MODIFICATION_MDP:
          Navigator.pushNamed(context, ChangePasswordScreen.routeName);
        case NamespaceIdentifier.UNKNOWN:
          return;
      }
    }
  }

  EnsMesureType _resourceToMesureType(String? mesureResource) {
    switch (mesureResource) {
      case 'GLUCOSE':
        return EnsMesureType.GLYCEMIE;
      case 'WEIGHT':
        return EnsMesureType.POIDS;
      case 'HEIGHT':
        return EnsMesureType.TAILLE;
      case 'HEAD_CIRCUMFERENCE':
        return EnsMesureType.PERIMETRE_CRANIEN;
      case 'GLYCATED_HEMOGLOBIN':
        return EnsMesureType.HEMOGLOBINE_GLYQUEE;
      default:
        return EnsMesureType.UNKNOWN;
    }
  }
}
