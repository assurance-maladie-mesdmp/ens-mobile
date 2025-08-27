/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/edit_handicap_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/viewmodels/handicaps_details_view_model.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_handicaps.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class HandicapDetailsScreen extends StatelessWidget {
  static const routeName = '/detail-handicap';

  @override
  Widget build(BuildContext context) {
    final handicapId = ModalRoute.of(context)!.settings.arguments! as String;
    return StoreConnector<EnsState, HandicapDetailViewModel>(
      distinct: true,
      converter: (store) => HandicapDetailViewModel.from(store, handicapId),
      onInitialBuild: (vm) => context.tagAction(TagsHandicaps.tag_535_handicap_detail),
      builder: (context, vm) => _Content(vm: vm),
    );
  }
}

class _Content extends StatelessWidget {
  final HandicapDetailViewModel vm;

  const _Content({required this.vm});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EnsAppBarSubLevel(
        title: 'Handicaps',
        action: ActionButton(
          icon: const Icon(Icons.more_vert),
          tooltip: 'options',
          onTap: () {
            context.tagAction(TagsHandicaps.tag_536_button_action_modifier_handicap);
            _showSelectActionBottomSheet(context, vm);
          },
        ),
      ),
      body: ScrollviewWithScrollbar(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
              child: Text(vm.name, style: EnsTextStyle.text20_w400_normal_title),
            ),
            HandicapDetails(
              type: vm.type,
              technicalHelp: vm.technicalHelp,
              disabilityRate: vm.disabilityRate,
              humanHelp: vm.humanHelp,
              comment: vm.comment,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  void _showSelectActionBottomSheet(BuildContext context, HandicapDetailViewModel viewModel) {
    final List<BottomSheetAction> actions = [];
    actions.add(
      BottomSheetAction(
        assetName: EnsImages.ic_edit,
        label: 'Modifier',
        execution: () {
          context.tagAction(TagsHandicaps.tag_576_popin_modification_handicap);
          Navigator.pushNamed(context, EditHandicapScreen.routeName, arguments: viewModel.argumentForModify);
        },
      ),
    );
    actions.add(
      BottomSheetAction(
        assetName: EnsImages.ic_trash,
        label: 'Supprimer',
        execution: () {
          context.tagAction(TagsHandicaps.tag_537_button_action_supprimer_handicap);
          _showDeleteConfirmationBottomSheet(context, viewModel);
        },
      ),
    );

    DynamicActionBottomSheet.showOptionsBottomSheet(actions, context);
  }

  void _showDeleteConfirmationBottomSheet(BuildContext context, HandicapDetailViewModel vm) {
    context.tagAction(TagsHandicaps.tag_543_popin_supprimer_handicap);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Supprimer cet handicap ?',
          content: const ConfirmationBottomSheetDefaultTextContent('Cet handicap sera supprimé définitivement.'),
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () {
            context.tagAction(TagsHandicaps.tag_545_button_supprimer_handicap_valider);
            Navigator.pop(context);
            vm.deleteHandicap();
          },
          negativeButtonHandler: () {
            context.tagAction(TagsHandicaps.tag_544_button_supprimer_handicap_annuler);
          },
        );
      },
    );
  }
}

class HandicapDetails extends StatelessWidget {
  final String type;
  final String? technicalHelp;
  final String? disabilityRate;
  final String? humanHelp;
  final String? comment;

  const HandicapDetails({
    required this.type,
    required this.technicalHelp,
    required this.disabilityRate,
    required this.humanHelp,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 1, color: EnsColors.neutral200),
          bottom: BorderSide(width: 1, color: EnsColors.neutral200),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Type de handicap', style: EnsTextStyle.text14_w600_normal_title),
            const SizedBox(height: 4),
            Text(type, style: EnsTextStyle.text14_w400_normal_body),
            if (disabilityRate != null) _OptionalField(label: 'Taux d\'incapacité', value: disabilityRate!),
            if (technicalHelp?.isNotEmpty == true) _OptionalField(label: 'Aide technique', value: technicalHelp!),
            if (humanHelp != null) _OptionalField(label: 'Aide humaine', value: humanHelp!),
            if (comment?.isNotEmpty == true) _OptionalField(label: 'Commentaires', value: comment!),
          ],
        ),
      ),
    );
  }
}

class _OptionalField extends StatelessWidget {
  final String label;
  final String value;

  const _OptionalField({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const EnsDivider(paddingTop: 16, paddingBottom: 16),
        Text(label, style: EnsTextStyle.text14_w600_normal_title),
        const SizedBox(height: 4),
        Text(value, style: EnsTextStyle.text14_w400_normal_body),
      ],
    );
  }
}
