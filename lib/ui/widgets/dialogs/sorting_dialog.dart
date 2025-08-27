/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_radio_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class SortingDialog<T> extends StatefulWidget {
  final List<T> selectableSortingMethod;
  final T defaultValue;
  final T initialSelectedSortingMethod;
  final String buttonLabel;
  final Function(T) labelMapper;
  final void Function(T) onValidateSortingMethodSelection;
  final EnsTag reinitTag;
  final EnsTag validedSortingTag;
  final String appBarTitle;

  const SortingDialog({
    super.key,
    required this.selectableSortingMethod,
    required this.buttonLabel,
    required this.labelMapper,
    required this.onValidateSortingMethodSelection,
    required this.reinitTag,
    required this.validedSortingTag,
    this.appBarTitle = 'Trier',
    required this.initialSelectedSortingMethod,
    required this.defaultValue,
  });

  @override
  State<SortingDialog<T>> createState() => _SortingDialogState<T>();
}

class _SortingDialogState<T> extends State<SortingDialog<T>> {
  late T selectedSortingMethod;

  @override
  void initState() {
    super.initState();
    selectedSortingMethod = widget.initialSelectedSortingMethod;
  }

  @override
  Widget build(BuildContext context) => StoreConnector<EnsState, AnalyticsViewModel>(
        converter: (store) => AnalyticsViewModel(store),
        distinct: true,
        builder: (context, vm) => Scaffold(
          appBar: EnsAppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: IconButton(
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
              ),
            ),
            title: widget.appBarTitle,
            titlePadding: const EdgeInsets.only(left: 56),
            action: EnsInkWell(
              onTap: () {
                vm.tagAction(widget.reinitTag);
                setState(() {
                  selectedSortingMethod = widget.defaultValue;
                });
              },
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: Text(
                    'Réinitialiser',
                    style: EnsTextStyle.text14_w700_normal_primary,
                    semanticsLabel: 'Réinitialiser le tri',
                  ),
                ),
              ),
            ),
          ),
          body: ListViewWithScrollbar.separated(
            separatorBuilder: (context, index) => const Divider(height: 2, color: EnsColors.neutral200),
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(top: 32, bottom: 100),
            itemCount: widget.selectableSortingMethod.length,
            itemBuilder: (context, index) => FilterRow<T>(
              selectedSortingMethod: selectedSortingMethod,
              sortingMethod: widget.selectableSortingMethod[index],
              name: widget.labelMapper(widget.selectableSortingMethod[index]).toString(),
              onFilterSelected: (sortingMethod) {
                setState(() {
                  selectedSortingMethod = sortingMethod;
                });
              },
            ),
          ),
          floatingActionButton: EnsFloatingButton(
            buttonLabel: widget.buttonLabel,
            semanticsLabel: _getFilterButtonAccessibilityText(),
            onTap: () {
              vm.tagAction(widget.validedSortingTag);
              final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
              navigatorKey.currentState?.pop();
              widget.onValidateSortingMethodSelection(selectedSortingMethod);
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        ),
      );

  String _getFilterButtonAccessibilityText() {
    return 'Trier mes document en utilisant l\'option: ${widget.labelMapper(selectedSortingMethod)}';
  }
}

class FilterRow<T> extends StatelessWidget {
  final T selectedSortingMethod;
  final T sortingMethod;
  final String name;
  final Function(T) onFilterSelected;

  const FilterRow({
    super.key,
    required this.selectedSortingMethod,
    required this.sortingMethod,
    required this.name,
    required this.onFilterSelected,
  });

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Material(
        color: Colors.white,
        child: EnsRadioButton(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          value: sortingMethod,
          groupValue: selectedSortingMethod,
          label: name,
          onSelected: () {
            onFilterSelected(sortingMethod);
          },
          defaultLabelStyle: EnsTextStyle.text16_w700_normal_title,
          selectedLabelStyle: EnsTextStyle.text16_w700_primary,
        ),
      ),
    );
  }
}
