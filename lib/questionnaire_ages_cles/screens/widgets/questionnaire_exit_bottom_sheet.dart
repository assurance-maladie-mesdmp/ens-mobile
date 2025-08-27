/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/questionnaire_ages_cles_welcome_screen.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/viewmodels/exit_bottom_sheet_ages_cles_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_questionnaire_ages_cles.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';

class _ExitBottomSheet extends StatelessWidget {
  final bool editMode;

  const _ExitBottomSheet({
    required this.editMode,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, ExitBottomSheetAgesClesViewModel>(
      converter: (store) => ExitBottomSheetAgesClesViewModel(store, editMode),
      distinct: true,
      builder: (context, vm) => ConfirmationBottomSheet(
        title: vm.title,
        content: null,
        areButtonsOnSameRow: false,
        positiveButtonColor: EnsColors.primary,
        positiveButtonLabel: vm.positiveButtonLabel,
        positiveButtonHandler: () {
          context.tagAction(vm.tagForPositiveButton());
          vm.positiveAction();
        },
        negativeButtonLabel: vm.negativeButtonLabel,
        negativeButtonHandler: () {
          context.tagAction(vm.tagForNegativeButton);
          vm.resetQuestionnaire();
          vm.deleteQuestionnaire();
          Navigator.pop(context);
        },
        closeButtonHandler: () {
          context.tagAction(vm.tagForCloseButton());
        },
        setButtonsToVerySmallSize: true,
      ),
    );
  }
}

Future<bool> showQuestionnaireExitBottomSheet(
  BuildContext context,
  bool editMode,
  void Function() resetDraft,
  String trackingAgeRange,
) async {
  if (EnsModuleContainer.currentInjector.isGuestMode()) {
    resetDraft();
    showQuestionnaireAgeClefModeInviteBottomSheet(context)
        .then((value) => Navigator.of(EnsModuleContainer.currentInjector.getNavigatorKey().currentContext!).pop());
  } else {
    final displayPopinTag = editMode
        ? TagsQuestionnaireAgesCles.tagPopinQuestionnaireMajEtQuitter1011(trackingAgeRange)
        : TagsQuestionnaireAgesCles.tagPopinQuestionnaireContinuerPlusTard992(trackingAgeRange);
    context.tagAction(displayPopinTag);

    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return _ExitBottomSheet(editMode: editMode);
      },
    );
  }
  return true;
}
