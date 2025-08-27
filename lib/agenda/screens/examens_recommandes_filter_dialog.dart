/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/examens_recommandes_filter_dialog_view_model.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_agenda.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/count_bubble_indicator.dart';
import 'package:fr_cnamts_ens/ui/widgets/dialogs/category_filter_dialog.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class ExamensRecommandesFilterDialog extends StatelessWidget {
  const ExamensRecommandesFilterDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, ExamensRecommandesFilterDialogViewModel>(
      converter: (store) => ExamensRecommandesFilterDialogViewModel.from(store),
      distinct: true,
      onInitialBuild: (vm) {
        _tagPage(context);
      },
      builder: (context, vm) => Scaffold(
        appBar: EnsAppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: IconButton(
              icon: const EnsSvg(EnsImages.ic_close_big, color: EnsColors.title, width: 14, height: 14),
              tooltip: 'Fermer la fenêtre',
              splashRadius: 24,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          title: 'Filtrer',
          titlePadding: vm.preselectedStatus.isEmpty && vm.preselectedTypes.isEmpty
              ? const EdgeInsets.only(right: 70)
              : const EdgeInsets.only(left: 56),
          action: vm.preselectedStatus.isEmpty && vm.preselectedTypes.isEmpty
              ? null
              : EnsInkWell(
                  onTap: vm.onResetFilters,
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
        body: Column(
          children: [
            const SizedBox(height: 32),
            _Item(
              itemLabel: 'Type d\'examen',
              circleNumber: vm.preselectedTypes.length,
              onTap: () {
                _showFilterDialog(
                  context,
                  CategoryFilterDialog<String>(
                    availableItems: vm.availableTypes,
                    preSelectedItems: vm.preselectedTypes,
                    title: 'Type d\'examen',
                    onSelectTag: TagsAgenda.tag_2561_checkbox_select_type,
                    onUnselectTag: TagsAgenda.tag_2560_checkbox_unselect_type,
                    onFilterSelected: (List<String> selectedFilters) => vm.onUpdateTypeFilters(selectedFilters),
                    onPageBuildTag: TagsAgenda.tag_2559_examens_medicaux_filtrer_par_type,
                  ),
                );
              },
            ),
            const EnsDivider(),
            _Item(
              itemLabel: 'Statut',
              circleNumber: vm.preselectedStatus.length,
              onTap: () {
                _showFilterDialog(
                  context,
                  CategoryFilterDialog<ExamenStatus>(
                    availableItems: vm.availableStatus,
                    preSelectedItems: vm.preselectedStatus,
                    title: 'Statut',
                    onSelectTag: TagsAgenda.tag_2564_checkbox_select_statut,
                    onUnselectTag: TagsAgenda.tag_2563_checkbox_unselect_statut,
                    displayLabel: (statut) => statut.label,
                    onFilterSelected: (List<ExamenStatus> selectedFilters) => vm.onUpdateStatusFilters(selectedFilters),
                    onPageBuildTag: TagsAgenda.tag_2562_examens_medicaux_filtrer_par_statut,
                  ),
                );
              },
            ),
            const EnsDivider(),
          ],
        ),
        floatingActionButton: EnsFloatingButton(
          buttonLabel: _getFloatingButtonLabel(vm.preselectedStatus, vm.preselectedTypes),
          semanticsLabel: _getFloatingButtonLabel(vm.preselectedStatus, vm.preselectedTypes),
          onTap: () {
            context.tagAction(TagsAgenda.tag_2558_button_valider_filtrer_par_type_ou_statut);
            Navigator.pop(context);
          },
          isDisabled: false,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  String _getFloatingButtonLabel(List<ExamenStatus> status, List<String> types) =>
      (status.isEmpty && types.isEmpty) ? 'Voir tous les examens' : 'Filtrer (${status.length + types.length})';

  void _showFilterDialog(BuildContext context, Widget filterDialog) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      transitionDuration: const Duration(milliseconds: 350),
      transitionBuilder: (_, anim1, __, child) {
        return SlideTransition(
          position: Tween(begin: const Offset(0, 1), end: Offset.zero).animate(anim1),
          child: child,
        );
      },
      pageBuilder: (context, _, __) => filterDialog,
    );
  }

  void _tagPage(BuildContext context) {
    context.tagAction(TagsAgenda.tag_2557_examens_medicaux_filtrer_par_type_ou_statut);
  }
}

class _Item extends StatelessWidget {
  final String itemLabel;
  final int circleNumber;
  final void Function()? onTap;

  const _Item({
    required this.itemLabel,
    required this.circleNumber,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: EnsColors.light,
      semanticLabel: itemLabel,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 50,
              child: Text(
                itemLabel,
                style: EnsTextStyle.text16_w700_normal_title,
              ),
            ),
            const Spacer(),
            if (circleNumber > 0)
              CountBubbleIndicator(
                count: circleNumber,
              ),
            const SizedBox(width: 24),
            const EnsSvg(EnsImages.ic_chevron_right, width: 8, height: 12, color: EnsColors.title),
          ],
        ),
      ),
    );
  }
}
