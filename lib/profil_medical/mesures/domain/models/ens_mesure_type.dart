/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

enum EnsMesureType {
  POIDS(
    'Poids',
    'historique_poids',
    false,
    [
      CourbesReferencePeriode.ZERO_TROIS_ANS,
      CourbesReferencePeriode.UN_DIX_HUIT_ANS,
    ],
  ),
  TAILLE(
    'Taille',
    'historique_taille',
    false,
    [
      CourbesReferencePeriode.ZERO_TROIS_ANS,
      CourbesReferencePeriode.UN_DIX_HUIT_ANS,
    ],
  ),
  IMC(
    'Indice de Masse Corporelle',
    'historique_IMC',
    false,
    [CourbesReferencePeriode.ZERO_DIX_HUIT_ANS],
  ),
  FREQUENCE_CARDIAQUE(
    'Fréquence cardiaque',
    'historique_frequence_cardiaque',
    false,
    [],
  ),
  TOUR_DE_TAILLE(
    'Tour de taille',
    'historique_tour_de_taille',
    false,
    [],
  ),
  NOMBRE_DE_PAS('Nombre de pas', '', false, []),
  TENSION_ARTERIELLE_SYSTOLIQUE('', '', false, []),
  TENSION_ARTERIELLE_DIASTOLIQUE('', '', false, []),
  TENSION_ARTERIELLE(
    'Tension artérielle',
    'historique_tension_arterielle',
    false,
    [],
  ),
  PERIMETRE_CRANIEN(
    'Périmètre crânien',
    'historique_perimetre_cranien',
    false,
    [CourbesReferencePeriode.ZERO_CINQ_ANS],
  ),
  NIVEAU_DE_DOULEUR(
    'Niveau de douleur',
    'historique_niveau_de_douleur',
    false,
    [],
  ),
  TEMPERATURE('Température', 'historique_temperature', false, []),
  GLYCEMIE('Glycémie', 'historique_glycemie', false, []),
  GLUCOSE_INTERSTITIEL(
    'Taux de glucose interstitiel',
    'historique_taux_glucose',
    false,
    [],
  ),
  HEMOGLOBINE_GLYQUEE(
    'Hémoglobine glyquée (HbA1c)',
    'historique_hba1c',
    true,
    [],
  ),
  HEMOGLOBINE_GLYQUEE_INDEX(
    'Indicateur de gestion du glucose',
    'historique_igg',
    false,
    [],
  ),
  UNKNOWN('', '', false, []);

  const EnsMesureType(
    this.label,
    this.tagHistoriqueLevel3,
    this.targetCanBeDefined,
    this.availablePeriodsInCarnetdeSante,
  );

  final String label;

  final String tagHistoriqueLevel3;

  final bool targetCanBeDefined;

  final List<CourbesReferencePeriode> availablePeriodsInCarnetdeSante;

  bool get hasCourbesReference => [
        EnsMesureType.TAILLE,
        EnsMesureType.POIDS,
        EnsMesureType.IMC,
        EnsMesureType.PERIMETRE_CRANIEN,
      ].contains(this);

  static EnsMesureType? fromLabel(String label) {
    for (final mesure in EnsMesureType.values) {
      if (mesure.label == label) {
        return mesure;
      }
    }
    return null;
  }
}

extension EnsMesureTypeExtension on EnsMesureType {
  bool isLabelFeminin() {
    switch (this) {
      case EnsMesureType.POIDS:
      case EnsMesureType.IMC:
      case EnsMesureType.TOUR_DE_TAILLE:
      case EnsMesureType.PERIMETRE_CRANIEN:
      case EnsMesureType.NOMBRE_DE_PAS:
      case EnsMesureType.NIVEAU_DE_DOULEUR:
      case EnsMesureType.GLUCOSE_INTERSTITIEL:
      case EnsMesureType.HEMOGLOBINE_GLYQUEE:
      case EnsMesureType.HEMOGLOBINE_GLYQUEE_INDEX:
        return false;
      case EnsMesureType.TAILLE:
      case EnsMesureType.FREQUENCE_CARDIAQUE:
      case EnsMesureType.TENSION_ARTERIELLE_SYSTOLIQUE:
      case EnsMesureType.TENSION_ARTERIELLE_DIASTOLIQUE:
      case EnsMesureType.TENSION_ARTERIELLE:
      case EnsMesureType.TEMPERATURE:
      case EnsMesureType.GLYCEMIE:
        return true;
      default:
        throw "Si ça crash ici, c'est que tu as oublié d'ajouter ta nouvelle valeur de l'enum au dessus !";
    }
  }

  bool shouldLowercaseLabelForTitle() {
    if (this == EnsMesureType.IMC || this == EnsMesureType.HEMOGLOBINE_GLYQUEE) {
      return false;
    }
    return true;
  }

  String? customSubtitle(EnsMesureType type, bool isProfilPrincipal) {
    switch (type) {
      case EnsMesureType.IMC:
        return 'Je suis son évolution et comprends ce qu\'il signifie pour ${isProfilPrincipal ? 'ma' : 'sa'} santé. Il est calculé en ajoutant ${isProfilPrincipal ? 'mon' : 'son'} poids et ${isProfilPrincipal ? 'ma' : 'sa'} taille.';

      case EnsMesureType.POIDS:
        return 'Pour suivre sa courbe d\'évolution et permettre le calcul de ${isProfilPrincipal ? 'mon indice' : 'l\'indice'} de masse corporelle (IMC).';

      case EnsMesureType.TAILLE:
        return 'Pour ${isProfilPrincipal ? 'permettre le calcul de mon indice' : 'suivre sa courbe de croissance et permettre le calcul de l’indice'} de masse corporelle (IMC).';

      case EnsMesureType.TOUR_DE_TAILLE:
        return 'Pour suivre son évolution et mieux comprendre ce qu’il signifie pour ${isProfilPrincipal ? 'ma' : 'sa'} santé.';

      case EnsMesureType.NOMBRE_DE_PAS:
        return 'Pour suivre ${isProfilPrincipal ? 'mon' : 'son'} activité quotidienne et visualiser sa progression.';

      case EnsMesureType.FREQUENCE_CARDIAQUE:
        return 'Pour surveiller ses variations quotidiennes au repos et à l\'effort.';

      case EnsMesureType.TEMPERATURE:
        return 'Pour surveiller ses variations${isProfilPrincipal ? '.' : ' et prévenir de l\'arrivée de fièvre.'}';

      case EnsMesureType.NIVEAU_DE_DOULEUR:
        return 'Pour suivre son évolution et identifier des tendances sur le long terme.';

      case EnsMesureType.PERIMETRE_CRANIEN:
        return 'Pour suivre la courbe de croissance ${isProfilPrincipal ? 'du' : 'de son'} cerveau.';

      default:
        return null;
    }
  }

  String toMeasureCodeString() {
    switch (this) {
      case EnsMesureType.POIDS:
        return 'WEIGHT';
      case EnsMesureType.TAILLE:
        return 'HEIGHT';
      case EnsMesureType.IMC:
        return 'BODY_MASS_INDEX';
      case EnsMesureType.FREQUENCE_CARDIAQUE:
        return 'HEART_RATE';
      case EnsMesureType.TOUR_DE_TAILLE:
        return 'WAIST_CIRCUMFERENCE';
      case EnsMesureType.TENSION_ARTERIELLE_SYSTOLIQUE:
        return 'SYSTOLIC_BLOOD_PRESSURE';
      case EnsMesureType.TENSION_ARTERIELLE_DIASTOLIQUE:
        return 'DIASTOLIC_BLOOD_PRESSURE';
      case EnsMesureType.TENSION_ARTERIELLE:
        return 'BLOOD_PRESSURE';
      case EnsMesureType.NOMBRE_DE_PAS:
        return 'STEPS_BY_DAY';
      case EnsMesureType.PERIMETRE_CRANIEN:
        return 'HEAD_CIRCUMFERENCE';
      case EnsMesureType.NIVEAU_DE_DOULEUR:
        return 'PAIN_SEVERITY';
      case EnsMesureType.TEMPERATURE:
        return 'BODY_TEMPERATURE';
      case EnsMesureType.GLYCEMIE:
        return 'GLUCOSE';
      case EnsMesureType.UNKNOWN:
        throw 'IMPOSSIBLE';
      case EnsMesureType.GLUCOSE_INTERSTITIEL:
        return 'INTERSTITIAL_GLUCOSE';
      case EnsMesureType.HEMOGLOBINE_GLYQUEE:
        return 'GLYCATED_HEMOGLOBIN';
      case EnsMesureType.HEMOGLOBINE_GLYQUEE_INDEX:
        return 'HEMOGLOBIN_GLYCATION_INDEX';
    }
  }

  String getSvgForMesureCode() {
    switch (this) {
      case EnsMesureType.POIDS:
        return EnsImages.poids;
      case EnsMesureType.TAILLE:
        return EnsImages.taille;
      case EnsMesureType.IMC:
        return EnsImages.imc;
      case EnsMesureType.FREQUENCE_CARDIAQUE:
        return EnsImages.mesures;
      case EnsMesureType.TOUR_DE_TAILLE:
        return EnsImages.tour_de_taille;
      case EnsMesureType.TENSION_ARTERIELLE_SYSTOLIQUE:
      case EnsMesureType.TENSION_ARTERIELLE_DIASTOLIQUE:
      case EnsMesureType.TENSION_ARTERIELLE:
        return EnsImages.tension_arterielle;
      case EnsMesureType.NOMBRE_DE_PAS:
        return EnsImages.nombre_de_pas;
      case EnsMesureType.PERIMETRE_CRANIEN:
        return EnsImages.mesure_crane;
      case EnsMesureType.NIVEAU_DE_DOULEUR:
        return EnsImages.niveau_de_douleur;
      case EnsMesureType.TEMPERATURE:
        return EnsImages.temperature;
      case EnsMesureType.GLYCEMIE:
        return EnsImages.glycemie;
      case EnsMesureType.GLUCOSE_INTERSTITIEL:
        return EnsImages.indicateur_gestion_de_glycemie;
      case EnsMesureType.HEMOGLOBINE_GLYQUEE:
        return EnsImages.hba1c;
      case EnsMesureType.HEMOGLOBINE_GLYQUEE_INDEX:
        return EnsImages.tgim;
      case EnsMesureType.UNKNOWN:
        return '';
    }
  }
}
