/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsQuestionnaireAgesCles {
  // tags dynamiques (988 - 1147)
  static EnsTag tagQuestionEnCours(String code, String ages) => EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: 'questionnaire_${ages}_$code',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagButtonSuivantQuestionnaire(String code, String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_questionnaire_${ages}_${code}_suivant',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagButtonIgnorerQuestionnaire(String code, String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_questionnaire_${ages}_${code}_ignorer',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagButtonQuitterQuestionnaire(String code, String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_questionnaire_${ages}_${code}_quitter',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagButtonTuileEnSavoirPlusRdvQuestionnaire(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_tuile_en_savoir_plus_rdv_questionnaire_$ages',
        level1: 'home_connecte',
      );

  static EnsTag tagPopinEnsavoirPlusRdvQuestionnaire(String ages) => EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: 'popin_en_savoir_plus_rdv_questionnaire_$ages',
        level1: 'home_connecte',
      );

  static EnsTag tagButtonComprisRdvQuestionnaire(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_compris_rdv_questionnaire_$ages',
        level1: 'home_connecte',
      );

  static EnsTag tagLinkSanteFrRdvQuestionnaire(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'link_sante_fr_rdv_questionnaire_$ages',
        level1: 'home_connecte',
      );

  // tags statiques
  static EnsTag tagPageHomeQuestionnaire985(String ages) => EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: 'home_questionnaire_$ages',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagButtonRetourHomeQuestionnaire986(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_retour_home_questionnaire_$ages',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagButtonCommencerQuestionnaire987(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_commencer_questionnaire_$ages',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagButtonCommencerNouveauQuestionnaire2234(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_commencer_nouvelle_version_questionnaire_$ages',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagPopinQuestionnaireContinuerPlusTard992(String ages) => EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: 'popin_questionnaire_${ages}_continuer_plus_tard',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagButtonQuestionnaireContinuerPlusTardValider993(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_questionnaire_${ages}_continuer_plus_tard_valider',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagButtonAnnulerQuitterQuestionnaire1512(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_annuler_quitter_questionnaire_$ages',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagButtonAbandonnerQuestionnaire994(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_questionnaire_${ages}_continuer_plus_tard_abandonner',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagSyntheseQuestionnaire995(String ages) => EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: 'synthese_questionnaire_$ages',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagButtonVoirHabitudeDeVie996(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_synthese_questionnaire_${ages}_voir_habitudes',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagButtonSyntheseQuestionnaireEnregistrer997(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_synthese_questionnaire_${ages}_enregistrer',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagButtonOptionsQuestionnaire1513(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_options_questionnaire_$ages',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagPopinQuestionnaireRetourAccueil1004(String ages) => EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: 'popin_questionnaire_${ages}_retour_accueil',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagButtonQuestionnaireRetourAccueil1003(String ages) => EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: 'button_synthese_questionnaire_${ages}_retour_accueil',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagButtonPopinQuestionnaireFermer(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'popin_questionnaire_${ages}_fermer',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagQuestionnaireRetourAccueilEnregistrer1193(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_questionnaire_${ages}_retour_accueil_enregistrer',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagButtonQuestionnaireRetourAccueilNePasEnregistrer1006(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_questionnaire_${ages}_retour_accueil_ne_pas_enregistrer',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagPopinSelectionnerActionQuestionnaire1514(String ages) => EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: 'popin_selectionner_action_questionnaire_$ages',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagButtonSyntheseQuestionnairePartager1515(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_synthese_questionnaire_${ages}_partager',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagButtonSyntheseQuestionnaireEnvoyerPS1516(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_synthese_questionnaire_${ages}_envoyer_PS',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagButtonSyntheseQuestionnaireModifier1000(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_synthese_questionnaire_${ages}_modifier',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagButtonSantePubliqueFrance1001(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_synthese_questionnaire_${ages}_santepubliquefrance',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagButtonSyntheseQuestionnaireSupprimer1517(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_synthese_questionnaire_${ages}_supprimer',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagButtonSyntheseQuestionnaireTelecharger1519(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_synthese_questionnaire_${ages}_telecharger',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagPopinQuestionnaireVisibiliteDocument1519(String ages) => EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: 'ppopin_questionnaire_${ages}_visibilité document',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagButtonSyntheseQuestionnaireRendreVisible1520(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_synthese_questionnaire_${ages}_rendre_visible',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagButtonSyntheseQuestionnaireMasquer1521(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_synthese_questionnaire_${ages}_masquer',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagButtonSyntheseQuestionnaireFermerRendreVisible1522(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_synthese_questionnaire_${ages}_fermer_rendre_visible',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagButtonSyntheseQuestionnaireAllerDocuments1002(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_synthese_questionnaire_${ages}_aller_documents',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagPopinQuestionnaireMajEtQuitter1011(String ages) => EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: 'popin_questionnaire_${ages}_maj_et_quitter',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagButtonQuestionnaireFermerMaj1524(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_questionnaire_${ages}_fermer_mettre_à_jour',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagButtonQuestionnaireMajEtQuitterValider1012(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_questionnaire_${ages}_maj_et_quitter_valider',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagButtonQuestionnaireMajEtQuitterAbandonner1013(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_questionnaire_${ages}_maj_et_quitter_abandonner',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagButtonModifierQuestionnaire1023(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_modifier_document_questionnaire_$ages',
        level1: 'documents',
        level2: 'questionnaire_$ages',
      );

  static EnsTag tagLinkSyntheseQuestionnaireVoirHabitudes1148(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'link_synthese_questionnaire_${ages}_voir_habitudes',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagPopinSyntheseQuestionnaireSupprimer1149(String ages) => EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: 'popin_synthese_questionnaire_${ages}_supprimer',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagButtonSyntheseQuestionnaireSupprimerAnnuler1150(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_synthese_questionnaire_${ages}_supprimer_annuler',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );

  static EnsTag tagButtonSyntheseQuestionnaireSupprimerValider1151(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_synthese_questionnaire_${ages}_supprimer_valider',
        level1: 'home_connecte',
        level2: 'questionnaire_$ages',
        level3: 'synthese',
      );
}
