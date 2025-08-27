/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/catalogue_services_screen.dart';
import 'package:fr_cnamts_ens/documents/infra/document_edition_view_controller.dart';
import 'package:fr_cnamts_ens/documents/screens/filter_result_screen.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_datetime_formater.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/new_conversation_screen.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/screens/acces_ps_a_mes_donnees_screen.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/historique_activites_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_pml_section.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/maladies_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/redux/mesures_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/mesure_history_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/ens_mesure_form_bottom_sheet.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnels_de_sante_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/recherche_ps_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_type.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/redux/add_item_for_first_time_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/edit_traitement_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/traitements_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/edit_traitement_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/edit_vaccination_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/vaccinations_screen.dart';
import 'package:fr_cnamts_ens/raccourcis/domain/raccourcis.dart';
import 'package:fr_cnamts_ens/raccourcis/domain/raccourcis_item.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';

class RaccourcisWidgetViewModel extends Equatable {
  final List<RaccourcisItem> raccourcis;
  final bool isAddTraitementForFirstTime;
  final bool isAddVaccinationForFirstTime;
  final bool mustFetchLastMesures;
  final void Function() onAddTraitementFirstTime;
  final void Function() onAddVaccinationFirstTime;
  final void Function() checkIsAddTraitementFirstTime;
  final void Function() checkIsAddVaccinationFirstTime;
  final void Function() fetchLastMesures;

  const RaccourcisWidgetViewModel._({
    required this.raccourcis,
    required this.isAddTraitementForFirstTime,
    required this.isAddVaccinationForFirstTime,
    required this.mustFetchLastMesures,
    required this.onAddTraitementFirstTime,
    required this.onAddVaccinationFirstTime,
    required this.checkIsAddTraitementFirstTime,
    required this.checkIsAddVaccinationFirstTime,
    required this.fetchLastMesures,
  });

  factory RaccourcisWidgetViewModel.from(Store<EnsState> store) {
    final addItemForFirstTime = store.state.addItemForFirstTimeState;
    final raccourcisDansState = store.state.raccourcisState.raccourcis;
    final mesuresMap = store.state.mesuresState.mesureStatesByType;

    final List<RaccourcisItem> raccourcis = [];
    bool mustFetchLastMesures = false;

    for (final item in raccourcisDansState) {
      final raccourcisTitre = item.titre;
      final raccourcisImagePath = item.imagePath;
      final raccourcisCategorie = item.categorie;
      if (item.isMesure()) {
        mustFetchLastMesures = true;
        final mesureType = EnsMesureType.values.firstWhere(
          (type) => type.label == raccourcisTitre,
          orElse: () => EnsMesureType.UNKNOWN,
        );
        final mesure = mesuresMap[mesureType]?.mesure;
        final dateFormat = DateFormat('dd/MM/yyyy - HH:mm');
        const localeHelper = LocaleHelper();
        raccourcis.add(
          RaccourcisMesuresItem(
            titre: raccourcisTitre,
            imagePath: raccourcisImagePath,
            onTap: _getOnTapRaccourcis(item),
            categorie: raccourcisCategorie,
            formattedDate: mesure?.lastValue != null
                ? dateFormat.format(localeHelper.toLocal(mesure!.lastValue!.effectiveDate))
                : 'Aucune valeur',
            formattedMetricValue: mesure?.lastValue?.formattedMetricValue ?? '-',
            unit: mesure?.lastValue?.unit ?? '',
          ),
        );
      } else {
        raccourcis.add(
          RaccourcisItem(
            titre: raccourcisTitre,
            imagePath: raccourcisImagePath,
            onTap: _getOnTapRaccourcis(item),
            categorie: raccourcisCategorie,
          ),
        );
      }
    }

    return RaccourcisWidgetViewModel._(
      raccourcis: raccourcis,
      isAddTraitementForFirstTime: addItemForFirstTime.firstTimeItemAdded.contains(EnsPmlSection.TRAITEMENTS),
      isAddVaccinationForFirstTime: addItemForFirstTime.firstTimeItemAdded.contains(EnsPmlSection.VACCINATIONS),
      mustFetchLastMesures: mustFetchLastMesures,
      onAddTraitementFirstTime: () => store.dispatch(AddedItemForFirstTimeAction(EnsPmlSection.TRAITEMENTS)),
      onAddVaccinationFirstTime: () => store.dispatch(AddedItemForFirstTimeAction(EnsPmlSection.VACCINATIONS)),
      checkIsAddTraitementFirstTime: () =>
          store.dispatch(const CheckIsAddItemForFirstTimeAction(EnsPmlSection.TRAITEMENTS)),
      checkIsAddVaccinationFirstTime: () =>
          store.dispatch(const CheckIsAddItemForFirstTimeAction(EnsPmlSection.VACCINATIONS)),
      fetchLastMesures: () => store.dispatch(const FetchLastMesuresAction()),
    );
  }

  static void Function(BuildContext) _getOnTapRaccourcis(Raccourcis raccourcis) {
    return switch (raccourcis) {
      Raccourcis.VOIR_MALADIES => (context) =>
          Navigator.pushNamed(context, MaladiesScreen.routeName, arguments: const MaladiesScreenArguments()),
      Raccourcis.VOIR_TRAITEMENTS => (context) =>
          Navigator.pushNamed(context, TraitementsScreen.routeName, arguments: const TraitementsScreenArguments()),
      Raccourcis.VOIR_VACCINATIONS => (context) => Navigator.pushNamed(context, VaccinationsScreen.routeName),
      Raccourcis.AJOUTER_TRAITEMENT => (context) => Navigator.pushNamed(
            context,
            EditTraitementScreen.routeName,
            arguments: const EditTraitementScreenArguments(
              launchMode: TraitementFormulaireMode.createTraitement(),
            ),
          ),
      Raccourcis.AJOUTER_VACCINATION => (context) => Navigator.pushNamed(
            context,
            EditVaccinationScreen.routeName,
            arguments: const EditVaccinationScreenArguments(),
          ),
      Raccourcis.POIDS ||
      Raccourcis.TAILLE ||
      Raccourcis.TOUR_DE_TAILLE ||
      Raccourcis.PERIMETRE_CRANIEN ||
      Raccourcis.TEMPERATURE ||
      Raccourcis.GLYCEMIE ||
      Raccourcis.TENSION_ARTERIELLE ||
      Raccourcis.NIVEAU_DE_DOULEUR ||
      Raccourcis.FREQUENCE_CARDIAQUE ||
      Raccourcis.NOMBRE_DE_PAS =>
        (context) => _showMesureBottomSheetFromRaccourcis(context, raccourcis),
      Raccourcis.IMC => (context) =>
          Navigator.pushNamed(context, MesureHistoryScreen.routeName, arguments: EnsMesureType.IMC),
      Raccourcis.VOIR_PS => (context) => Navigator.pushNamed(context, ProfessionnelsDeSanteScreen.routeName),
      Raccourcis.RECHERCHER_PS => (context) => Navigator.pushNamed(
            context,
            RecherchePsScreen.routeName,
            arguments: RecherchePsScreenArgument(psSearchType: RecherchePSType.ADD_PS_FROM_HOME),
          ),
      Raccourcis.AJOUTER_DOCUMENT => (context) {
          final docEditionViewController = DocumentEditionViewController(context);
          docEditionViewController.openAddDocumentActions();
        },
      Raccourcis.AFFICHER_DOCUMENTS_EPINGLES => (context) {
          Navigator.pushNamed(
            context,
            FilterResultScreen.routeName,
            arguments: [FilterResultScreenArgument.epingle()],
          );
        },
      Raccourcis.AJOUTER_DOSSIER => (context) {
          final docEditionViewController = DocumentEditionViewController(context, showAddFolder: true);
          docEditionViewController.createFolder();
        },
      Raccourcis.ECRIRE_MESSAGE => (context) => Navigator.pushNamed(context, NewConversationScreen.routeName),
      Raccourcis.ACCEDER_CATALOGUE_SERVICES => (context) =>
          Navigator.pushNamed(context, CatalogueServicesScreen.routeName),
      Raccourcis.GESTION_ACCES_PS => (context) => Navigator.pushNamed(context, AccesPsAMesDonneesScreen.routeName),
      Raccourcis.HISTORIQUE_ACTIVITE => (context) => Navigator.pushNamed(context, HistoriqueActivitesScreen.routeName),
    };
  }

  static void _showMesureBottomSheetFromRaccourcis(BuildContext context, Raccourcis raccourcis) {
    final mesureType = raccourcis.toMesureType();
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext _) => EnsMesureFormBottomSheet(mesureType: mesureType, fromIncitation: false),
    );
  }

  @override
  List<Object?> get props => [
        raccourcis,
        isAddTraitementForFirstTime,
        isAddVaccinationForFirstTime,
        mustFetchLastMesures,
      ];
}
