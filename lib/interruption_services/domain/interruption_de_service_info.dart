/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/notification_center/domain/notification_profile_details.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';

class InterruptionDeServiceInfo extends Equatable {
  final DateTime dateDebut;
  final DateTime? dateFin;
  final DomaineInterruption domaine;
  final String message;
  final String messageSnackbar;

  const InterruptionDeServiceInfo({
    required this.dateDebut,
    required this.dateFin,
    required this.domaine,
    required this.message,
    required this.messageSnackbar,
  });

  factory InterruptionDeServiceInfo.fromJson(Map<String, dynamic> json) {
    DateTime? dateDeFin;
    final dateDeFinJson = json['field_date_de_fin'] as String?;
    if (dateDeFinJson != null && dateDeFinJson.isNotEmpty) {
      dateDeFin = DateTime.tryParse(dateDeFinJson);
    }

    return InterruptionDeServiceInfo(
      dateDebut: DateTime.parse(json['field_date_de_debut'] as String),
      dateFin: dateDeFin,
      domaine: DomaineInterruption.fromString(json['field_domaine'] as String),
      message: json['field_message'] as String? ?? GENERIC_ERROR_MESSAGE,
      messageSnackbar: json['message_erreur_snackbar'] as String? ?? GENERIC_ERROR_MESSAGE,
    );
  }

  bool isInterruptionPending(DateTime now) {
    return _isInterruptionWithDurationDetermined(now) || _isInterruptionWithDurationNotDetermined(now);
  }

  bool _isInterruptionWithDurationDetermined(DateTime now) {
    return dateFin != null && now.isAfter(dateDebut) && now.isBefore(dateFin!);
  }

  bool _isInterruptionWithDurationNotDetermined(DateTime now) {
    return dateFin == null && now.isAfter(dateDebut);
  }

  @override
  List<Object?> get props => [
        dateDebut,
        dateFin,
        domaine,
        message,
        messageSnackbar,
      ];
}

enum DomaineInterruption {
  ESPACE_ECHANGE,
  DOCUMENTS,
  MESSAGERIE,
  EPISODE_DE_SANTE,
  SYSTEME_AUTHENTIFICATION,
  VACCINATION,
  ENROLEMENT,
  UNKNOWN;

  factory DomaineInterruption.fromString(String value) {
    switch (value) {
      case 'ESPACE_ECHANGE':
        return DomaineInterruption.ESPACE_ECHANGE;
      case 'DOCUMENTS':
        return DomaineInterruption.DOCUMENTS;
      case 'MESSAGERIE':
        return DomaineInterruption.MESSAGERIE;
      case 'ÉPISODE_DE_SANTE':
        return DomaineInterruption.EPISODE_DE_SANTE;
      case 'ENROLEMENT':
        return DomaineInterruption.ENROLEMENT;
      case 'SYSTEME_AUTHENTIFICATION':
        return DomaineInterruption.SYSTEME_AUTHENTIFICATION;
      case 'VACCINATION':
        return DomaineInterruption.VACCINATION;
      default:
        return DomaineInterruption.UNKNOWN;
    }
  }

  static DomaineInterruption? getDomaineFromNotification(NotificationDetails notification) {
    if (notification.urn != null) {
      switch (notification.urn!.domain) {
        case NamespaceIdentifier.DOCUMENT:
          return DomaineInterruption.DOCUMENTS;
        case NamespaceIdentifier.MHS:
          return DomaineInterruption.EPISODE_DE_SANTE;
        case NamespaceIdentifier.VACCINATION:
          return DomaineInterruption.VACCINATION;
        case NamespaceIdentifier.MESSAGE:
          return DomaineInterruption.MESSAGERIE;
        case NamespaceIdentifier.ENTOURAGE:
        case NamespaceIdentifier.ESPACE_ECHANGE:
        case NamespaceIdentifier.ETABLISSEMENT_SANTE:
        case NamespaceIdentifier.EXAMEN:
        case NamespaceIdentifier.INVITATION_EN_ATTENTE:
        case NamespaceIdentifier.MESURE:
        case NamespaceIdentifier.PROFESSIONNEL_SANTE:
        case NamespaceIdentifier.RAPPEL:
        case NamespaceIdentifier.RDV:
        case NamespaceIdentifier.ENTOURAGE_VOLONTES:
        case NamespaceIdentifier.DIRECTIVES_ANTICIPEES:
        case NamespaceIdentifier.SERVICES_SYNCHRONISES:
        case NamespaceIdentifier.MODIFICATION_MDP:
        case NamespaceIdentifier.UNKNOWN:
          return null;
      }
    } else {
      switch (notification.type) {
        case NotificationType.DOCUMENT:
        case NotificationType.ACCORD_PARTAGE_PROFIL:
        case NotificationType.REVOCATION_PAR_AIDANT:
          return DomaineInterruption.DOCUMENTS;
        case NotificationType.PRIMO_ALIM_MHS:
          return DomaineInterruption.EPISODE_DE_SANTE;
        case NotificationType.CONSULT_VACCINATION:
        case NotificationType.AJOUT_VACCINATION:
          return DomaineInterruption.VACCINATION;
        case NotificationType.MESSAGE:
          return DomaineInterruption.MESSAGERIE;
        case NotificationType.RAPPEL_RDV_PREV_VACC:
        case NotificationType.CONSULTATION_DOCUMENT:
        case NotificationType.RAPPEL_AGENDA:
        case NotificationType.RDV_AGENDA:
        case NotificationType.EXAMEN_RECOMMANDE:
        case NotificationType.AJOUT_GLYCEMIE:
        case NotificationType.AJOUT_HBA1C:
        case NotificationType.AJOUT_TAILLE:
        case NotificationType.AJOUT_POIDS:
        case NotificationType.AJOUT_PERIMETRE_CRANIEN:
        case NotificationType.REPONSE_SUPPORT:
        case NotificationType.AJOUT_ENTOURAGE:
        case NotificationType.RAPPEL_RDV_PREV_DEPIST:
        case NotificationType.REFUS_PARTAGE_PROFIL:
        case NotificationType.PARTAGE_PROFIL_AIDANT:
        case NotificationType.REVOCATION_PAR_AIDE:
        case NotificationType.ACCES_DOCUMENT_PS:
        case NotificationType.ACCES_BRIS_GLACE:
        case NotificationType.RAPPEL_MODIF_DA:
        case NotificationType.REMISE_VISIBILITE_AUTO:
        case NotificationType.RAPPEL_CONSENT_RL_PASSAGE_MAJO:
        case NotificationType.RAPPEL_CONSENT_PASSAGE_MAJO:
        case NotificationType.UNKNOWN:
          return null;
      }
    }
  }
}
