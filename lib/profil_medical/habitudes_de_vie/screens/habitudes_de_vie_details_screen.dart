/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/redux/habitudes_de_vie_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/screens/habitudes_de_vie_bottom_sheet.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/screens/viewModels/habitudes_de_vie_details_screen_view_model.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_habitudes_de_vie.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/utils/pull_to_refresh_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';

class HabitudesDeVieDetailsScreen extends StatelessWidget {
  static const routeName = '/medical/profil/habitudes-de-vie/details';

  @override
  Widget build(BuildContext context) {
    final sectionCode =
        (ModalRoute.of(context)!.settings.arguments! as HabitudesDeVieDetailsScreenArgument).categoryCode;

    return StoreConnector<EnsState, HabitudesDeVieDetailsScreenViewModel>(
      converter: (store) => HabitudesDeVieDetailsScreenViewModel.from(store, sectionCode),
      onInit: (store) {
        store.dispatch(FetchHabitudesDeVieAnswerAction(categoryCode: sectionCode));
      },
      onInitialBuild: (vm) {
        context.tagAction(TagsHabitudesDeVie.tagHabitudesDeVieCategory(vm.categoryTag));
      },
      builder: (_, HabitudesDeVieDetailsScreenViewModel vm) => Scaffold(
        appBar: EnsAppBarSubLevel(title: vm.title),
        body: SafeArea(
          child: ScrollviewWithScrollbar(
            child: _Content(vm),
          ),
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final HabitudesDeVieDetailsScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case ScreenStatus.LOADING:
        return _LoadingPage();
      case ScreenStatus.SUCCESS:
        return EnsPullToRefresh(
          onRefresh: () async => vm.reloadHabitudesVieAnswer(),
          child: _Success(vm: vm),
        );
      case ScreenStatus.ERROR:
        return ErrorPage(reloadFunction: vm.reloadHabitudesVieAnswer);
    }
  }
}

class _LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListViewWithScrollbar.separated(
        separatorBuilder: (context, index) => const Divider(height: 2, color: EnsColors.neutral200),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) => const ListItemSkeleton(),
      ),
    );
  }
}

class _Success extends StatelessWidget {
  final HabitudesDeVieDetailsScreenViewModel vm;

  const _Success({required this.vm});

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Row(
              children: [
                EnsSvg(vm.image, height: 64),
                const SizedBox(width: 16),
                Expanded(child: Text(vm.description, style: EnsTextStyle.text14_w400_normal_body)),
              ],
            ),
          ),
          _QuestionList(
            categoryCode: vm.categoryCode,
            items: vm.items,
            onDelete: vm.deleteHabitudesVieAnswer,
          ),
        ],
      ),
    );
  }
}

class _QuestionList extends StatelessWidget {
  final HabitudeDeVieCategoryCode categoryCode;
  final List<HabitudeDeVieDetailsItemDisplayModel> items;
  final Function(String?) onDelete;

  const _QuestionList({required this.categoryCode, required this.items, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return ListViewWithScrollbar.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      separatorBuilder: (context, index) => const Divider(color: EnsColors.neutral200, height: 2),
      scrollDirection: Axis.vertical,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return _QuestionItem(
          title: item.title,
          answers: item.answers,
          isAnswered: item.isAnswered,
          updateLabel: item.updateLabel,
          canModify: item.canModify,
          onTap: item.canModify ? () => _showBottomSheet(index, context) : null,
        );
      },
    );
  }

  void _showBottomSheet(int index, BuildContext context) {
    if (items[index].isAnswered) {
      final List<BottomSheetAction> actions = _getBottomSheetActions(context, index);
      context.tagAction(TagsHabitudesDeVie.tagHabitudesDeVieButtonPlus(items[index].itemTag));
      DynamicActionBottomSheet.showOptionsBottomSheet(
        actions,
        context,
        pageTag: TagsHabitudesDeVie.tagHabitudesDeViePopinSelectionAction(items[index].itemTag),
      );
    } else {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (_) => HabitudesDeVieBottomSheet(categoryCode: categoryCode, itemCode: items[index].code),
      );
    }
  }

  List<BottomSheetAction> _getBottomSheetActions(BuildContext context, int index) {
    final actions = [
      BottomSheetAction(
        assetName: EnsImages.ic_edit,
        label: 'Modifier',
        execution: () {
          context.tagAction(
            TagsHabitudesDeVie.tagHabitudesDeVieButtonPlusModifier(
              items[index].itemTag,
            ),
          );
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (_) => HabitudesDeVieBottomSheet(categoryCode: categoryCode, itemCode: items[index].code),
          );
        },
      ),
      BottomSheetAction(
        assetName: EnsImages.ic_trash,
        label: 'Supprimer',
        execution: () {
          context.tagAction(TagsHabitudesDeVie.tagHabitudesDeVieButtonPlusSupprimer(items[index].itemTag));
          _showConfirmationBottomSheet(
            context,
            () => onDelete.call(items[index].answerId),
          );
        },
      ),
    ];
    return actions;
  }

  void _showConfirmationBottomSheet(
    BuildContext context,
    Function() deleteAction, {
    String title = 'Supprimer cette réponse ?',
  }) {
    context.tagAction(TagsHabitudesDeVie.tag_1219_habitudes_de_vie_suppression_popin);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext builderContext) {
        return ConfirmationBottomSheet(
          title: title,
          content: null,
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () {
            context.tagAction(TagsHabitudesDeVie.tag_1221_habitudes_de_vie_suppression_popin_valider);
            deleteAction();
          },
          negativeButtonHandler: () =>
              context.tagAction(TagsHabitudesDeVie.tag_1220_habitudes_de_vie_suppression_popin_annuler),
          areButtonsOnSameRow: !DeviceUtils.isSmallDevice(context),
        );
      },
    );
  }
}

class _QuestionItem extends StatelessWidget {
  final String title;
  final List<String>? answers;
  final bool isAnswered;
  final String? updateLabel;
  final bool canModify;
  final void Function()? onTap;

  const _QuestionItem({
    required this.title,
    required this.answers,
    required this.isAnswered,
    this.updateLabel,
    required this.canModify,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: onTap,
      child: Ink(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: EnsTextStyle.text16_w700_normal_title,
                    maxLines: 3,
                  ),
                  const SizedBox(height: 4),
                  if (answers != null && answers!.isNotEmpty)
                    for (final answer in answers!)
                      Text(
                        answer,
                        style: EnsTextStyle.text16_w400_normal_title,
                      )
                  else
                    const Text(
                      'Non renseignée',
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                  if (updateLabel != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      updateLabel!,
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                  ],
                ],
              ),
            ),
            if (canModify)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: isAnswered
                    ? const EnsSvg(
                        EnsImages.ic_more_vertical,
                        height: 16,
                        width: 8,
                        alignment: Alignment.centerRight,
                        color: EnsColors.body,
                      )
                    : const EnsSvg(
                        EnsImages.ic_chevron_right,
                        height: 12,
                        width: 8,
                        color: EnsColors.body,
                      ),
              ),
          ],
        ),
      ),
    );
  }
}
