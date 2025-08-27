/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/ens_hospitalisation.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/screens/edit_hospitalisation_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/screens/hospitalisation_details_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/screens/viewModels/hospitalisations_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/widgets/hospitalisation_item.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_hospitalisations.dart';
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

class HospitalisationsScreen extends StatelessWidget {
  static const routeName = '/medical/profil/hospitalisation';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, HospitalisationsScreenViewModel>(
      converter: (store) => HospitalisationsScreenViewModel.from(store),
      onInitialBuild: (vm) {
        _tagPage(context, vm.listStatus);
        context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_HOSPITALISATIONS);
        vm.loadHospitalisations();
      },
      onDidChange: (_, vm) {
        _tagPage(context, vm.listStatus);
      },
      distinct: true,
      builder: (_, HospitalisationsScreenViewModel vm) => Scaffold(
        floatingActionButton: Visibility(
          visible: vm.listStatus == HospitalisationsListStatus.SUCCESS,
          child: EnsFloatingActionAddButton(
            tooltip: 'Ajouter une nouvelle hospitalisation',
            onPressed: () {
              context.tagAction(TagsHospitalisations.tag_228_button_ajout_hospitalisation);
              _goToAddScreen(context, null);
            },
          ),
        ),
        appBar: const EnsAppBarSubLevel(title: 'Hospitalisations'),
        body: _Content(vm),
      ),
    );
  }

  void _tagPage(BuildContext context, HospitalisationsListStatus listStatus) {
    switch (listStatus) {
      case HospitalisationsListStatus.SUCCESS:
        context.tagAction(TagsHospitalisations.tag_hospitalisations);
      case HospitalisationsListStatus.EMPTY:
        context.tagAction(TagsHospitalisations.tag_421_hospitalisation_empty);
      case HospitalisationsListStatus.UNCONCERNED:
        context.tagAction(TagsHospitalisations.tag_423_hospitalisation_aucun);
      default:
        break;
    }
  }
}

class _Loading extends StatelessWidget {
  final HospitalisationsScreenViewModel vm;

  const _Loading({required this.vm});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        _ScreenTitle(vm: vm),
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

class _ScreenTitle extends StatelessWidget {
  final HospitalisationsScreenViewModel vm;

  const _ScreenTitle({required this.vm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 28, bottom: 24),
      child: Text(
        _getScreenTitle(
          profilType: vm.profilType,
        ),
        style: EnsTextStyle.text14_w400_normal_body,
      ),
    );
  }
}

class _Hospitalisations extends StatelessWidget {
  final HospitalisationsScreenViewModel vm;

  const _Hospitalisations(this.vm);

  @override
  Widget build(BuildContext context) {
    if (vm.listStatus == HospitalisationsListStatus.SUCCESS) {
      return EnsPullToRefresh(
        onRefresh: () async => vm.loadHospitalisations(force: true),
        child: _HospitalisationList(vm),
      );
    } else {
      return EnsPullToRefresh(
        onRefresh: () async => vm.loadHospitalisations(force: true),
        child: vm.listStatus == HospitalisationsListStatus.UNCONCERNED
            ? EnsEmptyPage(
                title: _getTitleLabel(
                  profilType: vm.profilType,
                  mainFirstName: vm.mainFirstName,
                  unconcernedDate: vm.unconcernedDate,
                ),
                description: _getDescriptionEmptyPageUnconcerned(
                  profilType: vm.profilType,
                ),
                buttonList: EnsEmptyButtonList.withPrimaryButton(
                  primaryButtonLabel: 'Ajouter une hospitalisation',
                  primaryButtonHandler: () {
                    context.tagAction(TagsHospitalisations.tag_228_button_ajout_hospitalisation);
                    _goToAddScreen(context, null);
                  },
                ),
              )
            : EnsEmptyPage(
                title: 'J\'ajoute mes hospitalisations'.resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
                description: _getDescriptionEmptyPage(
                  profilType: vm.profilType,
                ),
                buttonList: EnsEmptyButtonList.withPrimaryAndBottomLinkTextButton(
                  primaryButtonLabel: 'Ajouter une hospitalisation',
                  primaryButtonHandler: () {
                    context.tagAction(TagsHospitalisations.tag_228_button_ajout_hospitalisation);
                    _goToAddScreen(context, null);
                  },
                  linkButtonLabel: _getLinkButtonLabel(profilType: vm.profilType),
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

void _goToAddScreen(BuildContext context, EnsHospitalisation? hospitalisation) {
  Navigator.pushNamed(context, EditHospitalisationScreen.routeName, arguments: hospitalisation?.id);
}

void _goToDetailsScreen(BuildContext context, EnsHospitalisation hospitalisation) {
  Navigator.pushNamed(context, HospitalisationDetailsScreen.routeName, arguments: hospitalisation.id);
}

void _showDeleteConfirmationBottomSheet(
  BuildContext context,
  HospitalisationsScreenViewModel vm,
  EnsHospitalisation hospitalisation,
) {
  context.tagAction(TagsHospitalisations.tag_433_popin_supprimer_hospitalisation);
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return ConfirmationBottomSheet(
        title: 'Supprimer “${hospitalisation.name}” ?',
        content: const ConfirmationBottomSheetDefaultTextContent(
          'Tout document associé reste présent dans la liste de vos documents de santé.',
        ),
        positiveButtonLabel: 'Supprimer',
        positiveButtonHandler: () {
          context.tagAction(TagsHospitalisations.tag_434_popin_supprimer_hospitalisation_valider);
          vm.deleteHospitalisation(hospitalisation.id);
        },
        negativeButtonHandler: () {
          context.tagAction(TagsHospitalisations.tag_435_button_supprimer_hospitalisation_annuler);
        },
      );
    },
  );
}

class _HospitalisationList extends StatelessWidget {
  final HospitalisationsScreenViewModel vm;

  const _HospitalisationList(this.vm);

  @override
  Widget build(BuildContext context) {
    return SlidableAutoCloseBehavior(
      child: ListViewWithScrollbar.separated(
        separatorBuilder: (context, index) => _buildHospitalisationsListDivider(vm, index),
        itemCount: vm.displayModels.length,
        padding: const EdgeInsets.only(bottom: 76),
        itemBuilder: (context, index) => _HospitalisationsItem(
          vm: vm,
          index: index,
        ),
      ),
    );
  }

  Divider _buildHospitalisationsListDivider(HospitalisationsScreenViewModel vm, int index) => Divider(
        height: (vm.displayModels.indexIsNotAnEnd(index)) ? 2 : 0,
        color: (vm.displayModels.indexIsNotAnEnd(index)) ? EnsColors.neutral200 : Colors.white,
      );
}

class _HospitalisationsItem extends StatelessWidget {
  final HospitalisationsScreenViewModel vm;
  final int index;

  const _HospitalisationsItem({required this.vm, required this.index});

  @override
  Widget build(BuildContext context) {
    switch (vm.displayModels[index]) {
      case HospitalisationsScreenHeaderDisplayModel _:
        return _ScreenTitle(vm: vm);
      case HospitalisationsItemDisplayModel _:
        final hospitalisation = (vm.displayModels[index] as HospitalisationsItemDisplayModel).hospitalisation;
        return DeleteSlidable(
          onPressed: (context) => _showDeleteConfirmationBottomSheet(context, vm, hospitalisation),
          child: HospitalisationItem(
            hospitalisation: hospitalisation,
            onTap: () => _goToDetailsScreen(context, hospitalisation),
          ),
        );
      default:
        return const SizedBox();
    }
  }
}

class _Content extends StatelessWidget {
  final HospitalisationsScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.listStatus) {
      case HospitalisationsListStatus.SUCCESS:
      case HospitalisationsListStatus.EMPTY:
      case HospitalisationsListStatus.UNCONCERNED:
        return _Hospitalisations(vm);
      case HospitalisationsListStatus.ERROR:
        return ErrorPage(reloadFunction: () => vm.loadHospitalisations());
      default:
        return _Loading(vm: vm);
    }
  }
}

String _getScreenTitle({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL =>
      'Je garde une trace de mes visites hospitalières et le détail des soins que j\'ai reçus.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Je garde une trace de ses visites hospitalières et le détail des soins reçus.'
  };
}

String _getDescriptionEmptyPageUnconcerned({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL =>
      'Si ma situation a évolué, je la mets à jour pour garder une trace de mes visites hospitalières et le détail des soins que j\'ai reçus.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Si sa situation a évolué, je la mets à jour pour garder une trace de ses visites hospitalières et le détail des soins reçus.'
  };
}

String _getDescriptionEmptyPage({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL =>
      'Pour garder une trace de mes visites hospitalières et le détail des soins que j\'ai reçus.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Pour garder une trace de ses visites hospitalières et le détail des soins reçus.'
  };
}

String _getTitleLabel({
  required ProfilType profilType,
  required String? unconcernedDate,
  required String mainFirstName,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'J\'ai déclaré ne pas avoir eu d\'hospitalisation le $unconcernedDate.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'J\'ai déclaré que $mainFirstName n\'a pas eu d’hospitalisation le $unconcernedDate.'
  };
}

String _getLinkButtonLabel({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Je n\'ai pas d\'hospitalisation ou d\'acte chirurgical à ajouter',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'Aucune hospitalisation à ajouter'
  };
}
