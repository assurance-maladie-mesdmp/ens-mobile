/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsMessagerie {
  static const tag_messagerie_liste_conversations = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'messagerie_liste_conversations',
    level1: 'messagerie',
    level2: 'liste_conversations',
  );

  static const tag_658_button_nouveau_message = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_nouveau-message',
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_consulter_message_non_lu = EnsTag(
    name: 'consulter_message_non_lu',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'liste_conversations',
  );

  static const tag_consulter_message_lu = EnsTag(
    name: 'consulter_message_lu',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'liste_conversations',
  );

  static const tag_messagerie_message_visualiser_PJ = EnsTag(
    name: 'messagerie_message_visualiser_PJ',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'messagerie',
    level2: 'liste_conversations',
    level3: 'message',
  );

  static const tag_messagerie_enregistrement_PJ_MesDocuments = EnsTag(
    name: 'messagerie_enregistrement_PJ_MesDocuments',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'messagerie',
    level2: 'liste_conversations',
    level3: 'message',
  );

  static const tag_messagerie_message = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'messagerie_message',
    level1: 'messagerie',
    level2: 'liste_conversations',
    level3: 'message',
  );

  static const tag_button_Multidest_repondre_a_tous = EnsTag(
    name: 'button_Multidest_repondre_a_tous',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'liste_conversations',
  );

  static const tag_button_consulter_PJ = EnsTag(
    name: 'button_consulter_PJ',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'liste_conversations',
  );

  static const tag_popin_consulter_PJ_actions = EnsTag(
    name: 'popin_consulter_PJ_actions',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'messagerie',
    level2: 'liste_conversations',
    level3: 'message',
  );

  static const tag_button_visualiser_PJ = EnsTag(
    name: 'button_visualiser_PJ',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'liste_conversations',
    level3: 'message',
  );

  static const tag_button_enregistrer_PJ_mesDocuments = EnsTag(
    name: 'button_enregistrer_PJ_mesDocuments',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'liste_conversations',
  );

  static const tag_button_telecharger_PJ_local = EnsTag(
    name: 'button_telecharger_PJ_local',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'liste_conversations',
  );

  static const tag_498_popin_ajouter_document_mes = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'popin_ajouter_document_mes',
    level1: 'documents',
    level2: 'documents_ajout',
  );

  static const tag_630_button_validation_ajout_document_sante = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_validation_ajout_document_sante',
    level1: 'documents',
    level2: 'documents_ajout',
  );

  static const tag_messagerie_reponse = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'messagerie_reponse',
    level1: 'messagerie',
    level2: 'liste_conversations',
    level3: 'message_reponse',
  );

  static const tag_button_envoyer_message = EnsTag(
    name: 'button_envoyer_message',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'liste_conversations',
  );

  static const tag_messagerie_reponse_envoi_back = EnsTag(
    name: 'messagerie_reponse_envoi_back',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'liste_conversations',
    level3: 'message_reponse',
  );

  static const tag_popin_messagerie_reponse_quitter = EnsTag(
    name: 'popin_messagerie_reponse_quitter',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'messagerie',
    level2: 'liste_conversations',
    level3: 'message_reponse',
  );

  static const tag_messagerie_reponse_envoi = EnsTag(
    name: 'messagerie_reponse_envoi',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'messagerie',
    level2: 'listes_conversations',
    level3: 'message_reponse',
  );

  static const tag_button_messagerie_reponse_quitter_enregistrer = EnsTag(
    name: 'button_messagerie_reponse_quitter_enregistrer',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'listes_conversations',
    level3: 'message_reponse',
  );

  static const tag_button_messagerie_reponse_quitter_supprimer = EnsTag(
    name: 'button_messagerie_reponse_quitter_supprimer',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'listes_conversations',
    level3: 'message_reponse',
  );

  static const tag_button_reponse_supprimer_PJ = EnsTag(
    name: 'button_reponse_supprimer_PJ',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'liste_conversations',
  );

  static const tag_button_reponse_ajouter_PJ = EnsTag(
    name: 'button_reponse_ajouter_PJ',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'liste_conversations',
  );

  static const tag_button_type_dajoutPJ_camera = EnsTag(
    name: 'button_type_dajoutPJ_camera',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'liste_conversations',
    level3: 'message_reponse',
  );

  static const tag_button_type_dajout_fichier = EnsTag(
    name: 'button_type_dajout_fichier',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'liste_conversations',
    level3: 'message_reponse',
  );

  static const tag_button_type_dajout_album = EnsTag(
    name: 'button_type_dajout_album',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'liste_conversations',
    level3: 'message_reponse',
  );

  static const tag_popin_type_dajout_PJ = EnsTag(
    name: 'popin_type_dajout_PJ',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'messagerie',
    level2: 'liste_conversations',
    level3: 'message_reponse',
  );

  static const tag_659_button_envoyer_nouveau_message = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_envoyer_nouveau-message',
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_553_button_nom_ps = EnsTag(
    name: 'button_nom_ps',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_833_link_recherche_pharmacie = EnsTag(
    name: 'link_recherche_pharmacie',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_834_rechercher_pharmacie_messagerie = EnsTag(
    name: 'rechercher_pharmacie_messagerie',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_835_button_rechercher_pharmacie = EnsTag(
    name: 'button_rechercher_pharmacie',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_836_button_liste_destinataire = EnsTag(
    name: 'button_liste_destinataire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_837_button_liste_destinataire = EnsTag(
    name: 'button_choix_un_destinataire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_838_vue_aucun_destinataire = EnsTag(
    name: 'vue_aucun_destinataire',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_839_button_selectionner_pharmacie = EnsTag(
    name: 'button_selectionner_pharmacie',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_842_button_supprimer_un_destinataire = EnsTag(
    name: 'button_supprimer_un_destinataire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_554_info_ps = EnsTag(
    name: 'info_ps',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_597_info_es = EnsTag(
    name: 'info_es',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_705_button_ajouter_es = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ajouter_es',
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_730_button_valider_retirer_es = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_valider_retirer_es',
    level1: 'messagerie',
    level2: 'listes_conversations',
    level3: 'es_suppression',
  );

  static const tag_641_etablissement_sante_adresse = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'etablissement_sante_adresse',
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_593_professionnel_sante_adresse = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'professionnel_sante_adresse',
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_642_etablissement_sante_tel = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'etablissement_sante_tel',
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_594_professionnel_sante_tel = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'professionnel_sante_tel',
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_555_button_ajouter_ps = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ajouter_ps',
    level1: 'messagerie',
    level2: 'listes_conversations',
  );

  static const tag_557_button_valider_retirer_ps = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_valider_retirer_ps',
    level1: 'messagerie',
    level2: 'listes_conversations',
    level3: 'ps_suppression',
  );
}
