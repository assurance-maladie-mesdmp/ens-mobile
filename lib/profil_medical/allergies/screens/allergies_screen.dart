/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/redux/allergies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/screens/edit_allergie_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/screens/viewModels/allergies_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/screens/viewModels/edit_allergie_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/widgets/allergie_item.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_allergies.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/utils/pull_to_refresh_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/delete_slidable.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_action_add_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/utils/extensions/list_extensions.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class AllergiesScreen extends StatelessWidget {
  static const routeName = '/medical/profil/allergies';

  @override
  Widget build(BuildContext context) {
    final fromIncitation = ModalRoute.of(context)!.settings.arguments as bool? ?? false;

    return StoreConnector<EnsState, AllergiesScreenViewModel>(
      converter: (store) => AllergiesScreenViewModel(store),
      onInit: (store) {
        store.dispatch(const FetchAllergiesAction());
      },
      onInitialBuild: (vm) {
        _tagPage(context, vm, fromIncitation);
        context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_ALLERGIES);
      },
      onDidChange: (_, vm) {
        _tagPage(context, vm, fromIncitation);
      },
      distinct: true,
      builder: (_, AllergiesScreenViewModel vm) => Scaffold(
        floatingActionButton: Visibility(
          visible: vm.listStatus == AllergiesListStatus.SUCCESS,
          child: EnsFloatingActionAddButton(
            tooltip: 'Ajouter une nouvelle allergie',
            onPressed: () {
              context.tagAction(TagsAllergies.tag_251_button_ajout_allergies);
              _goToAddScreen(context);
            },
          ),
        ),
        appBar: const EnsAppBarSubLevel(
          title: 'Allergies',
        ),
        body: _Content(vm),
      ),
    );
  }

  void _tagPage(BuildContext context, AllergiesScreenViewModel vm, bool fromIncitation) {
    switch (vm.listStatus) {
      case AllergiesListStatus.SUCCESS:
        fromIncitation
            ? context.tagAction(TagsIncitation.tag_923_allergies)
            : context.tagAction(TagsAllergies.tag_250_allergies);
      case AllergiesListStatus.EMPTY:
        context.tagAction(TagsAllergies.tag_424_allergies_empty);
      case AllergiesListStatus.UNCONCERNED:
        context.tagAction(TagsAllergies.tag_426_allergies_aucun);
      default:
        break;
    }
  }
}

class _Content extends StatelessWidget {
  final AllergiesScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    return switch (vm.listStatus) {
      AllergiesListStatus.SUCCESS => _Success(vm),
      AllergiesListStatus.EMPTY => _Empty(vm),
      AllergiesListStatus.UNCONCERNED => _Unconcerned(vm),
      AllergiesListStatus.ERROR => ErrorPage(reloadFunction: vm.loadAllergies),
      AllergiesListStatus.LOADING => _Loading()
    };
  }
}

class _Success extends StatelessWidget {
  final AllergiesScreenViewModel vm;

  const _Success(this.vm);

  @override
  Widget build(BuildContext context) {
    return EnsPullToRefresh(
      onRefresh: () async => vm.loadAllergies(),
      child: SlidableAutoCloseBehavior(
        child: _AllergiesList(vm),
      ),
    );
  }
}

class _Empty extends StatelessWidget {
  final AllergiesScreenViewModel vm;

  const _Empty(this.vm);

  @override
  Widget build(BuildContext context) {
    return EnsPullToRefresh(
      onRefresh: () async => vm.loadAllergies(),
      child: EnsEmptyPage(
        title: 'J\'ajoute mes allergies'.resolveWith(
          isProfilPrincipal: vm.profilType.isProfilPrincipal,
        ),
        description:
            'Pour aider les professionnels de santé à adapter leurs prescriptions et soins, notamment en cas d\'urgence.',
        buttonList: EnsEmptyButtonList.withPrimaryAndBottomLinkTextButton(
          primaryButtonLabel: 'Ajouter une allergie',
          primaryButtonHandler: () {
            context.tagAction(TagsAllergies.tag_251_button_ajout_allergies);
            _goToAddScreen(context);
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
  }
}

class _Unconcerned extends StatelessWidget {
  final AllergiesScreenViewModel vm;

  const _Unconcerned(this.vm);

  @override
  Widget build(BuildContext context) {
    return EnsPullToRefresh(
      onRefresh: () async => vm.loadAllergies(),
      child: EnsEmptyPage(
        title: _getTitleLabel(
          profilType: vm.profilType,
          mainFirstName: vm.mainFirstName,
          unconcernedDate: vm.unconcernedDate,
        ),
        description:
            'Si ma situation a évolué, je la mets à jour pour aider les professionnels de santé à adapter leurs prescriptions et soins, notamment en cas d\'urgence.'
                .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
        buttonList: EnsEmptyButtonList.withPrimaryButton(
          primaryButtonLabel: 'Ajouter une allergie',
          primaryButtonHandler: () {
            context.tagAction(TagsAllergies.tag_251_button_ajout_allergies);
            _goToAddScreen(context);
          },
        ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Text(
                'Je peux décrire mes allergies (exemples : allergies alimentaires, médicamenteuses, intolérances\u2026).',
                style: EnsTextStyle.text14_w400_normal_body,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        ListViewWithScrollbar.separated(
          separatorBuilder: (context, index) => const Divider(
            height: 2,
            color: EnsColors.neutral200,
          ),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) => const ListItemSkeleton(),
        ),
      ],
    );
  }
}

class _AllergiesList extends StatelessWidget {
  final AllergiesScreenViewModel vm;

  const _AllergiesList(this.vm);

  @override
  Widget build(BuildContext context) {
    return ListViewWithScrollbar.separated(
      separatorBuilder: (context, index) => _AllergiesListDivider(vm, index),
      padding: const EdgeInsets.only(bottom: 76),
      itemCount: vm.displayModels.length,
      itemBuilder: (context, index) => _AllergiesListItem(vm, index),
    );
  }
}

class _AllergiesListDivider extends StatelessWidget {
  final AllergiesScreenViewModel vm;
  final int index;

  const _AllergiesListDivider(this.vm, this.index);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: (vm.displayModels.indexIsNotAnEnd(index)) ? 2 : 0,
      color: (vm.displayModels.indexIsNotAnEnd(index)) ? EnsColors.neutral200 : Colors.white,
    );
  }
}

class _AllergiesListItem extends StatelessWidget {
  final AllergiesScreenViewModel vm;
  final int index;

  const _AllergiesListItem(this.vm, this.index);

  @override
  Widget build(BuildContext context) {
    switch (vm.displayModels[index]) {
      case AllergiesScreenHeaderDisplayModel _:
        return _ScreenTitle(vm);
      case AllergieItemDisplayModel _:
        final allergie = (vm.displayModels[index] as AllergieItemDisplayModel).allergie;
        return DeleteSlidable(
          groupTag: '0',
          onPressed: (context) => _showDeleteConfirmationBottomSheet(context, vm, allergie.id),
          child: AllergieItem(allergie: allergie),
        );
      default:
        return const SizedBox();
    }
  }

  void _showDeleteConfirmationBottomSheet(
    BuildContext context,
    AllergiesScreenViewModel vm,
    String allergieId,
  ) {
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
            vm.deleteAllergie(allergieId);
          },
          negativeButtonHandler: () {
            context.tagAction(TagsAllergies.tag_265_button_supprimer_allergie_annuler);
          },
        );
      },
    );
  }
}

class _ScreenTitle extends StatelessWidget {
  final AllergiesScreenViewModel vm;

  const _ScreenTitle(this.vm);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 28, bottom: 4),
          child: Text(
            'Je peux décrire mes allergies (exemples : allergies alimentaires, médicamenteuses, intolérances...).',
            style: EnsTextStyle.text14_w400_normal_body,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: EnsLinkText(
            label: 'Télécharger la synthèse des allergies',
            textPadding: const EdgeInsets.all(16),
            onTap: () {
              context.tagAction(TagsAllergies.tag_486_button_telecharger_allergie);
              vm.exportRubriqueAllergies();
            },
          ),
        ),
      ],
    );
  }
}

void _goToAddScreen(BuildContext context, {EditAllergieArgument? allergieArguments}) {
  Navigator.pushNamed(context, EditAllergieScreen.routeName, arguments: allergieArguments);
}

String _getLinkButtonLabel({required ProfilType profilType}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Je n\'ai pas d\'allergie à ajouter',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'Aucune allergie à ajouter'
  };
}

String _getTitleLabel({
  required ProfilType profilType,
  required String? unconcernedDate,
  required String mainFirstName,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'J\'ai déclaré ne pas avoir d\'allergie le $unconcernedDate',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'J\'ai déclaré que $mainFirstName n\'a pas d\'allergie le $unconcernedDate'
  };
}
