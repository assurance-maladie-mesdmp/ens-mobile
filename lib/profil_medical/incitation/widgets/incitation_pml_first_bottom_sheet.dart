/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/screens/edit_allergie_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/viewmodels/incitation_categorie_card_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/widgets/incitation_pml_second_bottom_sheet.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_choix_illustration_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

void showIncitationPmlFirstBottomSheet(
  BuildContext context,
  IncitationCategorieCardViewModel vm,
  String routeName,
  EnsIncitationType incitationType,
  Object? arguments,
) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (_) => EnsChoixIllustrationBottomSheet(
      image: _setImage(incitationType),
      width: 160,
      height: 160,
      title: vm.firstBottomSheetTitle,
      description:
          'En renseignant ces informations, je permets aux professionnels de santé de mieux adapter les soins et traitements.',
      positiveButtonHandler: () async {
        _tagsFirstBottomSheet(context, incitationType, true, vm.isProfilPrincipal);
        vm.addCategory(incitationType);
        final result = await Navigator.pushNamed(context, routeName, arguments: arguments);
        if (result == EditAllergieScreen.POP_VALUE) {
          _showBottomSheet(vm, routeName, incitationType, arguments);
        }
      },
      negativeButtonHandler: () {
        _tagsFirstBottomSheet(context, incitationType, false, vm.isProfilPrincipal);
        vm.setUnconcerned(incitationType);
        vm.init();
      },
      closeButtonHandler: () {
        vm.init();
      },
    ),
  );
}

void _showBottomSheet(
  IncitationCategorieCardViewModel vm,
  String routeName,
  EnsIncitationType incitationType,
  Object? arguments,
) {
  final currentContext = EnsModuleContainer.currentInjector.getNavigatorKey().currentContext;
  if (currentContext != null) {
    showIncitationPmlSecondBottomSheet(currentContext, vm, routeName, incitationType, arguments);
  } else {
    vm.init();
  }
}

String _setImage(EnsIncitationType incitationType) {
  switch (incitationType) {
    case EnsIncitationType.MALADIES:
      return EnsImages.maladie_sujet_de_sante;
    case EnsIncitationType.TRAITEMENTS:
      return EnsImages.traitements;
    case EnsIncitationType.ALLERGIES:
      return EnsImages.allergie;
  }
}

void _tagsFirstBottomSheet(BuildContext context, EnsIncitationType incitationType, bool isPositive, bool isOd) {
  switch (incitationType) {
    case EnsIncitationType.ALLERGIES:
      if (isPositive) {
        isOd
            ? context.tagAction(TagsIncitation.tag_882_button_ajout_allergies_od)
            : context.tagAction(TagsIncitation.tag_886_button_ajout_allergies_ad);
      } else {
        isOd
            ? context.tagAction(TagsIncitation.tag_883_link_absence_allergie_od)
            : context.tagAction(TagsIncitation.tag_887_link_absence_allergie_ad);
      }
      return;
    case EnsIncitationType.MALADIES:
      if (isPositive) {
        isOd
            ? context.tagAction(TagsIncitation.tag_890_button_ajout_maladies_od)
            : context.tagAction(TagsIncitation.tag_894_button_ajout_maladies_ad);
      } else {
        isOd
            ? context.tagAction(TagsIncitation.tag_891_link_absence_maladies_od)
            : context.tagAction(TagsIncitation.tag_895_link_absence_maladies_ad);
      }
      return;
    case EnsIncitationType.TRAITEMENTS:
      if (isPositive) {
        isOd
            ? context.tagAction(TagsIncitation.tag_898_button_ajout_traitements_od)
            : context.tagAction(TagsIncitation.tag_902_button_ajout_traitements_ad);
      } else {
        isOd
            ? context.tagAction(TagsIncitation.tag_899_link_absence_traitements_od)
            : context.tagAction(TagsIncitation.tag_903_link_absence_traitements_ad);
      }
      return;
  }
}
