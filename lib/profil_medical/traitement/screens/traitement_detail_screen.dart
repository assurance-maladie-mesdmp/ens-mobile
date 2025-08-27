/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/edit_traitement_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/traitement_allergie_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/traitement_maladie_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/edit_traitement_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/traitement_detail_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/traitement_link_display_from.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_maladies.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_traitements.dart';
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
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class TraitementDetailScreenArgument {
  final String traitementId;
  final TraitementLinkDisplayFrom displayFrom;

  TraitementDetailScreenArgument({required this.traitementId, this.displayFrom = TraitementLinkDisplayFrom.traitement});
}

class TraitementDetailScreen extends StatelessWidget {
  static const routeName = '/medical/profil/traitement/detail';
  static const SHOULD_REMOVE_TRAITEMENT_LINK = true;

  const TraitementDetailScreen();

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments! as TraitementDetailScreenArgument;

    return StoreConnector<EnsState, TraitementDetailScreenViewModel>(
      converter: (store) => TraitementDetailScreenViewModel.from(store, arg),
      distinct: true,
      onInitialBuild: (vm) {
        _tagPage(context, vm);
      },
      builder: (_, vm) => Scaffold(
        appBar: EnsAppBarSubLevel(
          title: 'Traitement',
          action: vm.screenStatus == ScreenStatus.SUCCESS
              ? ActionButton(
                  icon: const Icon(Icons.more_vert),
                  tooltip: 'options',
                  onTap: () => vm.displayFrom != TraitementLinkDisplayFrom.traitement
                      ? _showTraitementLinkToMaladieActionBottomSheet(context, vm)
                      : _showNormalActionBottomSheet(context, vm),
                )
              : null,
        ),
        body: SafeArea(child: _Body(vm)),
      ),
    );
  }

  void _tagPage(BuildContext context, TraitementDetailScreenViewModel vm) {
    switch (vm.displayFrom) {
      case TraitementLinkDisplayFrom.traitement:
        context.tagAction(TagsTraitements.tag_691_traitement_detail);
      case TraitementLinkDisplayFrom.maladie:
        context.tagAction(TagsTraitements.tag_717_maladie_traitement);
      case TraitementLinkDisplayFrom.allergie:
        context.tagAction(TagsTraitements.tag_2232_popin_allergie_associer_traitement);
    }
  }

  void _showTraitementLinkToMaladieActionBottomSheet(BuildContext context, TraitementDetailScreenViewModel vm) {
    context.tagAction(TagsTraitements.tag_220_popin_consulter_traitement_actions);
    DynamicActionBottomSheet.showOptionsBottomSheet(
      [
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Modifier le traitement',
          execution: () {
            context.tagAction(TagsTraitements.tag_211_button_modifier_traitement);
            Navigator.pushNamed(
              context,
              EditTraitementScreen.routeName,
              arguments: EditTraitementScreenArguments(
                launchMode: TraitementFormulaireMode.editTraitement(vm.traitementDetailDisplayModel!.id),
                fromIncitation: false,
              ),
            );
          },
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_minus_circle_outlined,
          label: 'Retirer le traitement',
          execution: () {
            context.tagAction(TagsTraitements.tag_214_button_supprimer_traitement);
            _showDeleteTraitementLinkConfirmationBottomSheet(context, vm);
          },
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_trash,
          label: 'Supprimer définitivement le traitement',
          execution: () {
            context.tagAction(TagsTraitements.tag_214_button_supprimer_traitement);
            _showDeleteConfirmationBottomSheet(context, vm);
          },
        ),
      ],
      context,
    );
  }

  void _showNormalActionBottomSheet(BuildContext context, TraitementDetailScreenViewModel vm) {
    context.tagAction(TagsTraitements.tag_220_popin_consulter_traitement_actions);
    DynamicActionBottomSheet.showOptionsBottomSheet(
      [
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Modifier',
          execution: () {
            context.tagAction(TagsTraitements.tag_211_button_modifier_traitement);
            Navigator.pushNamed(
              context,
              EditTraitementScreen.routeName,
              arguments: EditTraitementScreenArguments(
                launchMode: TraitementFormulaireMode.editTraitement(
                  vm.traitementDetailDisplayModel!.id,
                ),
                fromIncitation: false,
              ),
            );
          },
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_trash,
          label: 'Supprimer',
          execution: () {
            context.tagAction(TagsTraitements.tag_214_button_supprimer_traitement);
            _showDeleteConfirmationBottomSheet(context, vm);
          },
        ),
      ],
      context,
    );
  }

  Future<void> _showDeleteTraitementLinkConfirmationBottomSheet(
    BuildContext context,
    TraitementDetailScreenViewModel vm,
  ) async {
    context.tagAction(TagsTraitements.tag_225_popin_supprimer_traitement);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Retirer le traitement ?',
          content: ConfirmationBottomSheetDefaultTextContent(
            vm.profilType.isProfilPrincipal
                ? 'Ce traitement restera disponible dans la liste de vos traitements de votre Profil médical.'
                : 'Ce traitement restera disponible dans la liste de ses traitements de son Profil médical.',
          ),
          positiveButtonLabel: 'Retirer',
          positiveButtonHandler: () {
            vm.displayFrom == TraitementLinkDisplayFrom.maladie
                ? context.tagAction(TagsTraitements.tag_689_button_retirer_maladie_traitement)
                : context.tagAction(TagsTraitements.tag_2474_button_retirer_allergie_traitement_detail);
            Navigator.pop(context, SHOULD_REMOVE_TRAITEMENT_LINK);
          },
          negativeButtonHandler: () {
            vm.displayFrom == TraitementLinkDisplayFrom.maladie
                ? context.tagAction(TagsTraitements.tag_227_button_supprimer_traitement_annuler)
                : context.tagAction(TagsTraitements.tag_2231_popin_retirer_allergie_traitement);
          },
        );
      },
    );
  }

  Future<void> _showDeleteConfirmationBottomSheet(BuildContext context, TraitementDetailScreenViewModel vm) async {
    context.tagAction(TagsTraitements.tag_225_popin_supprimer_traitement);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Supprimer ce traitement ?',
          content: const ConfirmationBottomSheetDefaultTextContent(
            'Ce traitement sera supprimé définitivement.\n'
            'Toute maladie associée restera disponible dans Mon espace santé.',
          ),
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () {
            context.tagAction(TagsTraitements.tag_226_button_supprimer_traitement_valider);
            vm.deleteTraitement();
            final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
            navigatorKey.currentState?.pop();
          },
          negativeButtonHandler: () {
            context.tagAction(TagsTraitements.tag_227_button_supprimer_traitement_annuler);
          },
        );
      },
    );
  }
}

class _Body extends StatelessWidget {
  final TraitementDetailScreenViewModel vm;

  const _Body(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.screenStatus) {
      case ScreenStatus.LOADING:
        return const _FicheTraitementLoading();
      case ScreenStatus.ERROR:
        return ErrorPage(reloadFunction: () => vm.loadTraitements());
      case ScreenStatus.SUCCESS:
        return _FicheTraitement(vm);
    }
  }
}

class _FicheTraitement extends StatelessWidget {
  final TraitementDetailScreenViewModel vm;

  const _FicheTraitement(this.vm);

  @override
  Widget build(BuildContext context) {
    final displayModel = vm.traitementDetailDisplayModel!;
    return ScrollviewWithScrollbar(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _FicheTraitementSvg(Expanded(child: Text(displayModel.name, style: EnsTextStyle.text24_w400_normal_title))),
          DecoratedBox(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Date de début', style: EnsTextStyle.text14_w600_normal_title),
                  const SizedBox(height: 4),
                  Text(displayModel.startDate, style: EnsTextStyle.text14_w400_normal_body),
                  if (displayModel.endDate != '') ...[
                    const EnsDivider(paddingTop: 16, paddingBottom: 16),
                    const Text('Date de fin', style: EnsTextStyle.text14_w600_normal_title),
                    const SizedBox(height: 4),
                    Text(displayModel.endDate, style: EnsTextStyle.text14_w400_normal_body),
                  ],
                  if (displayModel.dosage != null && displayModel.dosage!.isNotEmpty) ...[
                    const EnsDivider(paddingTop: 16, paddingBottom: 16),
                    _PosologieSection(displayModel.dosage!),
                  ],
                  if (displayModel.comment != null && displayModel.comment!.isNotEmpty) ...[
                    const EnsDivider(paddingTop: 16, paddingBottom: 16),
                    _CommentaireSection(displayModel.comment!),
                  ],
                  if (vm.linkedMaladieDisplayModels.isNotEmpty) ...[
                    _LinkedEntitySection(
                      label: 'Maladies',
                      linkedEntityDisplayModels: vm.linkedMaladieDisplayModels,
                      profilType: vm.profilType,
                      image: EnsImages.ic_file_heart,
                      text: 'Retrouvez aussi ces maladies dans la liste de vos maladies.'
                          .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
                      tag: TagsMaladies.tag_button_voir_maladie_traitement,
                      routeName: TraitementMaladieScreen.routeName,
                    ),
                  ],
                  if (vm.linkedAllergieDisplayModels.isNotEmpty) ...[
                    _LinkedEntitySection(
                      label: 'Allergies',
                      linkedEntityDisplayModels: vm.linkedAllergieDisplayModels,
                      profilType: vm.profilType,
                      image: EnsImages.ic_allergie_flocon,
                      text: 'Retrouvez aussi ces allergies dans la liste de vos allergies.'
                          .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
                      tag: TagsTraitements.tag_2477_button_voir_allergie_traitement,
                      routeName: TraitementAllergieScreen.routeName,
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PosologieSection extends StatelessWidget {
  final String posologie;

  const _PosologieSection(this.posologie);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Posologie', style: EnsTextStyle.text14_w600_normal_title),
        const SizedBox(height: 4),
        Text(posologie, style: EnsTextStyle.text14_w400_normal_body),
      ],
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

class _FicheTraitementSvg extends StatelessWidget {
  final Widget child;

  const _FicheTraitementSvg(this.child);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          const EnsSvg(EnsImages.mhs_medicament, height: 56, width: 56, alignment: Alignment.centerLeft),
          const SizedBox(width: 16),
          child,
        ],
      ),
    );
  }
}

class _LinkedEntitySection extends StatelessWidget {
  final List<LinkedDisplayModel> linkedEntityDisplayModels;
  final ProfilType profilType;
  final String image;
  final String text;
  final String label;
  final EnsTag tag;
  final String routeName;

  const _LinkedEntitySection({
    required this.linkedEntityDisplayModels,
    required this.profilType,
    required this.image,
    required this.label,
    required this.text,
    required this.tag,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const EnsDivider(paddingTop: 16, paddingBottom: 16),
        Text(label, style: EnsTextStyle.text14_w600_normal_title),
        const SizedBox(height: 16),
        Column(
          children: linkedEntityDisplayModels
              .expandIndexed(
                (index, dm) => [
                  Padding(
                    padding: EdgeInsets.only(bottom: index == linkedEntityDisplayModels.length - 1 ? 8 : 16),
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
                          onTap: () {
                            context.tagAction(tag);
                            Navigator.pushNamed(context, routeName, arguments: dm);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            child: Row(
                              children: [
                                EnsSvg(image),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(dm.name, style: EnsTextStyle.text14_w700_normal_title),
                                      if (dm is LinkedMaladieDisplayModel)
                                        Text(
                                          dm.dateInfo,
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
        const SizedBox(height: 16),
        Text(
          text.resolveWith(isProfilPrincipal: profilType.isProfilPrincipal),
          style: EnsTextStyle.text14_w400_normal_body,
        ),
      ],
    );
  }
}

class _FicheTraitementLoading extends StatelessWidget {
  const _FicheTraitementLoading();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _FicheTraitementSvg(SkeletonBox(width: 88, height: 16)),
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
