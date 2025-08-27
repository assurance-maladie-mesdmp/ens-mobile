/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/ui/widgets/dialogs/filter_dialog.dart';

class CategoryFilterDialog<T> extends StatefulWidget {
  final List<T> preSelectedItems;
  final List<T> availableItems;
  final void Function(List<T> items) onFilterSelected;
  final void Function(T item)? displayLabel;
  final String title;
  final EnsTag? onSelectTag;
  final EnsTag? onUnselectTag;
  final EnsTag? onFilterTag;
  final EnsTag? onEmptyFilterTag;
  final EnsTag onPageBuildTag;

  const CategoryFilterDialog({
    super.key,
    this.preSelectedItems = const [],
    required this.availableItems,
    required this.onFilterSelected,
    this.displayLabel,
    required this.title,
    this.onSelectTag,
    this.onUnselectTag,
    this.onFilterTag,
    this.onEmptyFilterTag,
    required this.onPageBuildTag,
  });

  @override
  State<CategoryFilterDialog> createState() => _CategoryFilterDialogState<T>();
}

class _CategoryFilterDialogState<T> extends State<CategoryFilterDialog<T>> {
  late List<CategoryFilterItem<T>> selectableFilters;

  @override
  void initState() {
    super.initState();
    final items = widget.availableItems;
    selectableFilters =
        items.map((element) => CategoryFilterItem(element, widget.preSelectedItems.contains(element))).toList();
  }

  @override
  Widget build(BuildContext context) {
    context.tagAction(widget.onPageBuildTag);
    return FilterDialog<T>(
      buttonLabel: 'Valider',
      categoryTitle: widget.title,
      selectedTag: widget.onSelectTag,
      unselectedTag: widget.onUnselectTag,
      filterTag: widget.onFilterTag,
      emptyFilterTag: widget.onEmptyFilterTag,
      emptyFilterButtonLabel: 'Valider',
      initialSelectableFilters: selectableFilters,
      labelMapper:
          widget.displayLabel != null ? (element) => widget.displayLabel!(element) : (element) => element.toString(),
      isCrossBackButton: false,
      onFilterSelected: widget.onFilterSelected,
    );
  }
}
