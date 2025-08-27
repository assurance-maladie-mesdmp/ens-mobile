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
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/ens_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/redux/maladies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/edit_maladie_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/maladie_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/viewModels/maladies_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/widgets/maladie_item.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_maladies.dart';
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

class MaladiesScreenArguments extends Equatable {
  final bool fromIncitation;

  const MaladiesScreenArguments({this.fromIncitation = false});

  @override
  List<Object?> get props => [fromIncitation];
}

class MaladiesScreen extends StatelessWidget {
  static const routeName = '/medical/profil/maladies';

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments as MaladiesScreenArguments?;
    final fromIncitation = argument?.fromIncitation ?? false;

    return StoreConnector<EnsState, MaladiesScreenViewModel>(
      distinct: true,
      converter: (store) => MaladiesScreenViewModel.from(store),
      onInit: (store) {
        store.dispatch(const FetchMaladiesAction());
      },
      onInitialBuild: (vm) {
        _tagPage(context, vm, fromIncitation);
        context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_MALADIES);
      },
      onDidChange: (_, vm) {
        _tagPage(context, vm, fromIncitation);
      },
      builder: (_, MaladiesScreenViewModel vm) => Scaffold(
        floatingActionButton: Visibility(
          visible: vm.listStatus == MaladiesListStatus.SUCCESS,
          child: EnsFloatingActionAddButton(
            tooltip: 'Ajouter une nouvelle maladie ou sujet de santé',
            onPressed: () {
              context.tagAction(TagsMaladies.tag_186_button_ajout_maladie);
              _goToAddScreen(context);
            },
          ),
        ),
        appBar: const EnsAppBarSubLevel(title: 'Maladies et sujets de santé'),
        body: _Content(vm),
      ),
    );
  }

  void _tagPage(BuildContext context, MaladiesScreenViewModel vm, bool fromIncitation) {
    switch (vm.listStatus) {
      case MaladiesListStatus.SUCCESS:
        fromIncitation == true
            ? context.tagAction(TagsIncitation.tag_924_maladies)
            : context.tagAction(TagsMaladies.tag_maladies);
        return;
      case MaladiesListStatus.EMPTY:
        context.tagAction(TagsMaladies.tag_414_maladies_empty);
        return;
      case MaladiesListStatus.UNCONCERNED:
        context.tagAction(TagsMaladies.tag_416_maladies_aucune);
        return;
      default:
        return;
    }
  }
}

class _ScreenTitle extends StatelessWidget {
  final MaladiesScreenViewModel vm;

  const _ScreenTitle({required this.vm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 28, bottom: 16),
      child: Wrap(
        children: [
          Text(
            'Je retrouve et suis les événements importants qui peuvent impacter ma santé actuelle et future.'
                .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          Container(),
        ],
      ),
    );
  }
}

class _MaladiesList extends StatelessWidget {
  final MaladiesScreenViewModel vm;

  const _MaladiesList(this.vm);

  @override
  Widget build(BuildContext context) {
    return SlidableAutoCloseBehavior(
      child: ListViewWithScrollbar.separated(
        separatorBuilder: (context, index) => _MaladiesListDivider(vm, index),
        itemCount: vm.displayModels.length,
        padding: const EdgeInsets.only(bottom: 76),
        itemBuilder: (context, index) => _MaladiesListItem(index, vm),
      ),
    );
  }
}

class _MaladiesListDivider extends StatelessWidget {
  final MaladiesScreenViewModel vm;
  final int index;

  const _MaladiesListDivider(this.vm, this.index);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: (vm.displayModels.indexIsNotAnEnd(index)) ? 2 : 0,
      color: (vm.displayModels.indexIsNotAnEnd(index)) ? EnsColors.neutral200 : Colors.white,
    );
  }
}

class _MaladiesListItem extends StatelessWidget {
  final MaladiesScreenViewModel vm;
  final int index;

  const _MaladiesListItem(this.index, this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.displayModels[index]) {
      case MaladiesScreenHeaderDisplayModel _:
        return _ScreenTitle(vm: vm);
      case MaladiesItemDisplayModel _:
        final maladie = (vm.displayModels[index] as MaladiesItemDisplayModel).maladie;
        return DeleteSlidable(
          onPressed: (context) => _showDeleteConfirmationBottomSheet(context, vm, maladie),
          child: MaladieItem(
            maladie: maladie,
            onTap: () {
              context.tagAction(TagsMaladies.tag_198_button_maladie_actions);
              Navigator.pushNamed(context, MaladieDetailsScreen.routeName, arguments: maladie.id);
            },
          ),
        );
      default:
        return const SizedBox();
    }
  }
}

void _showDeleteConfirmationBottomSheet(
  BuildContext context,
  MaladiesScreenViewModel vm,
  EnsMaladie maladie,
) {
  context.tagAction(TagsMaladies.tag_187_popin_supprimer_maladie);
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return ConfirmationBottomSheet(
        title: 'Supprimer “${maladie.name}” ?',
        content: const ConfirmationBottomSheetDefaultTextContent(
          'Tout document associé reste présent dans la liste de vos documents de santé.',
        ),
        positiveButtonLabel: 'Supprimer',
        positiveButtonHandler: () {
          context.tagAction(TagsMaladies.tag_206_button_supprimer_maladie_valider);
          vm.deleteMaladie(maladie.id);
        },
        negativeButtonHandler: () {
          context.tagAction(TagsMaladies.tag_207_button_supprimer_maladie_annuler);
        },
      );
    },
  );
}

void _goToAddScreen(BuildContext context) {
  Navigator.pushNamed(context, EditMaladieScreen.routeName);
}

class _Maladies extends StatelessWidget {
  final MaladiesScreenViewModel vm;

  const _Maladies(this.vm);

  @override
  Widget build(BuildContext context) {
    if (vm.listStatus == MaladiesListStatus.SUCCESS) {
      return EnsPullToRefresh(onRefresh: () async => vm.loadMaladies(force: true), child: _MaladiesList(vm));
    } else {
      return EnsPullToRefresh(
        onRefresh: () async => vm.loadMaladies(force: true),
        child: vm.listStatus == MaladiesListStatus.UNCONCERNED
            ? EnsEmptyPage(
                title: _getTitleLabel(
                  profilType: vm.profilType,
                  mainFirstName: vm.mainFirstName,
                  unconcernedDate: vm.unconcernedDate,
                ),
                description:
                    'Si ma situation a évolué, je la mets à jour pour retrouver et suivre les événements importants qui peuvent impacter ma santé actuelle et future.'
                        .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
                buttonList: EnsEmptyButtonList.withPrimaryButton(
                  primaryButtonLabel: 'Ajouter une maladie',
                  primaryButtonHandler: () {
                    context.tagAction(TagsMaladies.tag_186_button_ajout_maladie);
                    _goToAddScreen(context);
                  },
                ),
              )
            : EnsEmptyPage(
                title: 'J\'ajoute mes maladies et autres sujets de santé'
                    .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
                description:
                    'Pour retrouver et suivre les événements importants qui peuvent impacter ma santé actuelle et future.'
                        .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
                buttonList: EnsEmptyButtonList.withPrimaryAndBottomLinkTextButton(
                  primaryButtonLabel: 'Ajouter une maladie',
                  primaryButtonHandler: () {
                    context.tagAction(TagsMaladies.tag_186_button_ajout_maladie);
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
}

class _Content extends StatelessWidget {
  final MaladiesScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.listStatus) {
      case MaladiesListStatus.SUCCESS:
      case MaladiesListStatus.EMPTY:
      case MaladiesListStatus.UNCONCERNED:
        return _Maladies(vm);
      case MaladiesListStatus.ERROR:
        return ErrorPage(reloadFunction: () => vm.loadMaladies());
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
                      'Je peux renseigner l\'ensemble de mes maladies et autres sujets de santé actuels ou passés (exemples : maladies graves, suivi dentaire, grossesses, douleurs chroniques, opérations\u2026)',
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

String _getLinkButtonLabel({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Je n\'ai pas de maladie ou sujet de santé à ajouter',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'Aucun maladie ou sujet de santé à ajouter'
  };
}

String _getTitleLabel({
  required ProfilType profilType,
  required String? unconcernedDate,
  required String mainFirstName,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'J\'ai déclaré ne pas avoir de maladie ou autre sujet de santé le $unconcernedDate',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'J\'ai déclaré que $mainFirstName n\'a pas de maladie ou autre sujet de santé le $unconcernedDate'
  };
}
