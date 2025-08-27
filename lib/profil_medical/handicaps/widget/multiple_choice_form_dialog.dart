/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/ui/widgets/dialogs/filter_dialog.dart';

class MultipleChoiceFormDialog<T> extends StatefulWidget {
  final List<T> preSelectedCategories;
  final List<T> selectableFilters;
  final void Function(List<T>) onTypesSelected;
  final String Function(T) labelMapper;

  const MultipleChoiceFormDialog({
    super.key,
    this.preSelectedCategories = const [],
    required this.onTypesSelected,
    required this.selectableFilters,
    required this.labelMapper,
  });

  @override
  State<MultipleChoiceFormDialog> createState() => _MultipleChoiceFormDialogState<T>();
}

class _MultipleChoiceFormDialogState<T> extends State<MultipleChoiceFormDialog<T>> {
  late List<CategoryFilterItem<T>> selectableFilters;

  @override
  void initState() {
    super.initState();
    selectableFilters = widget.selectableFilters
        .map((categorie) => CategoryFilterItem<T>(categorie, widget.preSelectedCategories.contains(categorie)))
        .toList();
  }

  @override
  Widget build(BuildContext context) => FilterDialog<T>(
        buttonLabel: 'Valider',
        appBarTitle: 'Type',
        categoryTitle: 'Type de handicap',
        initialSelectableFilters: selectableFilters,
        labelMapper: widget.labelMapper,
        filterTag: const EnsTag(
          name: 'button_filtrer_par',
          category: EnsAnalyticsCategory.CLICK,
          level1: 'handicap',
        ),
        onFilterSelected: widget.onTypesSelected,
        emptyFilterButtonLabel: 'Valider',
      );
}
