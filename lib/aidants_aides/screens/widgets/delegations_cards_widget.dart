/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/delegation.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/viewmodels/delegation_item_display_model.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class DelegationEnCoursCard extends StatelessWidget {
  final DelegationEnCoursDisplayModel displayModel;
  final DelegationActeurType delegationActeurType;
  final void Function(String delegationId, String patientId) onConfirmDelete;

  const DelegationEnCoursCard({
    required this.displayModel,
    required this.delegationActeurType,
    required this.onConfirmDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EnsCard(
          hasBoxShadow: false,
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const EnsSvg(EnsImages.ic_profil_autorise),
                  const SizedBox(width: 8),
                  Expanded(child: Text(displayModel.fullName, style: EnsTextStyle.text16_w600_title)),
                  if (delegationActeurType == DelegationActeurType.AIDANT)
                    EnsButtonSecondary(
                      label: 'Supprimer',
                      loading: displayModel.deletionStatus == DeletionStatus.LOADING,
                      isDisabled: displayModel.deletionStatus == DeletionStatus.DISABLED,
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => ConfirmationBottomSheet(
                            title: 'Voulez-vous supprimer l\'accès à ${displayModel.firstName} ?',
                            content: ConfirmationBottomSheetDefaultTextContent(
                              'Si vous confirmez votre choix, ${displayModel.firstName} n\'aura plus accès aux données de votre profil.',
                            ),
                            positiveButtonLabel: 'Supprimer',
                            positiveButtonHandler: () => onConfirmDelete(displayModel.id, displayModel.patientId),
                            negativeButtonLabel: 'Annuler',
                          ),
                        );
                      },
                      borderColor: EnsColors.error,
                      textStyle: EnsTextStyle.text14_w700_error,
                      size: EnsButtonSize.SMALL,
                      verticalPadding: 8,
                    ),
                ],
              ),
              const SizedBox(height: 8),
              const Text('Status : Accès complet validé', style: EnsTextStyle.text14_w400_normal_body),
              Text('Depuis le : ${displayModel.startDate}', style: EnsTextStyle.text14_w400_normal_body),
              Text('Valide jusqu\'au : ${displayModel.endDate}', style: EnsTextStyle.text14_w400_normal_body),
              if (delegationActeurType == DelegationActeurType.AIDANT) ...[
                const SizedBox(height: 16),
                Text('Date de naissance : ${displayModel.birthDate}', style: EnsTextStyle.text14_w400_normal_body),
              ],
              if (delegationActeurType == DelegationActeurType.AIDE) ...[
                const SizedBox(height: 24),
                Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: EnsButtonSecondary(
                        label: 'Supprimer mon accès',
                        isDisabled: displayModel.deletionStatus == DeletionStatus.DISABLED,
                        loading: displayModel.deletionStatus == DeletionStatus.LOADING,
                        loadingSize: 11,
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => ConfirmationBottomSheet(
                              title: 'Supprimer votre accès au profil de ${displayModel.firstName} ?',
                              content: ConfirmationBottomSheetDefaultTextContent(
                                'Vous ne pourrez plus accéder au profil Mon espace santé de ${displayModel.firstName}.',
                              ),
                              positiveButtonLabel: 'Supprimer',
                              positiveButtonHandler: () => onConfirmDelete(displayModel.id, displayModel.patientId),
                              negativeButtonLabel: 'Annuler',
                            ),
                          );
                        },
                        borderColor: EnsColors.error,
                        textStyle: EnsTextStyle.text14_w700_error,
                        size: EnsButtonSize.SMALL,
                        verticalPadding: 8,
                      ),
                    ),
                    const Spacer(flex: 1),
                  ],
                ),
              ],
            ],
          ),
        ),
        const EnsDivider(),
      ],
    );
  }
}

class DelegationEnAttenteCard extends StatelessWidget {
  final DelegationEnAttenteDisplayModel displayModel;

  const DelegationEnAttenteCard(this.displayModel);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EnsCard(
          hasBoxShadow: false,
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const EnsSvg(EnsImages.ic_profil_en_attente),
                  const SizedBox(width: 8),
                  Expanded(child: Text(displayModel.fullName, style: EnsTextStyle.text16_w600_title)),
                ],
              ),
              const SizedBox(height: 8),
              const Text('Demande en attente de validation', style: EnsTextStyle.text14_w400_normal_body),
              Text(
                'Demande valable jusqu\'au : ${displayModel.expirationDate}',
                style: EnsTextStyle.text14_w400_normal_body,
              ),
              const SizedBox(height: 16),
              Text('Date de naissance : ${displayModel.birthDate}', style: EnsTextStyle.text14_w400_normal_body),
            ],
          ),
        ),
        const EnsDivider(),
      ],
    );
  }
}
