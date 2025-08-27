/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/domain/models/ens_allergie.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/screens/edit_allergie_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/screens/viewModels/allergie_detail_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/screens/viewModels/edit_allergie_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/viewmodels/link_traitement_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/traitement_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/traitement_link_display_from.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_allergies.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';
import 'package:intl/intl.dart';

class AllergieDetailScreenArgument {
  final String allergieId;
  final TraitementLinkDisplayFrom displayFrom;

  AllergieDetailScreenArgument({required this.allergieId, required this.displayFrom});
}

class AllergieDetailScreen extends StatelessWidget {
  static const routeName = '/medical/profil/allergie/detail';

  const AllergieDetailScreen();

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments! as AllergieDetailScreenArgument;

    return StoreConnector<EnsState, AllergieDetailScreenViewModel>(
      converter: (store) => AllergieDetailScreenViewModel.from(store, arg),
      distinct: true,
      builder: (_, vm) {
        final screenStatus = vm.screenDisplayModel;
        final displayActionButton = screenStatus is AllergieDisplayModelSuccess;
        return Scaffold(
          appBar: EnsAppBarSubLevel(
            title: 'Allergie',
            action: displayActionButton
                ? ActionButton(
                    icon: const Icon(Icons.more_vert),
                    tooltip: 'options',
                    onTap: () => _showNormalActionBottomSheet(
                      context,
                      screenStatus.allergie,
                      vm.deleteAllergie,
                    ),
                  )
                : null,
          ),
          body: _Body(vm),
        );
      },
    );
  }

  void _showNormalActionBottomSheet(BuildContext context, EnsAllergie allergie, void Function(String) deleteAllergie) {
    context.tagAction(TagsAllergies.tag_popin_consulter_allergie_actions);
    DynamicActionBottomSheet.showOptionsBottomSheet(
      [
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Modifier',
          execution: () {
            context.tagAction(TagsAllergies.tag_253_button_modifier_allergies);
            Navigator.pushNamed(
              context,
              EditAllergieScreen.routeName,
              arguments: EditAllergieArgument(
                allergie: allergie,
                fromIncitation: false,
              ),
            );
          },
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_trash,
          label: 'Supprimer',
          execution: () {
            context.tagAction(TagsAllergies.tag_255_button_supprimer_allergies);
            _showDeleteConfirmationBottomSheet(context, () {
              deleteAllergie(allergie.id);
            });
          },
        ),
      ],
      context,
    );
  }
}

Future<void> _showDeleteConfirmationBottomSheet(BuildContext context, void Function() deleteAllergie) async {
  context.tagAction(TagsAllergies.tag_263_popin_supprimer_allergie);
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return ConfirmationBottomSheet(
        title: 'Supprimer cette allergie ?',
        content: const ConfirmationBottomSheetDefaultTextContent(
          'Cette allergie sera supprimée définitivement.\n'
          'Tout traitement associé reste présent dans la liste de vos traitements.',
        ),
        positiveButtonLabel: 'Supprimer',
        positiveButtonHandler: () {
          context.tagAction(TagsAllergies.tag_264_button_supprimer_allergie_valider);
          deleteAllergie();
          final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
          navigatorKey.currentState?.pop();
        },
        negativeButtonHandler: () {
          context.tagAction(TagsAllergies.tag_255_button_supprimer_allergies);
        },
      );
    },
  );
}

class _Body extends StatelessWidget {
  final AllergieDetailScreenViewModel vm;

  const _Body(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.screenDisplayModel) {
      case AllergieDisplayModelError _:
        return ErrorPage(reloadFunction: () => vm.loadAllergie());
      case final AllergieDisplayModelSuccess screenStatus:
        return _Success(screenStatus.allergie, vm);
      default:
        return const _Loading();
    }
  }
}

class _Success extends StatelessWidget {
  final EnsAllergie allergie;
  final AllergieDetailScreenViewModel vm;

  const _Success(this.allergie, this.vm);

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _FicheAllergiePicto(Expanded(child: Text(allergie.name, style: EnsTextStyle.text24_w400_normal_title))),
          DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(width: 1, color: EnsColors.neutral200),
                bottom: BorderSide(width: 1, color: EnsColors.neutral200),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!allergie.comment.isNullOrEmpty()) ...[
                    _CommentaireSection(allergie.comment!),
                    const EnsDivider(paddingTop: 4, paddingBottom: 4),
                  ],
                  _TraitementsSection(vm.linkTraitementDisplayModel, vm.profilType, vm.deleteTraitementLinkToAllergie),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CommentaireSection extends StatelessWidget {
  final String commentaire;

  const _CommentaireSection(this.commentaire);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Commentaire', style: EnsTextStyle.text14_w600_normal_title),
        const SizedBox(height: 4),
        Text(commentaire, style: EnsTextStyle.text14_w400_normal_body),
      ],
    );
  }
}

class _FicheAllergiePicto extends StatelessWidget {
  final Widget child;

  const _FicheAllergiePicto(this.child);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          const EnsSvg(EnsImages.ic_allergie, height: 56, width: 56, alignment: Alignment.centerLeft),
          const SizedBox(width: 16),
          child,
        ],
      ),
    );
  }
}

class _TraitementsSection extends StatelessWidget {
  final List<LinkedTraitementDisplayModel> linkedTraitementDisplayModels;
  final ProfilType profilType;
  final Function(String traitementId) tapOnRemoveTraitementFromAllergieAction;

  const _TraitementsSection(
    this.linkedTraitementDisplayModels,
    this.profilType,
    this.tapOnRemoveTraitementFromAllergieAction,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 4),
          child: Text('Traitements', style: EnsTextStyle.text14_w600_normal_title),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 12),
          child: Column(
            children: linkedTraitementDisplayModels
                .expandIndexed(
                  (index, traitementDisplayModel) => [
                    Padding(
                      padding: EdgeInsets.only(bottom: index == linkedTraitementDisplayModels.length - 1 ? 0 : 8),
                      child: Material(
                        color: EnsColors.neutral100,
                        borderRadius: BorderRadius.circular(8),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: EnsColors.neutral200,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: EnsInkWell(
                            borderRadius: BorderRadius.circular(8),
                            onTap: () async {
                              context.tagAction(TagsAllergies.tag_2477_button_voir_allergie_traitement);
                              final navigationReturn = await Navigator.pushNamed(
                                context,
                                TraitementDetailScreen.routeName,
                                arguments: TraitementDetailScreenArgument(
                                  traitementId: traitementDisplayModel.id,
                                  displayFrom: TraitementLinkDisplayFrom.allergie,
                                ),
                              );

                              if (navigationReturn == TraitementDetailScreen.SHOULD_REMOVE_TRAITEMENT_LINK) {
                                tapOnRemoveTraitementFromAllergieAction(traitementDisplayModel.id);
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              child: Row(
                                children: [
                                  const EnsSvg(EnsImages.pill),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(traitementDisplayModel.nom, style: EnsTextStyle.text14_w700_normal_title),
                                        Text(
                                          traitementDisplayModel.dureeAffichable,
                                          style: EnsTextStyle.text14_w400_normal_body,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
                .toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: Text(
            Intl.plural(
              linkedTraitementDisplayModels.length,
              zero: 'Pas de traitement lié à cette allergie.',
              one: 'Retrouvez aussi ce traitement dans la liste de vos traitements.',
              other: 'Retrouvez aussi ces traitements dans la liste de vos traitements.',
            ).resolveWith(isProfilPrincipal: profilType.isProfilPrincipal),
            style: EnsTextStyle.text14_w400_normal_body,
          ),
        ),
      ],
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _FicheAllergiePicto(SkeletonBox(width: 88, height: 16)),
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(width: 1, color: EnsColors.neutral200),
              bottom: BorderSide(width: 1, color: EnsColors.neutral200),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonBox(width: 96),
                SizedBox(height: 4),
                SkeletonBox(width: 140),
                SizedBox(height: 16),
                SkeletonBox(width: 88),
                SizedBox(height: 4),
                SkeletonBox(width: 188),
                SizedBox(height: 16),
                SkeletonBox(width: 112),
                SizedBox(height: 4),
                SkeletonBox(width: 244),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
