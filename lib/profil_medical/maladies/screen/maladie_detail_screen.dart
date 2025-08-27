/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/edit_maladie_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/viewModels/edit_maladie_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/viewModels/maladie_details_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/mon_histoire_de_sante_icon.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/viewmodels/link_traitement_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/widgets/linked_documents_section.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/widgets/pml_details_screen_skeleton.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/traitement_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/traitement_link_display_from.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/widgets/traitement_card.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_maladies.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class MaladieDetailsScreen extends StatelessWidget {
  static const routeName = '/medical/profil/maladie/detail';

  const MaladieDetailsScreen();

  @override
  Widget build(BuildContext context) {
    final String maladieId = ModalRoute.of(context)!.settings.arguments! as String;
    return StoreConnector<EnsState, MaladieDetailsScreenViewModel>(
      converter: (store) => MaladieDetailsScreenViewModel.from(store, maladieId),
      distinct: true,
      onInitialBuild: (vm) {
        vm.loadMaladies();
        context.tagAction(TagsMaladies.tag_719_maladie_detail);
      },
      onDidChange: (oldVm, vm) {
        if (vm.maladie != null) {
          if ((oldVm?.maladie?.linkedDocumentIds == null || oldVm!.maladie!.linkedDocumentIds.isEmpty) &&
              vm.maladie!.linkedDocumentIds.isNotEmpty) {
            vm.fetchDocuments();
          }
        }
      },
      builder: (_, vm) => Scaffold(
        appBar: EnsAppBarSubLevel(
          title: 'Détail',
          action: vm.displayModel is MaladieDetailsScreenDisplayModelSuccess
              ? ActionButton(
                  icon: const Icon(Icons.more_vert),
                  tooltip: 'options',
                  onTap: () => _showOptionsBottomSheet(maladieId, context, vm),
                )
              : null,
        ),
        body: _Body(vm),
      ),
    );
  }

  void _showOptionsBottomSheet(
    String maladieId,
    BuildContext context,
    MaladieDetailsScreenViewModel vm,
  ) {
    context.tagAction(TagsMaladies.tag_199_popin_consulter_maladie_actions);
    DynamicActionBottomSheet.showOptionsBottomSheet(
      _buildBottomSheetActions(context, vm),
      context,
    );
  }

  List<BottomSheetAction> _buildBottomSheetActions(
    BuildContext context,
    MaladieDetailsScreenViewModel vm,
  ) {
    final List<BottomSheetAction> result = [
      BottomSheetAction(
        assetName: EnsImages.ic_edit,
        label: 'Modifier',
        execution: () {
          context.tagAction(TagsMaladies.tag_190_button_modifier_maladie);
          Navigator.pushNamed(
            context,
            EditMaladieScreen.routeName,
            arguments: EditMaladieScreenArguments(false, vm.maladie?.id),
          );
        },
      ),
      BottomSheetAction(
        assetName: EnsImages.ic_trash,
        label: 'Supprimer',
        execution: () {
          context.tagAction(TagsMaladies.tag_187_button_supprimer_maladie);
          _showDeleteConfirmationBottomSheet(context, vm);
        },
      ),
    ];
    return result;
  }

  void _showDeleteConfirmationBottomSheet(BuildContext context, MaladieDetailsScreenViewModel vm) {
    context.tagAction(TagsMaladies.tag_187_popin_supprimer_maladie);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Supprimer cette maladie ou ce sujet de santé ?',
          content: const ConfirmationBottomSheetDefaultTextContent(
            'Cette maladie ou ce sujet de santé sera supprimé définitivement.\n'
            'Tout document ou traitement associé restera disponible dans Mon espace santé.',
          ),
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () {
            context.tagAction(TagsMaladies.tag_206_button_supprimer_maladie_valider);
            vm.deleteMaladie();
            Navigator.pop(context);
          },
          negativeButtonHandler: () {
            context.tagAction(TagsMaladies.tag_207_button_supprimer_maladie_annuler);
          },
        );
      },
    );
  }
}

class _Body extends StatelessWidget {
  final MaladieDetailsScreenViewModel vm;

  const _Body(this.vm);

  @override
  Widget build(BuildContext context) {
    final displayModel = vm.displayModel;
    if (displayModel is MaladieDetailsScreenDisplayModelSuccess) {
      return _Success(displayModel, vm);
    } else if (displayModel is MaladieDetailsScreenDisplayModelError) {
      return ErrorPage(reloadFunction: () => vm.loadMaladies());
    } else {
      return const PmlDetailsScreenSkeleton();
    }
  }
}

class _Success extends StatelessWidget {
  final MaladieDetailsScreenDisplayModelSuccess displayModel;
  final MaladieDetailsScreenViewModel vm;

  const _Success(this.displayModel, this.vm);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScrollviewWithScrollbar(
        padding: const EdgeInsets.only(top: 32, bottom: 64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
              child: Row(
                children: [
                  const MonHistoireDeSanteIcon(category: EpisodeSanteCategorie.MALADIE, size: 56),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      displayModel.title,
                      style: EnsTextStyle.text24_w400_normal_title,
                    ),
                  ),
                ],
              ),
            ),
            const EnsDivider(),
            ColoredBox(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _DetailsSection(displayModel),
                    _LinkedTraitementSection(
                      traitementsDisplayModel: displayModel.linkedTraitementDisplayModels,
                      vm: vm,
                      tagOnTapTraitementDetail: () {
                        context.tagAction(TagsMaladies.tag_688_button_voir_traitement_maladie);
                      },
                      tapOnRemoveTraitementFromMaladieAction: (traitementId) {
                        vm.deleteTraitementLinkToMaladie(traitementId);
                      },
                      profilType: vm.profilType,
                    ),
                    LinkedDocumentsSection(
                      displayModel: displayModel.linkedDocumentsDisplayModel,
                      noDocumentText: 'Pas de document lié à cette maladie ou sujet de santé.',
                      onRemoveLinkedDocument: (docId) => vm.deleteDocumentLinkToMaladie(docId),
                      profilType: vm.profilType,
                    ),
                  ],
                ),
              ),
            ),
            const EnsDivider(),
          ],
        ),
      ),
    );
  }
}

class _DetailsSection extends StatelessWidget {
  final MaladieDetailsScreenDisplayModelSuccess displayModel;

  const _DetailsSection(this.displayModel);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
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
        if (displayModel.comment != '') ...[
          const EnsDivider(paddingTop: 16, paddingBottom: 16),
          _CommentInfo(displayModel.comment),
        ],
      ],
    );
  }
}

class _LinkedTraitementSection extends StatelessWidget {
  final List<LinkedTraitementDisplayModel> traitementsDisplayModel;
  final Function() tagOnTapTraitementDetail;
  final MaladieDetailsScreenViewModel vm;
  final Function(String traitementId) tapOnRemoveTraitementFromMaladieAction;
  final ProfilType profilType;

  const _LinkedTraitementSection({
    required this.traitementsDisplayModel,
    required this.vm,
    required this.tagOnTapTraitementDetail,
    required this.tapOnRemoveTraitementFromMaladieAction,
    required this.profilType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const EnsDivider(paddingTop: 16, paddingBottom: 16),
        const Text('Traitements', style: EnsTextStyle.text14_w600_normal_title),
        if (traitementsDisplayModel.isEmpty) ...[
          const SizedBox(height: 4),
          const Text(
            'Pas de traitement lié à cette maladie ou sujet de santé.',
            style: EnsTextStyle.text14_w400_normal_body,
          ),
        ] else
          Column(
            children: [
              const SizedBox(height: 16),
              ...traitementsDisplayModel.expand(
                (dm) => [
                  TraitementCard(
                    displayModel: TraitementCardDisplayModel(name: dm.nom, durationInfo: dm.dureeAffichable),
                    onTap: () async {
                      tagOnTapTraitementDetail();

                      final navigationReturn = await Navigator.pushNamed(
                        context,
                        TraitementDetailScreen.routeName,
                        arguments: TraitementDetailScreenArgument(
                          traitementId: dm.id,
                          displayFrom: TraitementLinkDisplayFrom.maladie,
                        ),
                      );

                      if (navigationReturn == TraitementDetailScreen.SHOULD_REMOVE_TRAITEMENT_LINK) {
                        tapOnRemoveTraitementFromMaladieAction(dm.id);
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                'Retrouvez aussi ces traitements dans la liste de vos traitements.'
                    .resolveWith(isProfilPrincipal: profilType.isProfilPrincipal),
                style: EnsTextStyle.text14_w400_normal_body,
              ),
            ],
          ),
      ],
    );
  }
}

class _CommentInfo extends StatelessWidget {
  final String comment;

  const _CommentInfo(this.comment);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Commentaire', style: EnsTextStyle.text14_w600_normal_title),
        const SizedBox(height: 4),
        Text(comment, style: EnsTextStyle.text14_w400_normal_body),
      ],
    );
  }
}
