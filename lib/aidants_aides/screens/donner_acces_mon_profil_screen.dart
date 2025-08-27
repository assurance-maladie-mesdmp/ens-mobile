/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/delegation.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/donner_acces_mon_profil_info_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/recherche_aidant_form_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/revocation_acces_aidant_confirmation_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/viewmodels/donner_acces_mon_profil_view_model.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/widgets/delegations_cards_widget.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_aidants_aides.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class DonnerAccesMonProfilScreen extends StatelessWidget {
  static const routeName = '/aidants_aides/donner_acces_mon_profil';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, DonnerAccesMonProfilViewModel>(
      converter: (store) => DonnerAccesMonProfilViewModel.from(store),
      distinct: true,
      onInitialBuild: (vm) {
        context.tagAction(TagsAidantsAides.tag_2534_donner_acces_a_mon_profil_aide);
        vm.fetchDelegations();
      },
      onWillChange: (oldVm, vm) {
        if (oldVm?.sendInvitationStatus.isLoading() == true && vm.sendInvitationStatus.isSuccess()) {
          vm.fetchDelegations();
        }
        if (oldVm?.deleteDelegationStatus.isLoading() == true && vm.deleteDelegationStatus.isSuccess()) {
          Navigator.pushNamed(context, RevocationAccesAidantConfirmationScreen.routeName);
        }
      },
      builder: (context, vm) {
        return Scaffold(
          appBar: EnsAppBarSubLevel(
            title: 'Gestion des accès à mon profil',
            action: (vm.isNotEmpty)
                ? IconButton(
                    onPressed: () {
                      context.tagAction(TagsAidantsAides.tag_2535_link_aide_proche_aidant_acces);
                      Navigator.pushNamed(context, DonnerAccesMonProfilInfoScreen.routeName);
                    },
                    tooltip: 'Informations',
                    icon: const EnsSvg(EnsImages.ic_info_circle_outlined),
                    splashRadius: 28,
                  )
                : null,
          ),
          body: SafeArea(
            child: (vm.isNotEmpty)
                ? _WithResultPage(vm: vm)
                : (vm.fetchDelegationsStatus.isLoading())
                    ? const _LoadingPage()
                    : _EmptyPage(),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: (vm.isNotEmpty)
              ? EnsFloatingButton(
                  buttonLabel: 'Donner accès à mon profil',
                  onTap: () {
                    Navigator.pushNamed(context, RechercheAidantFormScreen.routeName);
                  },
                )
              : null,
        );
      },
    );
  }
}

class _EmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnsEmptyPage(
      title: 'Je donne à mes proches aidants l\'accès à mon profil',
      description:
          'Je peux donner accès à 3 proches aidants maximum, afin de m\'accompagner dans la gestion de ma santé.',
      customImagePath: EnsImages.echange_donnees,
      buttonList: EnsEmptyButtonList.withPrimaryAndTopLinkTextButton(
        primaryButtonLabel: 'Donner accès à mon profil',
        primaryButtonHandler: () {
          Navigator.pushNamed(context, RechercheAidantFormScreen.routeName);
        },
        linkButtonLabel: 'À quoi mon proche aidant aura accès ?',
        linkButtonHandler: () {
          context.tagAction(TagsAidantsAides.tag_2535_link_aide_proche_aidant_acces);
          Navigator.pushNamed(context, DonnerAccesMonProfilInfoScreen.routeName);
        },
      ),
    );
  }
}

class _LoadingPage extends StatelessWidget {
  const _LoadingPage();

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          const SizedBox(height: 32),
          Expanded(
            child: ListViewWithScrollbar.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (_, __) => const EnsDivider(),
              scrollDirection: Axis.vertical,
              itemCount: 2,
              itemBuilder: (context, index) => DocumentItemSkeleton(),
            ),
          ),
        ],
      );
}

class _WithResultPage extends StatelessWidget {
  final DonnerAccesMonProfilViewModel vm;

  const _WithResultPage({required this.vm});

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Je gère l\'accès de mes proches aidants à mon profil.',
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
                const SizedBox(height: 12),
                EnsPersistentInfoBox.text('Je peux donner accès à mon profil à 3 proches aidants maximum.'),
                const SizedBox(height: 32),
              ],
            ),
          ),
          ...vm.delegationsEnAttente.map((delegationItem) => DelegationEnAttenteCard(delegationItem)),
          ...vm.delegationsEnCours.map(
            (delegationItem) => DelegationEnCoursCard(
              displayModel: delegationItem,
              delegationActeurType: DelegationActeurType.AIDANT,
              onConfirmDelete: (delegationId, _) => vm.onDeleteDelegation(delegationId),
            ),
          ),
          const SizedBox(height: 48),
        ],
      ),
    );
  }
}
