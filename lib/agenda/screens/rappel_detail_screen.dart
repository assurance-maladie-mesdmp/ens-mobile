/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rappel_item_display_model.dart';
import 'package:fr_cnamts_ens/agenda/redux/agenda_redux.dart';
import 'package:fr_cnamts_ens/agenda/screens/agenda_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/edit_rappel_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/rappel_detail_screen_view_model.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_agenda.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/datetime_extension.dart';

class RappelDetailScreenArguments {
  final RappelItemDisplayModel? rappel;
  final String? rappelId;
  final String? patientId;
  final bool fromCdn;

  const RappelDetailScreenArguments({this.rappel, this.rappelId, this.patientId, this.fromCdn = false});
}

class RappelDetailScreen extends StatelessWidget {
  static const routeName = '/agenda/rappels/detail';

  @override
  Widget build(BuildContext context) {
    final rappelArguments = ModalRoute.of(context)!.settings.arguments! as RappelDetailScreenArguments;
    final rappelId = rappelArguments.rappelId ?? rappelArguments.rappel?.id;

    return StoreConnector<EnsState, RappelDetailsScreenViewModel>(
      distinct: true,
      converter: (store) => RappelDetailsScreenViewModel.from(store, rappelId!),
      onInit: (store) {
        store.dispatch(FetchRappelDetailAction(rappelId!, rappelArguments.patientId));
      },
      builder: (context, vm) {
        return Scaffold(
          appBar: EnsAppBarSubLevel(
            title: 'Rappel',
            action: vm.status.isSuccess()
                ? ActionButton(
                    icon: const Icon(Icons.more_vert),
                    tooltip: 'options',
                    onTap: () {
                      context.tagAction(TagsAgenda.tag_953_button_actions_rappel);
                      _showOptionsBottomSheet(context, vm.rappel);
                    },
                  )
                : null,
          ),
          body: _Content(vm, vm.rappel),
        );
      },
    );
  }

  void _showOptionsBottomSheet(
    BuildContext context,
    RappelItemDisplayModel rappel,
  ) {
    DynamicActionBottomSheet.showOptionsBottomSheet(
      _buildBottomSheetActions(context, rappel),
      context,
    );
  }

  List<BottomSheetAction> _buildBottomSheetActions(
    BuildContext context,
    RappelItemDisplayModel rappel,
  ) =>
      [
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Modifier',
          execution: () {
            context.tagAction(TagsAgenda.tag_951_button_modifier_rappel);
            Navigator.pushNamed(context, EditRappelScreen.routeName, arguments: rappel);
          },
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_trash,
          label: 'Supprimer',
          execution: () {
            context.tagAction(TagsAgenda.tag_952_button_supprimer_rappel);
            _showDeleteConfirmationBottomSheet(context, rappel.id);
          },
        ),
      ];
}

void _showDeleteConfirmationBottomSheet(BuildContext context, String id) {
  context.tagAction(TagsAgenda.tag_944_popin_supprimer_rappel);
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return ConfirmationBottomSheet(
        title: 'Supprimer ce rappel ?',
        content: const ConfirmationBottomSheetDefaultTextContent('Ce rappel sera supprimé définitivement.'),
        positiveButtonLabel: 'Supprimer',
        positiveButtonHandler: () {
          context.tagAction(TagsAgenda.tag_946_button_supprimer_rappel_valider);
          StoreProvider.of<EnsState>(context).dispatch(DeleteRappelAction(id));
          Navigator.pop(context);
        },
        negativeButtonHandler: () {
          context.tagAction(TagsAgenda.tag_945_button_supprimer_rappel_annuler);
        },
      );
    },
  );
}

class _Content extends StatelessWidget {
  final RappelDetailsScreenViewModel vm;
  final RappelItemDisplayModel rappel;

  const _Content(this.vm, this.rappel);

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case RappelDetailsScreenStatus.GENERIC_ERROR:
        return ErrorPage(reloadFunction: () => vm.loadDetailRappel(rappel.id));
      case RappelDetailsScreenStatus.NOT_FOUND_ERROR:
        return _RappelNotFoundError();
      case RappelDetailsScreenStatus.SUCCESS when vm.rappel.id == rappel.id:
        return _RappelDetails(vm: vm);
      default:
        return _RappelLoading();
    }
  }
}

class _RappelDetails extends StatelessWidget {
  final RappelDetailsScreenViewModel vm;

  const _RappelDetails({required this.vm});

  @override
  Widget build(BuildContext context) {
    final RappelItemDisplayModel rappel = vm.rappel;

    return Align(
      alignment: Alignment.topCenter,
      child: ColoredBox(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                gradient: EnsColors.gradient01,
              ),
              child: Text('Rappel du ${rappel.jour}', style: EnsTextStyle.text24_w400_normal_white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Text(rappel.titre, style: EnsTextStyle.text16_w700_normal_title),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const EnsSvg(EnsImages.ic_calendar, width: 16, height: 16),
                  const SizedBox(width: 8),
                  Text(rappel.date.toExpliciteDateWithYear(), style: EnsTextStyle.text14_w400_normal_body),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const EnsSvg(EnsImages.ic_clock, width: 16, height: 16),
                  const SizedBox(width: 8),
                  Text(rappel.heure, style: EnsTextStyle.text14_w400_normal_body),
                ],
              ),
            ),
            if (rappel.auteur != null && rappel.auteur!.isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const EnsSvg(EnsImages.ic_calendar_event, width: 16, height: 16),
                    const SizedBox(width: 8),
                    Text(rappel.auteur!, style: EnsTextStyle.text14_w400_normal_body),
                  ],
                ),
              ),
              const SizedBox(height: 8),
            ],
            const SizedBox(height: 8),
            if (rappel.commentaire != null) ...[
              Container(height: 1, color: EnsColors.neutral200),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    EnsSvg(EnsImages.ic_note_outlined, width: 16, height: 16),
                    SizedBox(width: 8),
                    Text('Note personnelle', style: EnsTextStyle.text14_w600_normal_body),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(rappel.commentaire!, style: EnsTextStyle.text14_w400_normal_body),
              ),
              const SizedBox(height: 16),
              Container(height: 1, color: EnsColors.neutral200),
            ],
          ],
        ),
      ),
    );
  }
}

class _RappelLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(alignment: Alignment.center, child: SkeletonBox(width: 220, height: 32, radius: 16)),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(child: SkeletonBox(width: 312, height: 56, radius: 72)),
              ],
            ),
            SizedBox(height: 24),
            SizedBox(height: 28),
            SkeletonBox(width: 220),
            SizedBox(height: 8),
            SkeletonBox(width: 260),
            SizedBox(height: 32),
            SkeletonBox(width: 280),
            SizedBox(height: 8),
            SkeletonBox(width: 280),
            SizedBox(height: 8),
            SkeletonBox(width: 260),
          ],
        ),
      );
}

class _RappelNotFoundError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnsEmptyPage(
      customImagePath: EnsImages.avertissement,
      title: 'Rappel supprimé',
      description: 'Ce rappel a été supprimé. Il n\'est plus disponible.',
      buttonList: EnsEmptyButtonList.withPrimaryButton(
        primaryButtonLabel: 'Voir les rappels',
        primaryButtonHandler: () => Navigator.pushNamed(context, AgendaScreen.routeName),
      ),
    );
  }
}
