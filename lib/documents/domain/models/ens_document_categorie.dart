/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:ui';

import 'package:fr_cnamts_ens/ui/ens_colors.dart';

enum EnsDocumentCategorie {
  maSante(true),
  ordonnances(true),
  radios(true),
  biologie(true),
  comptesRendus(true),
  prevention(true),
  certificats(true),
  pieceAdministrative(true),
  directivesAnticipees(false),
  syntheseMedicale(false),
  questionnaireSante(true),
  autres(true),
  unknown(false);

  final bool canBeFiltered;

  const EnsDocumentCategorie(this.canBeFiltered);

  bool isNotQuestionnaire() => this != EnsDocumentCategorie.questionnaireSante;

  String get label {
    switch (this) {
      case EnsDocumentCategorie.radios:
        return 'Radio, écho, scanner, IRM';
      case EnsDocumentCategorie.maSante:
        return 'Ma santé en résumé';
      case EnsDocumentCategorie.ordonnances:
        return 'Ordonnances et soins';
      case EnsDocumentCategorie.biologie:
        return 'Résultats de biologie';
      case EnsDocumentCategorie.comptesRendus:
        return 'Comptes rendus';
      case EnsDocumentCategorie.prevention:
        return 'Prévention et dépistages';
      case EnsDocumentCategorie.certificats:
        return 'Certificats médicaux';
      case EnsDocumentCategorie.autres:
        return 'Autres documents';
      case EnsDocumentCategorie.syntheseMedicale:
        return 'Synthèse médicale';
      case EnsDocumentCategorie.pieceAdministrative:
        return 'Pièces administratives';
      case EnsDocumentCategorie.directivesAnticipees:
        return 'Directives Anticipées';
      case EnsDocumentCategorie.questionnaireSante:
        return 'Questionnaire santé';
      case EnsDocumentCategorie.unknown:
        return 'Catégorie inconnue';
    }
  }

  Color get color {
    switch (this) {
      case EnsDocumentCategorie.radios:
        return EnsColors.illustrative08;
      case EnsDocumentCategorie.maSante:
        return EnsColors.illustrative03;
      case EnsDocumentCategorie.ordonnances:
        return EnsColors.illustrative05;
      case EnsDocumentCategorie.biologie:
        return EnsColors.illustrative01;
      case EnsDocumentCategorie.comptesRendus:
        return EnsColors.illustrative07;
      case EnsDocumentCategorie.prevention:
        return EnsColors.illustrative04;
      case EnsDocumentCategorie.certificats:
        return EnsColors.success100;
      case EnsDocumentCategorie.autres:
        return EnsColors.neutral200;
      case EnsDocumentCategorie.syntheseMedicale:
        return EnsColors.neutral300;
      case EnsDocumentCategorie.pieceAdministrative:
        return EnsColors.illustrative02;
      case EnsDocumentCategorie.directivesAnticipees:
        return EnsColors.illustrative06;
      case EnsDocumentCategorie.questionnaireSante:
        return EnsColors.neutral300;
      case EnsDocumentCategorie.unknown:
        return EnsColors.error;
    }
  }

  String get suppressionPopinTitleText {
    switch (this) {
      case EnsDocumentCategorie.directivesAnticipees:
        return 'Voulez-vous supprimer vos directives anticipées ?';
      default:
        return 'Supprimer ce document ?';
    }
  }

  String get suppressionPopinHelpText {
    switch (this) {
      case EnsDocumentCategorie.questionnaireSante:
        return 'Je peux toujours visualiser mes réponses au questionnaire depuis la page d’accueil.';
      case EnsDocumentCategorie.directivesAnticipees:
        return 'Attention, vos précédentes directives anticipées ne seront pas conservées.\nPensez à télécharger le document pour en garder une trace et les réutiliser.';
      default:
        return 'Ce document sera supprimé définitivement de mes documents et de tout élément associé (hospitalisation, etc).';
    }
  }
}
