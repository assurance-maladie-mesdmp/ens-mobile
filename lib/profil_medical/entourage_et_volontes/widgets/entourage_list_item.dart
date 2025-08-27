/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/domain/entourage_contact.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/edit_entourage_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/viewModels/delete_entourage_contact_view_model.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_etiquette.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EntourageListItem extends StatelessWidget {
  final EntourageContact entourageContact;
  final ProfilType profilType;
  final String profilFullName;

  const EntourageListItem(
    this.entourageContact,
    this.profilType,
    this.profilFullName,
  );

  @override
  Widget build(BuildContext context) {
    return EnsCard(
      backgroundColor: EnsColors.light,
      borderRadius: 0,
      hasBoxShadow: false,
      onTap: () {
        final bottomSheetAction = _buildBottomSheetActions(context, profilType, profilFullName);
        DynamicActionBottomSheet.showOptionsBottomSheet(bottomSheetAction, context);
      },
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${entourageContact.firstName} ${entourageContact.lastName}',
                  style: EnsTextStyle.text16_w700_normal_title,
                ),
                const SizedBox(height: 8),
                Text(entourageContact.link.name, style: EnsTextStyle.text16_w400_normal_body),
                Text(entourageContact.phones, style: EnsTextStyle.text16_w400_normal_body),
                if (entourageContact.email != null && entourageContact.email!.isNotEmpty) ...[
                  Text(entourageContact.email!, style: EnsTextStyle.text16_w400_normal_body),
                ],
                Text(entourageContact.address, style: EnsTextStyle.text16_w400_normal_body),
                Text(
                  '${entourageContact.postalCode} ${entourageContact.city}',
                  style: EnsTextStyle.text16_w400_normal_body,
                ),
                if (entourageContact.country != null && entourageContact.country!.isNotEmpty)
                  Text(entourageContact.country!.toUpperCase(), style: EnsTextStyle.text16_w400_normal_body),
                _EntourageContactTypeEtiquette(entourageContact.contactType),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: EnsSvg(EnsImages.ic_more_vertical, height: 16, width: 4, alignment: Alignment.centerRight),
          ),
        ],
      ),
    );
  }

  List<BottomSheetAction> _buildBottomSheetActions(BuildContext context, ProfilType profilType, String profilFullName) {
    return [
      BottomSheetAction(
        assetName: EnsImages.ic_edit,
        label: 'Modifier',
        execution: () {
          profilType.showUnavailableSnackbarIfAide(
            context,
            profilFullName: profilFullName,
            onOtherProfil: () {
              Navigator.pushNamed(
                context,
                EditEntourageScreen.routeName,
                arguments: EditEntourageScreenArguments.edit(entourageContact),
              );
            },
          );
        },
      ),
      BottomSheetAction(
        assetName: EnsImages.ic_trash,
        label: 'Supprimer',
        execution: () {
          profilType.showUnavailableSnackbarIfAide(
            context,
            profilFullName: profilFullName,
            onOtherProfil: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (BuildContext builderContext) {
                  return StoreConnector<EnsState, DeleteEntourageContactViewModel>(
                    converter: (store) => DeleteEntourageContactViewModel.from(store),
                    distinct: true,
                    onWillChange: (oldVm, vm) {
                      if (oldVm?.deleteEntourageContactStatus.isNotSuccess() == true &&
                          vm.deleteEntourageContactStatus.isSuccess()) {
                        Navigator.pop(context);
                      }
                    },
                    builder: (context, vm) {
                      return ConfirmationBottomSheet(
                        title: 'Supprimer le contact ?',
                        content:
                            const ConfirmationBottomSheetDefaultTextContent('Ce contact sera supprimé définitivement.'),
                        positiveButtonLabel: 'Supprimer',
                        positiveButtonHandler: () => vm.onDeleteContact(entourageContact.id),
                        shouldPopOnPositiveClick: false,
                        loading: vm.deleteEntourageContactStatus.isLoading(),
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    ];
  }
}

class _EntourageContactTypeEtiquette extends StatelessWidget {
  final EntourageContactType contactTypeList;

  const _EntourageContactTypeEtiquette(this.contactTypeList);

  @override
  Widget build(BuildContext context) {
    if (contactTypeList == EntourageContactType.INCONNUS) {
      return const SizedBox();
    } else {
      return EnsEtiquette(
        label: contactTypeList.label,
        backgroundColor: contactTypeList.color,
        padding: const EdgeInsets.only(top: 8),
      );
    }
  }
}
