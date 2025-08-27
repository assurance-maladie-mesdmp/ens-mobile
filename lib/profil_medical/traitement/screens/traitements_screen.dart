/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_pml_section.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/redux/add_item_for_first_time_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/screens/scanner_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/edit_traitement_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/edit_traitement_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/traitements_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/widgets/traitement_item.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/scanner/domain/type_scan.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_traitements.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/utils/pull_to_refresh_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/delete_slidable.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_action_add_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/list_extensions.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class TraitementsScreenArguments extends Equatable {
  final bool fromIncitation;

  const TraitementsScreenArguments({this.fromIncitation = false});

  @override
  List<Object?> get props => [fromIncitation];
}

class TraitementsScreen extends StatelessWidget {
  static const routeName = '/medical/profil/traitements';

  const TraitementsScreen();

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments as TraitementsScreenArguments?;
    final fromIncitation = argument?.fromIncitation ?? false;

    return StoreConnector<EnsState, TraitementsScreenViewModel>(
      converter: (store) => TraitementsScreenViewModel.from(store),
      onInit: (store) {
        store.dispatch(const CheckIsAddItemForFirstTimeAction(EnsPmlSection.TRAITEMENTS));
      },
      onInitialBuild: (vm) {
        _tagPage(context, vm, fromIncitation);
        context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_TRAITEMENTS);
        vm.loadTraitements();
      },
      distinct: true,
      builder: (_, vm) => Scaffold(
        floatingActionButton: Visibility(
          visible: vm.listStatus == TraitementsListStatus.SUCCESS,
          child: EnsFloatingActionAddButton(
            tooltip: 'Ajouter un nouveau traitement',
            onPressed: () {
              context.tagAction(TagsTraitements.tag_button_ajout_traitement);
              _onAddTraitement(context, vm);
            },
          ),
        ),
        appBar: const EnsAppBarSubLevel(title: 'Traitements'),
        body: _Content(vm, _onAddTraitement),
      ),
    );
  }

  void _onAddTraitement(BuildContext context, TraitementsScreenViewModel vm) {
    if (vm.isAddTraitementForFirstTime) {
      vm.onAddTraitementFirstTime();
      showAddTraitementBottomSheetFirstTime(context);
    } else {
      _showAddTraitementBottomSheet(context);
    }
  }

  void _showAddTraitementBottomSheet(BuildContext context) {
    DynamicActionBottomSheet.showOptionsBottomSheet(
      [
        BottomSheetAction(
          assetName: EnsImages.ic_datamatrix,
          label: 'Scanner la boîte de médicament',
          execution: () => _goToScanScreen(context),
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Remplir manuellement le formulaire',
          execution: () => _goToAddScreen(context),
        ),
      ],
      context,
    );
  }

  void _tagPage(BuildContext context, TraitementsScreenViewModel vm, bool fromIncitation) {
    switch (vm.listStatus) {
      case TraitementsListStatus.SUCCESS:
        fromIncitation == true
            ? context.tagAction(TagsIncitation.tag_922_traitements)
            : context.tagAction(TagsTraitements.tag_traitements);
        return;
      case TraitementsListStatus.EMPTY:
        context.tagAction(TagsTraitements.tag_215_traitement_empty);
        return;
      case TraitementsListStatus.UNCONCERNED:
        context.tagAction(TagsTraitements.tag_418_traitement_aucun);
        return;
      default:
        return;
    }
  }
}

class _Content extends StatelessWidget {
  final TraitementsScreenViewModel vm;
  final void Function(BuildContext, TraitementsScreenViewModel) onAddTraitement;

  const _Content(this.vm, this.onAddTraitement);

  @override
  Widget build(BuildContext context) {
    switch (vm.listStatus) {
      case TraitementsListStatus.SUCCESS:
        return EnsPullToRefresh(
          onRefresh: () async => vm.loadTraitements(forceReload: true),
          child: _TraitementsList(vm),
        );
      case TraitementsListStatus.EMPTY:
      case TraitementsListStatus.UNCONCERNED:
        return EnsPullToRefresh(
          onRefresh: () async => vm.loadTraitements(forceReload: true),
          child: vm.listStatus == TraitementsListStatus.UNCONCERNED
              ? EnsEmptyPage(
                  title: _getTitleLabel(
                    profilType: vm.profilType,
                    mainFirstName: vm.mainFirstName,
                    unconcernedDate: vm.unconcernedDate,
                  ),
                  description:
                      'Si ma situation a évolué, je la mets à jour pour garder une trace des médicaments pris, de leur posologie et des éventuels effets secondaires ressentis.'
                          .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
                  buttonList: EnsEmptyButtonList.withPrimaryButton(
                    primaryButtonLabel: 'Ajouter un traitement',
                    primaryButtonHandler: () {
                      context.tagAction(TagsTraitements.tag_button_ajout_traitement);
                      onAddTraitement(context, vm);
                    },
                  ),
                )
              : EnsEmptyPage(
                  title: 'J\'ajoute mes traitements'.resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
                  description:
                      'Pour garder une trace des médicaments pris, de leur posologie et des éventuels effets secondaires ressentis.',
                  buttonList: EnsEmptyButtonList.withPrimaryAndBottomLinkTextButton(
                    primaryButtonLabel: 'Ajouter un traitement',
                    primaryButtonHandler: () {
                      context.tagAction(TagsTraitements.tag_button_ajout_traitement);
                      onAddTraitement(context, vm);
                    },
                    linkButtonLabel: _getLinkButtonLabel(
                      profilType: vm.profilType,
                    ),
                    isLinkButtonLoading: vm.isUnconcernedLoading,
                    linkButtonHandler: () {
                      vm.setUnconcerned();
                    },
                  ),
                ),
        );
      case TraitementsListStatus.ERROR:
        return ErrorPage(reloadFunction: () => vm.loadTraitements());
      default:
        {
          return Column(
            children: [
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    Text(
                      'Je peux renseigner l\'ensemble de mes traitements (exemples: médicaments, soins, dispositifs médicaux\u2026).',
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ListViewWithScrollbar.separated(
                separatorBuilder: (context, index) => const Divider(height: 2, color: EnsColors.neutral200),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) => const ListItemSkeleton(),
              ),
            ],
          );
        }
    }
  }
}

class _TraitementsList extends StatelessWidget {
  final TraitementsScreenViewModel vm;

  const _TraitementsList(this.vm);

  @override
  Widget build(BuildContext context) {
    return SlidableAutoCloseBehavior(
      child: ListViewWithScrollbar.separated(
        separatorBuilder: (context, index) => _TraitementsListDivider(vm, index),
        padding: const EdgeInsets.only(bottom: 76),
        itemCount: vm.displayModels.length,
        itemBuilder: (context, index) => _TraitementsListItem(index, vm),
      ),
    );
  }
}

class _TraitementsListItem extends StatelessWidget {
  final TraitementsScreenViewModel vm;
  final int index;

  const _TraitementsListItem(this.index, this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.displayModels[index]) {
      case TraitementsScreenHeaderDisplayModel _:
        return _ScreenTitle();
      case TraitementsItemDisplayModel _:
        final dm = vm.displayModels[index] as TraitementsItemDisplayModel;
        return DeleteSlidable(
          onPressed: (context) => _showDeleteConfirmationBottomSheet(context, dm.id),
          child: TraitementItem(displayModel: dm),
        );
      default:
        return const SizedBox();
    }
  }

  void _showDeleteConfirmationBottomSheet(BuildContext context, String traitementId) {
    context.tagAction(TagsTraitements.tag_225_popin_supprimer_traitement);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Supprimer ce traitement ?',
          content: const ConfirmationBottomSheetDefaultTextContent('Ce traitement sera supprimé définitivement.'),
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () {
            context.tagAction(TagsTraitements.tag_226_button_supprimer_traitement_valider);
            vm.deleteTraitement(traitementId);
          },
          negativeButtonHandler: () {
            context.tagAction(TagsTraitements.tag_227_button_supprimer_traitement_annuler);
          },
        );
      },
    );
  }
}

class _ScreenTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 28, bottom: 16),
      child: Wrap(
        children: [
          const Text(
            'Je garde une trace des médicaments pris, de leur posologie et des éventuels effets secondaires ressentis.',
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          Container(),
        ],
      ),
    );
  }
}

class _TraitementsListDivider extends StatelessWidget {
  final TraitementsScreenViewModel vm;
  final int index;

  const _TraitementsListDivider(this.vm, this.index);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: (vm.displayModels.indexIsNotAnEnd(index)) ? 2 : 0,
      color: (vm.displayModels.indexIsNotAnEnd(index)) ? EnsColors.neutral200 : Colors.white,
    );
  }
}

void showAddTraitementBottomSheetFirstTime(BuildContext context) {
  context.tagAction(TagsTraitements.tag_2364_popin_choix_remplissage_scan_manuel_traitement);
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return EnsIllustrationBottomSheet(
        title: 'Ajouter automatiquement un traitement',
        subtitle: 'Je scanne le QR code situé sur le côté de la boîte de médicament pour l\'ajouter automatiquement.',
        asset: EnsImages.datamatrix,
        positiveButtonLabel: 'Scanner le QR code',
        negativeButtonLabel: 'Remplir manuellement',
        secondaryButtonOutlined: true,
        positiveButtonHandler: () => _goToScanScreen(context),
        negativeButtonHandler: () => _goToAddScreen(context),
        closeButtonHandler: () => context.tagAction(TagsTraitements.tag_2363_button_scanner_traitement_fermer),
      );
    },
  );
}

void _goToAddScreen(BuildContext context) {
  context.tagAction(TagsTraitements.tag_2362_button_remplir_manuellement_traitement);
  Navigator.pushNamed(
    context,
    EditTraitementScreen.routeName,
    arguments: const EditTraitementScreenArguments(
      launchMode: TraitementFormulaireMode.createTraitement(),
      fromIncitation: false,
    ),
  );
}

void _goToScanScreen(BuildContext context) {
  context.tagAction(TagsTraitements.tag_2361_button_scanner_traitement);
  Navigator.pushNamed(
    context,
    ScannerScreen.routeName,
    arguments: const ScannerScreenArguments(
      typeScan: TypeScan.SCAN_BOITE_MEDICAMENT,
      traitementEditionMode: CreateTraitementMode(),
    ),
  );
}

String _getLinkButtonLabel({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Je n\'ai pas de traitement à ajouter',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'Aucun traitement à ajouter'
  };
}

String _getTitleLabel({
  required ProfilType profilType,
  required String? unconcernedDate,
  required String mainFirstName,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'J\'ai déclaré ne pas avoir de traitement le $unconcernedDate',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'J\'ai déclaré que $mainFirstName n\'a pas de traitement le $unconcernedDate'
  };
}
