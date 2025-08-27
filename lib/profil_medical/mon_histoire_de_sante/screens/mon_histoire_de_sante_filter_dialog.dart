/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/redux/mon_histoire_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_category.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_histoire_sante.dart';
import 'package:fr_cnamts_ens/ui/widgets/dialogs/filter_dialog.dart';

class MonHistoireDeSanteFilterDialog extends StatefulWidget {
  final List<EpisodeSanteCategorie> preSelectedCategories;
  final List<EpisodeSanteCategorie> availableCategories;

  const MonHistoireDeSanteFilterDialog({
    super.key,
    this.preSelectedCategories = const [],
    required this.availableCategories,
  });

  @override
  State<MonHistoireDeSanteFilterDialog> createState() => _MonHistoireDeSanteFilterDialogState();
}

class _MonHistoireDeSanteFilterDialogState extends State<MonHistoireDeSanteFilterDialog> {
  late List<CategoryFilterItem<EpisodeSanteCategorie>> selectableFilters;

  @override
  void initState() {
    super.initState();
    _tagPage();
    selectableFilters = widget.availableCategories
        .removeDuplicates()
        .map((categorie) => CategoryFilterItem(categorie, widget.preSelectedCategories.contains(categorie)))
        .toList();
  }

  @override
  Widget build(BuildContext context) => FilterDialog<EpisodeSanteCategorie>(
        buttonLabel: 'Filtrer',
        initialSelectableFilters: selectableFilters,
        labelMapper: (category) => category.getLabel(currentMaladie: false),
        filterTag: TagsMonMonHistoireDeSante.tag_824_button_valider_filtrer_par_categories_histoire,
        emptyFilterTag: TagsMonMonHistoireDeSante.tag_823_button_voir_toutes_les_categories_histoire,
        selectedTag: TagsMonMonHistoireDeSante.tag_821_checkbox_select_categories_histoire,
        unselectedTag: TagsMonMonHistoireDeSante.tag_822_checkbox_unselect_categories_histoire,
        emptyFilterButtonLabel: 'Voir tout',
        onFilterSelected: (selectedFilters) {
          if (selectedFilters.contains(EpisodeSanteCategorie.MEDICAMENTS)) {
            selectedFilters.add(EpisodeSanteCategorie.VACCIN);
          }
          _dispatchUpdatedFilters(selectedFilters);
        },
      );

  void _dispatchUpdatedFilters(List<EpisodeSanteCategorie> filters) {
    final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
    if (navigatorKey.currentContext != null) {
      StoreProvider.of<EnsState>(navigatorKey.currentContext!).dispatch(UpdateMonHistoireDeSanteFiltersAction(filters));
    }
  }

  void _tagPage() {
    final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
    if (navigatorKey.currentContext != null) {
      navigatorKey.currentContext!
          .tagAction(TagsMonMonHistoireDeSante.tag_820_histoire_de_soins_filtrer_par_categories);
    }
  }
}
