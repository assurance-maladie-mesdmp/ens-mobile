/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/avis_arret_de_travail/screens/viewModels/create_avis_arret_de_travail_dossier_view_model.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';

class CreateAvisArretDeTravailDossierBottomSheet extends StatelessWidget {
  const CreateAvisArretDeTravailDossierBottomSheet();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, CreateAvisArretDeTravailDossierViewModel>(
      onInitialBuild: (vm) => vm.resetCreationDossierAndMoveDocumentsState(),
      converter: (store) => CreateAvisArretDeTravailDossierViewModel.from(store),
      distinct: true,
      onWillChange: (oldVm, vm) {
        if (_isCreateDossierSuccess(oldVm?.createDossierStatus, vm.createDossierStatus)) {
          vm.moveAvisArretDeTravail();
        }
        if (_isMoveDocumentsSuccess(oldVm?.moveDocumentsStatus, vm.moveDocumentsStatus)) {
          Navigator.pop(EnsModuleContainer.currentInjector.getNavigatorKey().currentContext!);
          vm.setAlreadyDisplayedAvisArretDeTravailBottomSheets();
          vm.displayCreationDossierAndMoveDocumentsSuccessSnackbar();
        }
        if (_isGenericError(oldVm, vm)) {
          Navigator.pop(EnsModuleContainer.currentInjector.getNavigatorKey().currentContext!);
          vm.displayErrorSnackbar(GENERIC_ERROR_MESSAGE);
        }
        if (_isDossierNameError(oldVm?.createDossierStatus, vm.createDossierStatus)) {
          Navigator.pop(EnsModuleContainer.currentInjector.getNavigatorKey().currentContext!);
          vm.setAlreadyDisplayedAvisArretDeTravailBottomSheets();
          vm.displayErrorSnackbar(DOSSIER_ALREADY_CREATED_ERROR);
        }
      },
      builder: (context, vm) {
        final isLoading = vm.createDossierStatus.isLoading || vm.moveDocumentsStatus.isLoading();
        return EnsIllustrationBottomSheet(
          asset: EnsImages.ajouter_un_dossier,
          title: 'Souhaitez-vous créer un dossier pour ranger vos avis d\'arrêt de travail ?',
          subtitle: 'Je retrouverai l\'ensemble de mes avis d\'arrêt de travail dans un nouveau dossier dédié.',
          positiveButtonLabel: 'Créer un dossier',
          negativeButtonLabel: 'Non merci',
          positiveButtonHandler: () {
            context.tagAction(TagsDocuments.tag_2478_tag_button_rassembler_aat_dossier_valider);
            if (vm.alreadyExistingDossierName) {
              vm.moveAvisArretDeTravail();
            } else {
              vm.createAvisArretDeTravailDossier();
            }
          },
          negativeButtonHandler: () => vm.setAlreadyDisplayedAvisArretDeTravailBottomSheets(),
          closeButtonHandler: () => vm.setAlreadyDisplayedAvisArretDeTravailBottomSheets(),
          positiveButtonShouldPop: false,
          isPositiveButtonLoading: isLoading,
          isNegativeButtonDisabled: isLoading,
        );
      },
    );
  }

  bool _isCreateDossierSuccess(DossierStatus? oldCreateDossierStatus, DossierStatus createDossierStatus) {
    return oldCreateDossierStatus?.isNotSuccess == true && createDossierStatus.isSuccess;
  }

  bool _isMoveDocumentsSuccess(AllPurposesStatus? oldMoveDocumentsStatus, AllPurposesStatus moveDocumentsStatus) {
    return oldMoveDocumentsStatus?.isNotSuccess() == true && moveDocumentsStatus.isSuccess();
  }

  bool _isGenericError(CreateAvisArretDeTravailDossierViewModel? oldVm, CreateAvisArretDeTravailDossierViewModel vm) {
    return (oldVm?.createDossierStatus.isNotGenericError == true && vm.createDossierStatus.isGenericError) ||
        (oldVm?.moveDocumentsStatus.isNotError() == true && vm.moveDocumentsStatus.isError());
  }

  bool _isDossierNameError(DossierStatus? oldCreateDossierStatus, DossierStatus createDossierStatus) {
    return createDossierStatus.isNotDossierNameError == true && createDossierStatus.isDossierNameError;
  }
}
