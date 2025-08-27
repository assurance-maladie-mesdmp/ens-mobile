/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/viewmodels/incitation_categorie_card_view_model.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_choix_illustration_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

void showIncitationPmlSecondBottomSheet(
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
      title: vm.secondBottomSheetTitle,
      positiveButtonHandler: () async {
        _tagsSecondBottomSheet(context, incitationType, true, vm.isProfilPrincipal);
        vm.addCategory(incitationType);
        final result = await Navigator.pushNamed(context, routeName, arguments: arguments);
        if (result != null && result is bool && result) {
          _showBottomSheet(vm, routeName, incitationType, arguments);
        }
      },
      negativeButtonHandler: () {
        _tagsSecondBottomSheet(context, incitationType, false, vm.isProfilPrincipal);
        vm.init();
      },
      closeButtonHandler: () {
        _tagsSecondBottomSheet(context, incitationType, false, vm.isProfilPrincipal);
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

void _tagsSecondBottomSheet(BuildContext context, EnsIncitationType incitationType, bool isPositive, bool isOd) {
  switch (incitationType) {
    case EnsIncitationType.ALLERGIES:
      if (isPositive) {
        isOd
            ? context.tagAction(TagsIncitation.tag_884_button_ajout_autres_allergies_od)
            : context.tagAction(TagsIncitation.tag_888_button_ajout_autres_allergies_ad);
      } else {
        isOd
            ? context.tagAction(TagsIncitation.tag_885_link_absence_autres_allergie_od)
            : context.tagAction(TagsIncitation.tag_889_link_absence_autres_allergie_ad);
      }
      return;
    case EnsIncitationType.MALADIES:
      if (isPositive) {
        isOd
            ? context.tagAction(TagsIncitation.tag_892_button_ajout_autres_maladies_od)
            : context.tagAction(TagsIncitation.tag_896_button_ajout_autres_maladies_ad);
      } else {
        isOd
            ? context.tagAction(TagsIncitation.tag_893_link_absence_autres_maladies_od)
            : context.tagAction(TagsIncitation.tag_897_link_absence_autres_maladies_ad);
      }
      return;
    case EnsIncitationType.TRAITEMENTS:
      if (isPositive) {
        isOd
            ? context.tagAction(TagsIncitation.tag_900_button_ajout_autres_traitements_od)
            : context.tagAction(TagsIncitation.tag_904_button_ajout_autres_traitements_ad);
      } else {
        isOd
            ? context.tagAction(TagsIncitation.tag_901_link_absence_autres_traitements_od)
            : context.tagAction(TagsIncitation.tag_905_link_absence_autres_traitements_ad);
      }
      return;
  }
}
