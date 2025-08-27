/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/notification_center/utils/notifications_semantics_utils.dart';

class NotificationDetails extends Equatable {
  final String id;
  final String label;
  final String elapseTime;
  final NotificationType type;
  final bool isRead;
  final String? authorName;
  final String? resourceId;
  final DateTime? ressourceDateDebut;
  final String? redirectionLabel;
  final URN? urn;

  const NotificationDetails({
    required this.id,
    required this.label,
    required this.elapseTime,
    required this.type,
    required this.isRead,
    required this.authorName,
    required this.resourceId,
    required this.redirectionLabel,
    required this.urn,
    this.ressourceDateDebut,
  });

  NotificationDetails clone({
    String? id,
    String? label,
    String? resourceLabel,
    String? elapseTime,
    NotificationType? type,
    bool? isRead,
    String? authorName,
    String? resourceId,
    DateTime? ressourceDateDebut,
    String? redirectionLabel,
    URN? urn,
  }) {
    return NotificationDetails(
      id: id ?? this.id,
      label: label ?? this.label,
      elapseTime: elapseTime ?? this.elapseTime,
      type: type ?? this.type,
      isRead: isRead ?? this.isRead,
      authorName: authorName ?? this.authorName,
      resourceId: resourceId ?? this.resourceId,
      ressourceDateDebut: ressourceDateDebut ?? this.ressourceDateDebut,
      redirectionLabel: redirectionLabel ?? this.redirectionLabel,
      urn: urn ?? this.urn,
    );
  }

  bool isSuppressionDocNotification() => label.contains('supprimé');

  bool get shouldBeSkipped => type == NotificationType.UNKNOWN && urn == null;

  String semanticDateHeure() {
    return semanticsLecteurDateOuHeure(elapseTime);
  }

  @override
  List<Object?> get props => [
        id,
        label,
        elapseTime,
        type,
        isRead,
        authorName,
        resourceId,
        ressourceDateDebut,
        redirectionLabel,
        urn,
      ];
}

class URN extends Equatable {
  final NamespaceIdentifier domain;
  final String? resourceId;

  const URN(this.domain, this.resourceId);

  static URN? fromString(String urn) {
    final splittedURNValues = urn.split(':');
    final bool isValidURNFormat = urn.startsWith('urn:') && splittedURNValues.length >= 2;
    final String? urnRessourceId = splittedURNValues.length > 2 ? splittedURNValues[2] : null;
    final NamespaceIdentifier urnDomainMappedValue = NamespaceIdentifier.fromValue(splittedURNValues[1]);

    return isValidURNFormat ? URN(urnDomainMappedValue, urnRessourceId) : null;
  }

  @override
  List<Object?> get props => [domain, resourceId];
}

enum NamespaceIdentifier {
  DOCUMENT,
  ENTOURAGE,
  ESPACE_ECHANGE,
  ETABLISSEMENT_SANTE,
  EXAMEN,
  INVITATION_EN_ATTENTE,
  MESURE,
  MESSAGE,
  PROFESSIONNEL_SANTE,
  MHS,
  RAPPEL,
  RDV,
  VACCINATION,
  ENTOURAGE_VOLONTES,
  DIRECTIVES_ANTICIPEES,
  SERVICES_SYNCHRONISES,
  MODIFICATION_MDP,
  UNKNOWN;

  static NamespaceIdentifier fromValue(String value) {
    return switch (value.toLowerCase()) {
      'document' => NamespaceIdentifier.DOCUMENT,
      'entourage' => NamespaceIdentifier.ENTOURAGE,
      'espace_echange' => NamespaceIdentifier.ESPACE_ECHANGE,
      'etablissement_sante' => NamespaceIdentifier.ETABLISSEMENT_SANTE,
      'examen' => NamespaceIdentifier.EXAMEN,
      'invitation_en_attente' => NamespaceIdentifier.INVITATION_EN_ATTENTE,
      'mesure' => NamespaceIdentifier.MESURE,
      'message' => NamespaceIdentifier.MESSAGE,
      'professionnel_sante' => NamespaceIdentifier.PROFESSIONNEL_SANTE,
      'profil_medical' => NamespaceIdentifier.MHS,
      'rappel' => NamespaceIdentifier.RAPPEL,
      'rdv' => NamespaceIdentifier.RDV,
      'vaccination' => NamespaceIdentifier.VACCINATION,
      'entourage_volontes' => NamespaceIdentifier.ENTOURAGE_VOLONTES,
      'directives_anticipees' => NamespaceIdentifier.DIRECTIVES_ANTICIPEES,
      'services_synchronises' => NamespaceIdentifier.SERVICES_SYNCHRONISES,
      'modification_mdp' => NamespaceIdentifier.MODIFICATION_MDP,
      _ => NamespaceIdentifier.UNKNOWN,
    };
  }
}

enum NotificationType {
  DOCUMENT,
  CONSULTATION_DOCUMENT,
  MESSAGE,
  AJOUT_VACCINATION,
  RAPPEL_AGENDA,
  RDV_AGENDA,
  EXAMEN_RECOMMANDE,
  AJOUT_GLYCEMIE,
  AJOUT_HBA1C,
  AJOUT_TAILLE,
  AJOUT_POIDS,
  AJOUT_PERIMETRE_CRANIEN,
  REPONSE_SUPPORT,
  CONSULT_VACCINATION,
  AJOUT_ENTOURAGE,
  RAPPEL_RDV_PREV_VACC,
  RAPPEL_RDV_PREV_DEPIST,
  ACCORD_PARTAGE_PROFIL,
  REVOCATION_PAR_AIDANT,
  REFUS_PARTAGE_PROFIL,
  PARTAGE_PROFIL_AIDANT,
  PRIMO_ALIM_MHS,
  REVOCATION_PAR_AIDE,
  ACCES_DOCUMENT_PS,
  ACCES_BRIS_GLACE,
  RAPPEL_MODIF_DA,
  REMISE_VISIBILITE_AUTO,
  RAPPEL_CONSENT_RL_PASSAGE_MAJO,
  RAPPEL_CONSENT_PASSAGE_MAJO,
  UNKNOWN
}
