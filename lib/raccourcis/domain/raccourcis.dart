/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/raccourcis/domain/raccourcis_categorie.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

enum Raccourcis {
  VOIR_MALADIES(
    titre: 'Voir mes maladies et sujets de santé',
    imagePath: EnsImages.profil_medical,
    categorie: Categorie.SUIVI_MEDICAL,
  ),
  VOIR_TRAITEMENTS(
    titre: 'Voir mes traitements',
    imagePath: EnsImages.traitements,
    categorie: Categorie.SUIVI_MEDICAL,
  ),
  VOIR_VACCINATIONS(
    titre: 'Voir mes vaccinations à venir',
    imagePath: EnsImages.agenda,
    categorie: Categorie.SUIVI_MEDICAL,
  ),
  AJOUTER_TRAITEMENT(
    titre: 'Ajouter un traitement',
    imagePath: EnsImages.traitements,
    categorie: Categorie.SUIVI_MEDICAL,
  ),
  AJOUTER_VACCINATION(
    titre: 'Ajouter une vaccination',
    imagePath: EnsImages.vaccination_ajout,
    categorie: Categorie.SUIVI_MEDICAL,
  ),
  POIDS(titre: 'Poids', imagePath: EnsImages.poids, categorie: Categorie.MESURES),
  TAILLE(titre: 'Taille', imagePath: EnsImages.taille, categorie: Categorie.MESURES),
  IMC(titre: 'Indice de Masse Corporelle', imagePath: EnsImages.imc, categorie: Categorie.MESURES),
  TOUR_DE_TAILLE(titre: 'Tour de taille', imagePath: EnsImages.tour_de_taille, categorie: Categorie.MESURES),
  PERIMETRE_CRANIEN(
    titre: 'Périmètre crânien',
    imagePath: EnsImages.mesure_crane,
    categorie: Categorie.MESURES,
  ),
  TEMPERATURE(titre: 'Température', imagePath: EnsImages.temperature, categorie: Categorie.MESURES),
  GLYCEMIE(titre: 'Glycémie', imagePath: EnsImages.glycemie, categorie: Categorie.MESURES),
  TENSION_ARTERIELLE(
    titre: 'Tension artérielle',
    imagePath: EnsImages.tension_arterielle,
    categorie: Categorie.MESURES,
  ),
  NIVEAU_DE_DOULEUR(
    titre: 'Niveau de douleur',
    imagePath: EnsImages.niveau_de_douleur,
    categorie: Categorie.MESURES,
  ),
  FREQUENCE_CARDIAQUE(
    titre: 'Fréquence cardiaque',
    imagePath: EnsImages.mesures,
    categorie: Categorie.MESURES,
  ),
  NOMBRE_DE_PAS(titre: 'Nombre de pas', imagePath: EnsImages.nombre_de_pas, categorie: Categorie.MESURES),
  VOIR_PS(
    titre: 'Voir mes professionnels de santé',
    imagePath: EnsImages.professionnel_de_sante,
    categorie: Categorie.PS,
  ),
  RECHERCHER_PS(
    titre: 'Rechercher un professionnel de santé',
    imagePath: EnsImages.recherche,
    categorie: Categorie.PS,
  ),
  AJOUTER_DOCUMENT(
    titre: 'Ajouter un document',
    imagePath: EnsImages.document_ajout,
    categorie: Categorie.DOCUMENTS,
  ),
  AJOUTER_DOSSIER(
    titre: 'Ajouter un dossier',
    imagePath: EnsImages.ajouter_un_dossier,
    categorie: Categorie.DOCUMENTS,
  ),
  AFFICHER_DOCUMENTS_EPINGLES(
    titre: 'Afficher mes documents épinglés',
    imagePath: EnsImages.document_epingle,
    categorie: Categorie.DOCUMENTS,
  ),
  ECRIRE_MESSAGE(
    titre: 'Ecrire un message',
    imagePath: EnsImages.messagerie_de_sante,
    categorie: Categorie.MESSAGERIE,
  ),
  ACCEDER_CATALOGUE_SERVICES(
    titre: 'Accéder au catalogue de services',
    imagePath: EnsImages.catalogue_de_services,
    categorie: Categorie.CATALOGUE_SERVICE,
  ),
  GESTION_ACCES_PS(
    titre: 'Gérer les accès des professionnels de santé',
    imagePath: EnsImages.mot_de_passe,
    categorie: Categorie.PARAMETRES,
  ),
  HISTORIQUE_ACTIVITE(
    titre: 'Accéder à l’historique d’activité',
    imagePath: EnsImages.historique_activite,
    categorie: Categorie.PARAMETRES,
  ),
  ;

  final String titre;
  final String imagePath;
  final Categorie categorie;

  const Raccourcis({required this.titre, required this.imagePath, required this.categorie});
}

extension RaccourcisExtension on Raccourcis {
  bool isMesure() {
    return switch (this) {
      Raccourcis.POIDS ||
      Raccourcis.TAILLE ||
      Raccourcis.IMC ||
      Raccourcis.TOUR_DE_TAILLE ||
      Raccourcis.PERIMETRE_CRANIEN ||
      Raccourcis.TEMPERATURE ||
      Raccourcis.GLYCEMIE ||
      Raccourcis.TENSION_ARTERIELLE ||
      Raccourcis.NIVEAU_DE_DOULEUR ||
      Raccourcis.FREQUENCE_CARDIAQUE ||
      Raccourcis.NOMBRE_DE_PAS =>
        true,
      _ => false,
    };
  }

  EnsMesureType toMesureType() {
    return switch (this) {
      Raccourcis.POIDS => EnsMesureType.POIDS,
      Raccourcis.TAILLE => EnsMesureType.TAILLE,
      Raccourcis.IMC => EnsMesureType.IMC,
      Raccourcis.TOUR_DE_TAILLE => EnsMesureType.TOUR_DE_TAILLE,
      Raccourcis.PERIMETRE_CRANIEN => EnsMesureType.PERIMETRE_CRANIEN,
      Raccourcis.TEMPERATURE => EnsMesureType.TEMPERATURE,
      Raccourcis.GLYCEMIE => EnsMesureType.GLYCEMIE,
      Raccourcis.TENSION_ARTERIELLE => EnsMesureType.TENSION_ARTERIELLE,
      Raccourcis.NIVEAU_DE_DOULEUR => EnsMesureType.NIVEAU_DE_DOULEUR,
      Raccourcis.FREQUENCE_CARDIAQUE => EnsMesureType.FREQUENCE_CARDIAQUE,
      Raccourcis.NOMBRE_DE_PAS => EnsMesureType.NOMBRE_DE_PAS,
      _ => EnsMesureType.UNKNOWN,
    };
  }
}
