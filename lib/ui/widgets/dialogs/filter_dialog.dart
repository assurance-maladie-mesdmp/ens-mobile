/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox_title_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/text_scale_utils.dart';
import 'package:intl/intl.dart';

class FilterDialog<T> extends StatefulWidget {
  final List<CategoryFilterItem<T>> initialSelectableFilters;
  final String buttonLabel;
  final Function(T) labelMapper;
  final void Function(List<T>) onFilterSelected;
  final EnsTag? filterTag;
  final EnsTag? tagInitialPage;
  final EnsTag? selectedTag;
  final EnsTag? unselectedTag;
  final EnsTag? emptyFilterTag;
  final EnsTag? selectAllFilterTag;
  final EnsTag? deselecteAllFilterTag;
  final bool asSelectAllButton;
  final bool isCrossBackButton;
  final bool isFilterCountDisplayed;
  final String appBarTitle;
  final String categoryTitle;
  final String emptyFilterButtonLabel;

  const FilterDialog({
    super.key,
    required this.initialSelectableFilters,
    required this.buttonLabel,
    required this.labelMapper,
    required this.onFilterSelected,
    this.filterTag,
    this.tagInitialPage,
    this.emptyFilterTag,
    this.selectedTag,
    this.unselectedTag,
    this.selectAllFilterTag,
    this.deselecteAllFilterTag,
    this.asSelectAllButton = false,
    this.isCrossBackButton = true,
    this.isFilterCountDisplayed = true,
    this.appBarTitle = 'Filtrer',
    this.categoryTitle = 'Catégories',
    this.emptyFilterButtonLabel = 'Voir toutes les catégories',
  });

  @override
  State<FilterDialog<T>> createState() => _FilterDialogState<T>();
}

class _FilterDialogState<T> extends State<FilterDialog<T>> {
  late bool shouldSelecteAll;
  late List<CategoryFilterItem<T>> selectableFilters;

  @override
  void initState() {
    super.initState();
    shouldSelecteAll = widget.initialSelectableFilters.any((filter) => filter.isSelected == false);
    selectableFilters = widget.initialSelectableFilters;
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, AnalyticsViewModel>(
      converter: (store) => AnalyticsViewModel(store),
      onInitialBuild: (_) {
        if (widget.tagInitialPage != null) {
          context.tagAction(widget.tagInitialPage!);
        }
      },
      distinct: true,
      builder: (context, vm) {
        return Scaffold(
          appBar: EnsAppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: widget.isCrossBackButton
                  ? IconButton(
                      icon: const EnsSvg(
                        EnsImages.ic_close_big,
                        color: EnsColors.title,
                        width: 14,
                        height: 14,
                      ),
                      tooltip: 'Fermer la fenêtre',
                      splashRadius: 24,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  : const BackButton(),
            ),
            title: widget.appBarTitle,
            titlePadding: const EdgeInsets.only(left: 56),
            action: EnsInkWell(
              onTap: () {
                setState(() {
                  selectableFilters = selectableFilters.map((e) => CategoryFilterItem(e.categorie, false)).toList();
                });
              },
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Réinitialiser',
                    style: EnsTextStyle.text14_w700_normal_primary,
                    semanticsLabel: 'Réinitialiser les filtres',
                  ),
                ),
              ),
            ),
          ),
          body: ListViewWithScrollbar.separated(
            separatorBuilder: (context, index) => const EnsDivider(),
            scrollDirection: Axis.vertical,
            padding: TextScaleUtils.getTextScaleFactor(context) > 1.5
                ? EdgeInsets.only(bottom: _bottomPaddingOnHighFactor(context))
                : const EdgeInsets.only(bottom: 100),
            itemCount: selectableFilters.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return _Header(
                  title: widget.categoryTitle,
                  selecteAllButtonStatus: shouldSelecteAll,
                  selecteAllAction: widget.asSelectAllButton
                      ? () {
                          setState(() {
                            selectableFilters = selectableFilters
                                .map((e) => CategoryFilterItem(e.categorie, shouldSelecteAll))
                                .toList();
                            shouldSelecteAll = !shouldSelecteAll;
                          });
                        }
                      : null,
                );
              } else {
                final item = selectableFilters[index - 1];
                return EnsCheckboxTitleButton(
                  value: item.isSelected,
                  paddingBetweenBoxAndTitle: 16,
                  rowPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  onChange: (_) => _onChange(item, context),
                  label: widget.labelMapper(item.categorie).toString(),
                  selectedStyle: EnsTextStyle.text16_w700_primary,
                  unSelectedStyle: EnsTextStyle.text16_w700_normal_title,
                  backgroundColor: EnsColors.light,
                );
              }
            },
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              width: double.infinity,
              child: EnsFloatingButton(
                buttonLabel: _filterButtonLabel,
                semanticsLabel: _filterButtonAccessibilityText,
                onTap: () {
                  if (_selectedFilters.isEmpty && widget.emptyFilterTag != null) {
                    vm.tagAction(widget.emptyFilterTag!);
                  } else if (widget.filterTag != null) {
                    vm.tagAction(widget.filterTag!);
                  }
                  Navigator.of(context).pop();

                  widget.onFilterSelected(_selectedFilters);
                },
                isDisabled: false,
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
      },
    );
  }

  double _bottomPaddingOnHighFactor(BuildContext context) => TextScaleUtils.getTextScaleFactor(context) * 100;

  bool get _isFilterDisable => selectableFilters.none((filter) => filter.isSelected);

  int get _getSelectedFiltersNumber => selectableFilters.where((filter) => filter.isSelected).length;

  List<T> get _selectedFilters =>
      selectableFilters.where((filtre) => filtre.isSelected).map((filtre) => filtre.categorie).toList();

  void _onChange(CategoryFilterItem item, BuildContext context) {
    final tag = item.isSelected ? widget.unselectedTag : widget.selectedTag;
    if (tag != null) {
      context.tagAction(tag);
    }
    setState(() {
      selectableFilters = selectableFilters.map((filterItem) {
        if (filterItem == item) {
          return CategoryFilterItem(filterItem.categorie, !filterItem.isSelected);
        } else {
          return filterItem;
        }
      }).toList();
    });
  }

  String get _filterButtonLabel {
    final activeFilterCount = _getSelectedFiltersNumber;
    return Intl.plural(
      activeFilterCount,
      zero: widget.emptyFilterButtonLabel,
      other: '${widget.buttonLabel} ($activeFilterCount)',
    );
  }

  String get _filterButtonAccessibilityText {
    final String pluralPart = Intl.plural(
      _selectedFilters.length,
      one: 'la catégorie suivante',
      other: 'les catégories suivantes',
    );

    final String activeButtonText =
        'Filtrer en utilisant $pluralPart : ${_selectedFilters.map((e) => widget.labelMapper(e))}';
    return _isFilterDisable ? 'Filtrer' : activeButtonText;
  }
}

class _Header extends StatelessWidget {
  final String title;
  final bool selecteAllButtonStatus;
  final Function()? selecteAllAction;

  const _Header({required this.title, this.selecteAllButtonStatus = false, this.selecteAllAction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: EnsTextStyle.text20_w400_normal_title, semanticsLabel: title),
          if (selecteAllAction != null) ...[
            const SizedBox(height: 24),
            EnsInkWell(
              onTap: selecteAllAction,
              child: Text(
                selecteAllButtonStatus ? 'Tout sélectionner' : 'Tout désélectionner',
                style: EnsTextStyle.text14_w700_normal_primary,
                semanticsLabel: 'Sélectionner tous les filtres',
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class CategoryFilterItem<T> extends Equatable {
  final T categorie;
  final bool isSelected;

  const CategoryFilterItem(this.categorie, [this.isSelected = false]);

  CategoryFilterItem<T> clone({T? categorie, bool? isSelected}) {
    return CategoryFilterItem<T>(
      categorie ?? this.categorie,
      isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [categorie, isSelected];
}
