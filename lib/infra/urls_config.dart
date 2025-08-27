/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

class UrlsConfig {
  String websiteUrl;
  String parametersUrl;
  String maladiesUrl;
  String accessibilityInfosUrl;
  String cguUrl;
  String privacyInfosUrl;
  String helpUrl;
  String helpMedecinTraitant;
  String historiqueActiviteUrl;
  String profilesActivationUrl;
  String contactUrl;
  String guidePratiquePatientDAUrl;
  String finDeVieUrl;
  String directivesAnticipeesUrl;
  String bugReportPage;
  String userSurveyPage;
  String suggestionSurveyPage;
  String cmsUrl;
  String doctrineNumeriqueUrl;
  String biometricHelpUrl;
  String ameliorationPage;
  String registreDesRefusUrl;
  String donOrganesUrl;
  String matriceHabilitationPdfUrl;
  String enrolementClotureUrl;
  String recommanderAppUrl;

  // Rappel: Chaque nouveau url ajouté, ne pas oublier de le rendre configuration depuis firebase
  // en l'ajoutant dans le fichier urls_config_middlewares.dart
  UrlsConfig({
    this.websiteUrl = 'https://www.monespacesante.fr/mon-espace',
    this.parametersUrl = 'https://www.monespacesante.fr/mon-compte/informations-de-connexion',
    this.maladiesUrl = 'https://www.monespacesante.fr/medical/profil/maladies',
    this.accessibilityInfosUrl = 'https://www.monespacesante.fr/accessibilite',
    this.cguUrl = 'https://www.monespacesante.fr/cgu',
    this.privacyInfosUrl = 'https://www.monespacesante.fr/protection-donnees-personnelles',
    this.helpUrl = 'https://www.monespacesante.fr/questions-frequentes',
    this.helpMedecinTraitant =
        'https://www.ameli.fr/assure/droits-demarches/principes/choisir-et-declarer-votre-medecin-traitant',
    this.historiqueActiviteUrl = 'https://www.monespacesante.fr/mon-compte/historique-activite',
    this.profilesActivationUrl = 'https://www.monespacesante.fr/dashboard/profils-a-activer',
    this.contactUrl = 'https://www.monespacesante.fr/espace-echange',
    this.guidePratiquePatientDAUrl =
        'https://www.has-sante.fr/upload/docs/application/pdf/2016-03/directives_anticipees_concernant_les_situations_de_fin_de_vie_v16.pdf',
    this.finDeVieUrl = 'https://www.parlons-fin-de-vie.fr/',
    this.directivesAnticipeesUrl =
        'https://www.has-sante.fr/jcms/c_2722363/fr/pour-tous-comment-rediger-vos-directives-anticipees',
    this.bugReportPage =
        'https://monespacesante.evalandgo.com/s/index.php?id=JTk5byU5M3ElOUElQUU%3D&a=JTk4ayU5MnAlOTglQUI%3D',
    this.userSurveyPage =
        'https://monespacesante.evalandgo.com/s/index.php?id=JTk5byU5M3ElOUMlQUY%3D&a=JTk4ayU5MnAlOTglQUI%3D',
    this.suggestionSurveyPage =
        'https://monespacesante.evalandgo.com/form/421822/s/?id=JTlBaiU5M3ElOUElQUU%3D&a=JTk4ayU5MnAlOTglQUI%3D',
    this.cmsUrl = 'cms.monespacesante.fr/gateway/cms',
    this.doctrineNumeriqueUrl = 'https://esante.gouv.fr/strategie-nationale/doctrine',
    this.biometricHelpUrl = 'https://www.monespacesante.fr/questions-frequentes/gerer-mes-parametres/10',
    this.ameliorationPage =
        'https://monespacesante.evalandgo.com/form/421822/s/?id=JTlBaiU5M3ElOUElQUU%3D&a=JTk4ayU5MnAlOTglQUI%3D',
    this.registreDesRefusUrl = 'https://www.registrenationaldesrefus.fr/#etape-1',
    this.donOrganesUrl = 'https://www.dondorganes.fr/',
    this.matriceHabilitationPdfUrl =
        'https://cms.monespacesante.fr/gateway/cms/sites/default/files/matrice-habilitations.pdf',
    this.enrolementClotureUrl = 'https://www.monespacesante.fr/enrolement/cloture/accueil',
    this.recommanderAppUrl = 'https://www.monespacesante.fr/recommander',
  });
}
