/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande.dart';
import 'package:fr_cnamts_ens/agenda/redux/agenda_redux.dart';
import 'package:fr_cnamts_ens/agenda/screens/agenda_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/examen_recommande_detail_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/examens_recommandes_avant_18_ans_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/examens_recommandes_filter_dialog.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/examens_recommandes_view_model.dart';
import 'package:fr_cnamts_ens/agenda/screens/widgets/frequence_tab.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/ens_filter_button.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/tags_agenda.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/opacity_utils.dart';

class ExamensRecommandesScreen extends StatelessWidget {
  static const routeName = '/agenda/examens';

  const ExamensRecommandesScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Examens médicaux et vaccinations à réaliser'),
      body: StoreConnector<EnsState, ExamensRecommandesViewModel>(
        converter: (store) => ExamensRecommandesViewModel.from(store),
        distinct: true,
        onInitialBuild: (_) => context.tagAction(TagsAgenda.tag_1039_examens_medicaux),
        onInit: (store) => store.dispatch(ReinitializeExamensRecommandesFiltersAction()),
        builder: (context, vm) {
          return SafeArea(
            child: ScrollviewWithScrollbar(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 32, 24, 0),
                    child: Text(
                      _getTextPlanificationExamsMedicauxEtVaccinations(profilType: vm.profilType),
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                  ),
                  _Content(vm),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Content extends StatefulWidget {
  final ExamensRecommandesViewModel vm;

  const _Content(this.vm);

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  bool _isFutureTabSelected = true;
  bool _displayAllItems = false;

  @override
  Widget build(BuildContext context) {
    final itemsToDisplay = _displayAllItems ? 1000 : 30;
    final displayModelsToDisplay = _isFutureTabSelected
        ? widget.vm.displayModels.where((dm) => !_isFutureTabSelected || dm.inFuture).take(itemsToDisplay).toList()
        : widget.vm.displayModels;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        _Tabs(_isFutureTabSelected, (futureTabSelected) {
          if (futureTabSelected == true) widget.vm.onResetFilters();
          setState(() {
            _isFutureTabSelected = futureTabSelected;
          });
        }),
        if (!_isFutureTabSelected)
          EnsFilterButton(
            filterDialog: const ExamensRecommandesFilterDialog(),
            numberActiveFilters: widget.vm.filtersNumber,
          ),
        if (widget.vm.showExamensBefore18YearsOldButton && !_isFutureTabSelected)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                EnsInkWell(
                  onTap: () => Navigator.pushNamed(context, ExamensRecommandesAvant18AnsScreen.routeName),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      'Voir mon suivi médical avant 18 ans',
                      style: EnsTextStyle.text14_w700_normal_body_underline.copyWith(color: EnsColors.primary),
                    ),
                  ),
                ),
              ],
            ),
          ),
        const SizedBox(height: 16),
        if (displayModelsToDisplay.isEmpty) ...[
          const EnsSvg(EnsImages.information, height: 160, width: 160),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Text('Aucun examen médical trouvé', style: EnsTextStyle.text16_w400_normal_body),
            ),
          ),
          if (widget.vm.filtersNumber > 0) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: EnsButton(
                onTap: () {
                  showFilterDialog(context, const ExamensRecommandesFilterDialog());
                  context.tagAction(TagsAgenda.tag_2565_button_filtres_modifier);
                },
                label: 'Modifier les filtres',
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: EnsButtonSecondary(
                onTap: () {
                  widget.vm.onResetFilters();
                  context.tagAction(TagsAgenda.tag_2566_button_examens_medicaux_voir_examens);
                },
                label: 'Voir tous les examens',
              ),
            ),
          ],
        ],
        ...displayModelsToDisplay.mapIndexed(
          (index, examen) {
            return [
              if (_isFutureTabSelected && index == 0)
                _FutureExamHeader(examen.thisYear ? 'Cette année' : 'L’année prochaine'),
              if (_isFutureTabSelected && index > 0 && !examen.thisYear && displayModelsToDisplay[index - 1].thisYear)
                const _FutureExamHeader('L’année prochaine'),
              ExamenItem(
                displayModel: examen,
                isLastOfList: (index == displayModelsToDisplay.length - 1) ||
                    (examen.thisYear && !displayModelsToDisplay[index + 1].thisYear && _isFutureTabSelected),
              ),
            ];
          },
        ).flattened,
        if (_isFutureTabSelected && widget.vm.displayModels.where((dm) => dm.inFuture).length > 5)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: EnsInkWell(
              semanticLabel: _displayAllItems ? 'Masquer les autres examens' : 'Voir les autres examens',
              onTap: () {
                setState(() {
                  _displayAllItems = !_displayAllItems;
                });
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 16, 24, 16),
                child: Row(
                  children: [
                    Text(
                      _displayAllItems ? 'Masquer les autres examens' : 'Voir les autres examens',
                      style: EnsTextStyle.text14_w700_normal_primary,
                    ),
                    const SizedBox(width: 8),
                    EnsSvg(
                      _displayAllItems ? EnsImages.ic_chevron_up : EnsImages.ic_chevron_down,
                      width: 16,
                      height: 16,
                      color: EnsColors.primary,
                    ),
                  ],
                ),
              ),
            ),
          ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _FutureExamHeader extends StatelessWidget {
  final String label;

  const _FutureExamHeader(
    this.label,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
      child: Text(label, style: EnsTextStyle.text20_w400_normal_title),
    );
  }
}

class ExamenItem extends StatelessWidget {
  final ExamenRecommandeItemDisplayModel displayModel;
  final bool isLastOfList;

  const ExamenItem({
    required this.displayModel,
    required this.isLastOfList,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 64,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                _StatusBubble(displayModel.status),
                Expanded(
                  child: SizedBox(
                    width: 1,
                    child: isLastOfList ? null : CustomPaint(painter: DashedLinePainter()),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text(displayModel.dateLabel, style: EnsTextStyle.text14_w600_normal_body),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 24, isLastOfList ? 16 : 32),
                  child: EnsCard(
                    borderRadius: 16,
                    padding: const EdgeInsets.all(16),
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        ExamenRecommandeDetailScreen.routeName,
                        arguments: ExamenRecommandeDetailScreenArguments(displayModel.id, displayModel.dateDebut),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (displayModel.chipStatus != null) ...[
                                ExamenStatusChip(
                                  displayModel.chipStatus!,
                                  displayModel.status.color,
                                ),
                                const SizedBox(height: 8),
                              ],
                              Text(displayModel.title, style: EnsTextStyle.text16_w600_normal_title),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        const EnsSvg(EnsImages.ic_chevron_right, width: 8, height: 12, color: EnsColors.body),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Tabs extends StatelessWidget {
  final void Function(bool) inFutureSelected;
  final bool futureTabSelected;

  const _Tabs(this.futureTabSelected, this.inFutureSelected);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FrequenceTab(
            onTap: () {
              context.tagAction(TagsAgenda.tag_1040_tab_vue_prochains_examens_medicaux);
              inFutureSelected(true);
            },
            label: 'Prochains',
            isSelected: futureTabSelected,
          ),
          const SizedBox(width: 8),
          FrequenceTab(
            onTap: () {
              context.tagAction(TagsAgenda.tag_1041_tab_vue_tous_examens_medicaux);
              inFutureSelected(false);
            },
            label: 'Tous',
            isSelected: !futureTabSelected,
          ),
        ],
      ),
    );
  }
}

class _StatusBubble extends StatelessWidget {
  final ExamenStatus status;

  const _StatusBubble(this.status);

  @override
  Widget build(BuildContext context) {
    if (status == ExamenStatus.REALISE) {
      return Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: EnsColors.success,
          border: Border.all(color: Colors.white, width: 2),
          boxShadow: [
            BoxShadow(
              color: EnsColors.body.withAlpha(OpacityUtils.getAlpha(0.5)),
              blurRadius: 4,
            ),
          ],
        ),
        child: const Center(
          child: SizedBox(
            width: 12,
            height: 12,
            child: EnsSvg(EnsImages.ic_check, width: 12, height: 12, color: Colors.white),
          ),
        ),
      );
    }
    return Container(
      height: 16,
      width: 16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: EnsColors.primary, width: 2),
        color: EnsColors.neutral100,
      ),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const double dashWidth = 2;
    const double dashSpace = 2;
    double startX = 0;
    final paint = Paint()
      ..color = EnsColors.neutral400
      ..strokeWidth = 1;
    while (startX < size.height) {
      canvas.drawLine(Offset(0, startX), Offset(0, startX + dashWidth), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

String _getTextPlanificationExamsMedicauxEtVaccinations({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Je planifie mes examens médicaux et mes vaccinations pour préserver ma santé.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Je planifie les examens médicaux et vaccinations de mon enfant pour assurer le suivi de sa santé et faire le point avec le médecin sur sa croissance et son développement.',
  };
}
