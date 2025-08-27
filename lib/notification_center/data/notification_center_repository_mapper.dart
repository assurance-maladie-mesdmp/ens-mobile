/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_notification_center.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/notification_center/domain/notification_profile.dart';
import 'package:fr_cnamts_ens/notification_center/domain/notification_profile_details.dart';

class NotificationCenterRepositoryMapper {
  static NotificationProfile toNotificationProfile(
    Gget_notification_centerData_fetchNotificationCenter_profiles profile,
  ) {
    return NotificationProfile(
      patientId: profile.ensProfil.patientId,
      firstName: profile.ensProfil.firstname,
      lastName: profile.ensProfil.lastname,
      isMainProfile: profile.ensProfil.profileType == GProfileType.OuvrantDroit,
      unreadCount: profile.unreadNotificationsCount,
      notifications: profile.notifications
          .map((notification) => _toNotificationProfileDetails(notification))
          .whereNot((e) => e.shouldBeSkipped)
          .toList(),
    );
  }

  static NotificationDetails _toNotificationProfileDetails(
    Gget_notification_centerData_fetchNotificationCenter_profiles_notifications notification,
  ) {
    DateTime? ressourceDateDebut;

    if (notification.resource?.date != null) {
      ressourceDateDebut = DateTime.parse(notification.resource!.date!);
    }

    final type = _toNotificationType(notification.code);
    final label = _getLabel(notification, type);

    return NotificationDetails(
      id: notification.id,
      label: label.replaceAll('’', '\''),
      elapseTime: notification.elapsedTime,
      type: type,
      isRead: notification.read,
      authorName: notification.actor.fullname,
      resourceId: notification.resource?.id,
      ressourceDateDebut: ressourceDateDebut,
      redirectionLabel: notification.redirectionLabel ?? _getLinkLabel(type, label),
      urn: notification.urn != null ? URN.fromString(notification.urn!) : null,
    );
  }

  static String _getLabel(
    Gget_notification_centerData_fetchNotificationCenter_profiles_notifications notification,
    NotificationType type,
  ) {
    switch (type) {
      case NotificationType.EXAMEN_RECOMMANDE:
        return _insertColonForStringWithProchainement(notification.resource?.title);
      case NotificationType.RAPPEL_RDV_PREV_DEPIST:
        var resourceLabel = notification.resource?.title ?? notification.label;
        resourceLabel = resourceLabel.length > 100 ? '${resourceLabel.substring(0, 99)}...' : resourceLabel;
        return _insertColonForStringWithProchainement(resourceLabel);
      case NotificationType.PARTAGE_PROFIL_AIDANT:
      case NotificationType.ACCORD_PARTAGE_PROFIL:
      case NotificationType.REVOCATION_PAR_AIDE:
      case NotificationType.REVOCATION_PAR_AIDANT:
      case NotificationType.REFUS_PARTAGE_PROFIL:
      case NotificationType.RAPPEL_AGENDA:
      case NotificationType.RDV_AGENDA:
      case NotificationType.RAPPEL_RDV_PREV_VACC:
        final resourceLabel = notification.resource?.title ?? notification.label;
        return resourceLabel.length > 100 ? '${resourceLabel.substring(0, 99)}...' : resourceLabel;
      case NotificationType.DOCUMENT:
      case NotificationType.CONSULTATION_DOCUMENT:
      case NotificationType.MESSAGE:
      case NotificationType.AJOUT_VACCINATION:
      case NotificationType.AJOUT_GLYCEMIE:
      case NotificationType.AJOUT_HBA1C:
      case NotificationType.AJOUT_TAILLE:
      case NotificationType.AJOUT_POIDS:
      case NotificationType.AJOUT_PERIMETRE_CRANIEN:
      case NotificationType.REPONSE_SUPPORT:
      case NotificationType.CONSULT_VACCINATION:
      case NotificationType.AJOUT_ENTOURAGE:
      case NotificationType.PRIMO_ALIM_MHS:
      case NotificationType.ACCES_DOCUMENT_PS:
      case NotificationType.ACCES_BRIS_GLACE:
      case NotificationType.RAPPEL_MODIF_DA:
      case NotificationType.REMISE_VISIBILITE_AUTO:
      case NotificationType.RAPPEL_CONSENT_RL_PASSAGE_MAJO:
      case NotificationType.RAPPEL_CONSENT_PASSAGE_MAJO:
      case NotificationType.UNKNOWN:
        return notification.label;
    }
  }

  static String _insertColonForStringWithProchainement(String? resourceLabel) {
    if (resourceLabel == null) {
      return 'Un examen médical est à planifier prochainement';
    }

    const keyword = 'prochainement';
    final int index = resourceLabel.indexOf(keyword);

    if (index != -1) {
      final int insertPosition = index + keyword.length;
      return '${resourceLabel.substring(0, insertPosition)} : ${resourceLabel.substring(insertPosition).trim()}';
    }

    return resourceLabel;
  }

  static String? _getLinkLabel(NotificationType type, String label) {
    switch (type) {
      case NotificationType.DOCUMENT:
        return label.contains('supprimé') ? null : 'Voir le document';
      case NotificationType.REMISE_VISIBILITE_AUTO:
        return 'Voir le document';
      case NotificationType.CONSULTATION_DOCUMENT:
        return 'Voir la fiche du professionnel';
      case NotificationType.MESSAGE:
        return 'Voir le message';
      case NotificationType.AJOUT_VACCINATION:
      case NotificationType.CONSULT_VACCINATION:
      case NotificationType.REPONSE_SUPPORT:
      case NotificationType.AJOUT_ENTOURAGE:
        return 'Voir la rubrique';
      case NotificationType.EXAMEN_RECOMMANDE:
        return 'Voir l\'examen médical';
      case NotificationType.RAPPEL_AGENDA:
        return 'Voir le rappel';
      case NotificationType.RDV_AGENDA:
        return 'Voir le rendez-vous';
      case NotificationType.RAPPEL_RDV_PREV_VACC:
        return 'Voir la vaccination';
      case NotificationType.RAPPEL_RDV_PREV_DEPIST:
        return 'Voir le dépistage';
      case NotificationType.ACCORD_PARTAGE_PROFIL:
      case NotificationType.REVOCATION_PAR_AIDANT:
        return 'Voir le justificatif';
      case NotificationType.PARTAGE_PROFIL_AIDANT:
        return 'Voir la demande';
      case NotificationType.AJOUT_PERIMETRE_CRANIEN:
      case NotificationType.AJOUT_GLYCEMIE:
      case NotificationType.AJOUT_HBA1C:
      case NotificationType.AJOUT_TAILLE:
      case NotificationType.AJOUT_POIDS:
        return 'Voir la mesure';
      case NotificationType.ACCES_DOCUMENT_PS:
      case NotificationType.ACCES_BRIS_GLACE:
        return 'Voir la fiche du professionnel';
      case NotificationType.PRIMO_ALIM_MHS:
        return 'Voir mon histoire de santé';
      case NotificationType.RAPPEL_MODIF_DA:
        return 'Voir mes directives';
      case NotificationType.REFUS_PARTAGE_PROFIL:
      case NotificationType.REVOCATION_PAR_AIDE:
      case NotificationType.RAPPEL_CONSENT_PASSAGE_MAJO:
        return 'Mettre à jour les autorisations';
      case NotificationType.RAPPEL_CONSENT_RL_PASSAGE_MAJO:
      case NotificationType.UNKNOWN:
        return null;
    }
  }
}

NotificationType _toNotificationType(String code) {
  switch (code) {
    case 'AJOUT_DOCUMENT':
    case 'MODIF_DOCUMENT':
    case 'SUPP_DOC':
      return NotificationType.DOCUMENT;
    case 'CONSULT_DOCUMENT':
      return NotificationType.CONSULTATION_DOCUMENT;
    case 'RECEPTION_MESSAGE':
      return NotificationType.MESSAGE;
    case 'AJOUT_VACCINATION':
      return NotificationType.AJOUT_VACCINATION;
    case 'RAPPEL_RDV_PREV':
      return NotificationType.EXAMEN_RECOMMANDE;
    case 'RAPPEL_AGENDA':
      return NotificationType.RAPPEL_AGENDA;
    case 'RAPPEL_RDV_USAGER':
      return NotificationType.RDV_AGENDA;
    case 'RAPPEL_RDV_PREV_VACC':
      return NotificationType.RAPPEL_RDV_PREV_VACC;
    case 'RAPPEL_RDV_PREV_DEPIST':
      return NotificationType.RAPPEL_RDV_PREV_DEPIST;
    case 'COPIE_DOC_AJOUT_GLYCEMIE':
      return NotificationType.AJOUT_GLYCEMIE;
    case 'COPIE_DOC_AJOUT_HBA1C':
      return NotificationType.AJOUT_HBA1C;
    case 'COPIE_DOC_AJOUT_TAILLE':
      return NotificationType.AJOUT_TAILLE;
    case 'COPIE_DOC_AJOUT_POIDS':
      return NotificationType.AJOUT_POIDS;
    case 'COPIE_DOC_AJOUT_PC':
      return NotificationType.AJOUT_PERIMETRE_CRANIEN;
    case 'REPONSE_SUPPORT':
      return NotificationType.REPONSE_SUPPORT;
    case 'AJOUT_ENTOURAGE':
      return NotificationType.AJOUT_ENTOURAGE;
    case 'CONSULT_VACCINATION':
      return NotificationType.CONSULT_VACCINATION;
    case 'ACCORD_PARTAGE_PROFIL':
      return NotificationType.ACCORD_PARTAGE_PROFIL;
    case 'REVOCATION_PAR_AIDANT':
      return NotificationType.REVOCATION_PAR_AIDANT;
    case 'REVOCATION_PAR_AIDE':
      return NotificationType.REVOCATION_PAR_AIDE;
    case 'REFUS_PARTAGE_PROFIL':
      return NotificationType.REFUS_PARTAGE_PROFIL;
    case 'PARTAGE_PROFIL_AIDANT':
      return NotificationType.PARTAGE_PROFIL_AIDANT;
    case 'ACCES_DMP_PS':
      return NotificationType.ACCES_DOCUMENT_PS;
    case 'ACCES_BRIS_GLACE':
      return NotificationType.ACCES_BRIS_GLACE;
    case 'PRIMO_ALIM_MHS':
      return NotificationType.PRIMO_ALIM_MHS;
    case 'RAPPEL_MODIF_DA':
      return NotificationType.RAPPEL_MODIF_DA;
    case 'REMISE_VISIBILITE_AUTO':
      return NotificationType.REMISE_VISIBILITE_AUTO;
    case 'RAPPEL_CONSENT_RL_PASSAGE_MAJO':
      return NotificationType.RAPPEL_CONSENT_RL_PASSAGE_MAJO;
    case 'RAPPEL_CONSENT_PASSAGE_MAJO':
      return NotificationType.RAPPEL_CONSENT_PASSAGE_MAJO;
    default:
      return NotificationType.UNKNOWN;
  }
}
