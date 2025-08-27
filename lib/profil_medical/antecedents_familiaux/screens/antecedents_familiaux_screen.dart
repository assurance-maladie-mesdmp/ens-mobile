/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/ens_antecedent_familial.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/screens/edit_antecedent_familial_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/screens/viewModels/antecedents_familiaux_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/widgets/antecedent_familial_item.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_antecedents.dart';
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
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/utils/extensions/list_extensions.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class AntecedentsFamiliauxScreen extends StatelessWidget {
  static const routeName = '/medical/profil/antecedents-familiaux';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, AntecedentsFamiliauxScreenViewModel>(
      converter: (store) => AntecedentsFamiliauxScreenViewModel.from(store),
      onInitialBuild: (vm) {
        vm.fetchAntecedentsFamiliaux();
        _tagPage(context, vm);
        context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_ANTECEDENTS_FAMILIAUX);
      },
      onDidChange: (_, vm) {
        _tagPage(context, vm);
      },
      distinct: true,
      builder: (_, AntecedentsFamiliauxScreenViewModel vm) => Scaffold(
        floatingActionButton: Visibility(
          visible: vm.listStatus == AntecedentsFamiliauxListStatus.SUCCESS,
          child: EnsFloatingActionAddButton(
            tooltip: 'Ajouter un nouvel antécédent familial',
            onPressed: () {
              context.tagAction(TagsAntecedents.tag_234_button_ajout_antecedent);
              _goToAddScreen(context, null);
            },
          ),
        ),
        appBar: const EnsAppBarSubLevel(title: 'Antécédents familiaux'),
        body: _Content(vm: vm),
      ),
    );
  }

  void _tagPage(BuildContext context, AntecedentsFamiliauxScreenViewModel vm) {
    switch (vm.listStatus) {
      case AntecedentsFamiliauxListStatus.SUCCESS:
        context.tagAction(TagsAntecedents.tag_antecedents);
      case AntecedentsFamiliauxListStatus.EMPTY:
        context.tagAction(TagsAntecedents.tag_427_antecedent_empty);
      case AntecedentsFamiliauxListStatus.UNCONCERNED:
        context.tagAction(TagsAntecedents.tag_429_antecedent_aucun);
      default:
        break;
    }
  }
}

void _showDeleteConfirmationBottomSheet(
  BuildContext context,
  AntecedentsFamiliauxScreenViewModel vm,
  String antecedentFamilialId,
) {
  context.tagAction(TagsAntecedents.tag_247_popin_supprimer_antecedent);
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return ConfirmationBottomSheet(
        title: 'Supprimer cet antécédent familial ?',
        content:
            const ConfirmationBottomSheetDefaultTextContent('Cet antécédent familial sera supprimé définitivement.'),
        positiveButtonLabel: 'Supprimer',
        positiveButtonHandler: () {
          context.tagAction(TagsAntecedents.tag_248_button_supprimer_antecedent_valider);
          vm.deleteAntecedentFamilial(antecedentFamilialId);
        },
        negativeButtonHandler: () {
          context.tagAction(TagsAntecedents.tag_249_button_supprimer_antecedent_annuler);
        },
      );
    },
  );
}

class _ScreenTitle extends StatelessWidget {
  final bool isProfilPrincipal;

  const _ScreenTitle({required this.isProfilPrincipal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 28, bottom: 16),
      child: Wrap(
        children: [
          Text(
            'Je garde une trace des maladies dans ${isProfilPrincipal ? 'ma' : 'sa'} famille et anticipe mieux leur impact potentiel sur ma santé.',
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          Container(),
        ],
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  final bool isProfilPrincipal;

  const _Loading({required this.isProfilPrincipal});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const _ScreenTitle(isProfilPrincipal: true),
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

class _Content extends StatelessWidget {
  final AntecedentsFamiliauxScreenViewModel vm;

  const _Content({required this.vm});

  @override
  Widget build(BuildContext context) {
    switch (vm.listStatus) {
      case AntecedentsFamiliauxListStatus.SUCCESS:
        return EnsPullToRefresh(
          onRefresh: () async => vm.fetchAntecedentsFamiliaux(force: true),
          child: _AntecedentsFamiliauxList(vm),
        );
      case AntecedentsFamiliauxListStatus.EMPTY:
        return EnsPullToRefresh(
          onRefresh: () async => vm.fetchAntecedentsFamiliaux(force: true),
          child: EnsEmptyPage(
            title:
                'J\'ajoute mes antécédents familiaux'.resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
            description:
                'Pour garder une trace des maladies dans ma famille et mieux anticiper leur impact potentiel sur ma santé.'
                    .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
            buttonList: EnsEmptyButtonList.withPrimaryAndBottomLinkTextButton(
              primaryButtonLabel: 'Ajouter un antécédent',
              primaryButtonHandler: () {
                context.tagAction(TagsAntecedents.tag_234_button_ajout_antecedent);
                _goToAddScreen(context, null);
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
      case AntecedentsFamiliauxListStatus.UNCONCERNED:
        return EnsPullToRefresh(
          onRefresh: () async => vm.fetchAntecedentsFamiliaux(force: true),
          child: EnsEmptyPage(
            title: _getTitleLabel(
              profilType: vm.profilType,
              mainFirstName: vm.mainFirstName,
              unconcernedDate: vm.unconcernedDate,
            ),
            description:
                'Si ma situation a évolué, je la mets à jour pour garder une trace des maladies dans ma famille et mieux anticiper leur impact potentiel sur ma santé.'
                    .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
            buttonList: EnsEmptyButtonList.withPrimaryButton(
              primaryButtonLabel: 'Ajouter un antécédent',
              primaryButtonHandler: () {
                context.tagAction(TagsAntecedents.tag_234_button_ajout_antecedent);
                _goToAddScreen(context, null);
              },
            ),
          ),
        );
      case AntecedentsFamiliauxListStatus.ERROR:
        return ErrorPage(reloadFunction: vm.fetchAntecedentsFamiliaux);
      default:
        return _Loading(isProfilPrincipal: vm.profilType.isProfilPrincipal);
    }
  }
}

class _AntecedentsFamiliauxList extends StatelessWidget {
  final AntecedentsFamiliauxScreenViewModel vm;

  const _AntecedentsFamiliauxList(this.vm);

  @override
  Widget build(BuildContext context) {
    return SlidableAutoCloseBehavior(
      child: ListViewWithScrollbar.separated(
        separatorBuilder: (context, index) => AntecedentsFamiliauxListDivider(vm: vm, index: index),
        padding: const EdgeInsets.only(bottom: 76),
        itemCount: vm.displayModels.length,
        itemBuilder: (context, index) => _AntecedentsFamiliauxItem(
          vm: vm,
          index: index,
        ),
      ),
    );
  }
}

class AntecedentsFamiliauxListDivider extends StatelessWidget {
  const AntecedentsFamiliauxListDivider({
    super.key,
    required this.vm,
    required this.index,
  });

  final AntecedentsFamiliauxScreenViewModel vm;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: vm.displayModels.indexIsNotAnEnd(index) ? 2 : 0,
      color: vm.displayModels.indexIsNotAnEnd(index) ? EnsColors.neutral200 : Colors.white,
    );
  }
}

class _AntecedentsFamiliauxItem extends StatelessWidget {
  final AntecedentsFamiliauxScreenViewModel vm;
  final int index;

  const _AntecedentsFamiliauxItem({required this.vm, required this.index});

  @override
  Widget build(BuildContext context) {
    switch (vm.displayModels[index]) {
      case AntecedentsFamiliauxScreenHeaderDisplayModel _:
        return _ScreenTitle(isProfilPrincipal: vm.profilType.isProfilPrincipal);
      case AntecedentsFamiliauxItemDisplayModel _:
        final antecedentFamilial = (vm.displayModels[index] as AntecedentsFamiliauxItemDisplayModel).antecedentFamilial;
        return DeleteSlidable(
          groupTag: '0',
          onPressed: (context) => _showDeleteConfirmationBottomSheet(
            context,
            vm,
            (vm.displayModels[index] as AntecedentsFamiliauxItemDisplayModel).antecedentFamilial.id,
          ),
          child: AntecedentFamilialItem(
            antecedentFamilial: antecedentFamilial,
            onUpdate: () {
              context.tagAction(TagsAntecedents.tag_236_button_modifier_antecedent);
              _goToAddScreen(context, antecedentFamilial);
            },
            onDelete: () {
              context.tagAction(TagsAntecedents.tag_238_button_supprimer_antecedent);
              _showDeleteConfirmationBottomSheet(context, vm, antecedentFamilial.id);
            },
            onTap: () {
              context.tagAction(TagsAntecedents.tag_243_button_antecedents_actions);
            },
          ),
        );
      default:
        return const SizedBox();
    }
  }
}

void _goToAddScreen(BuildContext context, EnsAntecedentFamilial? antecedentFamilial) {
  Navigator.pushNamed(context, EditAntecedentFamilialScreen.routeName, arguments: antecedentFamilial);
}

String _getLinkButtonLabel({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Je n\'ai pas d\'antécédent familial à ajouter',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'Aucun antécédent familial à ajouter'
  };
}

String _getTitleLabel({
  required ProfilType profilType,
  required String? unconcernedDate,
  required String mainFirstName,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'J\'ai déclaré ne pas avoir d\'antécédent familial le $unconcernedDate',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'J\'ai déclaré que $mainFirstName n\'a pas d\'antécédent familial le $unconcernedDate'
  };
}
