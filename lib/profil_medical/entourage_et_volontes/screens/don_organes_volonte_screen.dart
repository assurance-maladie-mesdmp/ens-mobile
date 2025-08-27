/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/aidants_aides_utils.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/widgets/parameters_toggle_item.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/redux/entourage_et_volontes_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/viewModels/don_organe_volonte_view_model.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_entourage_et_volontes.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/utils/pull_to_refresh_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';

class DonOrganesVolonteScreen extends StatelessWidget {
  static const routeName = '/medical/profil/don-organes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Don d\'organes et de tissus',
      ),
      body: StoreConnector<EnsState, DonOrganeVolonteViewModel>(
        converter: (store) => DonOrganeVolonteViewModel.from(store),
        distinct: true,
        onInitialBuild: (vm) {
          vm.fetchEntourageEtVolontes();
          context.tagAction(TagsIncitation.tag_2647_volontes);
          context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_DON_ORGANE);
        },
        builder: (context, vm) {
          return EnsPullToRefresh(
            onRefresh: () async => vm.fetchEntourageEtVolontes(force: true),
            child: _Content(vm),
          );
        },
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final DonOrganeVolonteViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case AllPurposesStatus.NOT_LOADED:
      case AllPurposesStatus.LOADING:
        return SafeArea(child: _Loading());
      case AllPurposesStatus.SUCCESS:
        return SafeArea(child: _Success(vm));
      case AllPurposesStatus.ERROR:
        return ErrorPage(reloadFunction: () => vm.fetchEntourageEtVolontes(force: true));
    }
  }
}

class _Success extends StatelessWidget {
  final DonOrganeVolonteViewModel vm;

  final urlsConfig = EnsModuleContainer.currentInjector.getUrlsConfig();

  _Success(this.vm);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScrollviewWithScrollbar(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),
            _ComplementaryInformations(showAdProfilInformation: vm.profilType.isAd),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: EnsExternalLink.withRedirection(
                linkUrl: urlsConfig.registreDesRefusUrl,
                linkText: 'Registre National des refus',
                extraPadding: const EdgeInsets.only(bottom: 16),
              ),
            ),
            _DonOrganesInformations(showAdProfilInformation: vm.profilType.isAd),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: EnsExternalLink.withRedirection(
                linkUrl: urlsConfig.donOrganesUrl,
                linkText: 'https://www.dondorganes.fr/',
                semanticsLabel: 'https www point don d\'organes point fr',
                extraPadding: EdgeInsets.only(bottom: vm.profilType.isAide ? 20 : 24),
              ),
            ),
            if (vm.profilType.isAide)
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
                child: EnsPersistentInfoBox.text(
                  AidantAideUtils.unavailableAsAidant,
                  style: EnsTextStyle.text14_w600_normal_title,
                ),
              ),
            _SwitchDonOrganes(vm: vm),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ScrollviewWithScrollbar(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            _SkeletonContactItem(),
            Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SkeletonBox(height: 12, width: 100),
                  SizedBox(height: 8),
                  SkeletonBox(height: 12, width: 100),
                  SizedBox(height: 8),
                  SkeletonBox(height: 12, width: 152),
                  SizedBox(height: 8),
                  SkeletonBox(height: 12, width: 160),
                  SizedBox(height: 8),
                  SkeletonBox(height: 12, width: 172),
                  SizedBox(height: 16),
                  SkeletonBox(height: 12, width: 152),
                  SizedBox(height: 8),
                  SkeletonBox(height: 12, width: 160),
                  SizedBox(height: 8),
                  SkeletonBox(height: 12, width: 172),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SkeletonContactItem extends StatelessWidget {
  const _SkeletonContactItem();

  @override
  Widget build(BuildContext context) {
    return const EnsCard(
      backgroundColor: EnsColors.light,
      borderRadius: 0,
      hasBoxShadow: false,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonBox(height: 12, width: double.infinity),
                SizedBox(height: 8),
                SkeletonBox(height: 12, width: double.infinity),
                SizedBox(height: 8),
                SkeletonBox(height: 12, width: double.infinity),
                SizedBox(height: 8),
                SkeletonBox(height: 12, width: 200),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: SkeletonBox(height: 28, width: 80),
          ),
        ],
      ),
    );
  }
}

class _SwitchDonOrganes extends StatelessWidget {
  final DonOrganeVolonteViewModel vm;

  const _SwitchDonOrganes({required this.vm});

  @override
  Widget build(BuildContext context) {
    return ParametersToggleItem(
      titre:
          'Je déclare avoir pris connaissance des dispositions réglementaires relatives au don d\'organes et de tissus.',
      description: null,
      value: vm.consent,
      labelTextStyle: vm.consent ? EnsTextStyle.text14_w700_normal_title : EnsTextStyle.text14_w600_normal_title,
      disabled: vm.shouldDisableToggle || EnsModuleContainer.currentInjector.isGuestMode() || vm.profilType.isAide,
      onToggle: (newValue) {
        if (vm.consent) {
          context.tagAction(TagsEntourageEtVolontes.tag_button_ajout_don_organe);
        }
        StoreProvider.of<EnsState>(context).dispatch(ToggleConsentDonOrganeAction(newValue));
      },
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      textAndSwitchRowAlignment: CrossAxisAlignment.start,
      sizeSpaceItems: 16,
    );
  }
}

class _ComplementaryInformations extends StatelessWidget {
  final bool showAdProfilInformation;

  const _ComplementaryInformations({required this.showAdProfilInformation});

  static const _baseProfilInformation =
      'En France, la loi considère que tout le monde est donneur d\'organes par défaut (c\'est le principe du « consentement présumé »).\n\nVous pouvez être opposé au prélèvement de vos organes et tissus. Dans ce cas, faites le savoir en vous inscrivant sur le registre national des refus tenu par l\'Agence de la Biomédecine :';
  static const String _adProfilInformation =
      'En France, la loi considère que tout le monde est donneur d\'organes par défaut (c\'est le principe du « consentement présumé »).\n\nVous pouvez être opposé(e) au prélèvement des organes et tissus de votre enfant. Dans ce cas, faites le savoir en l’inscrivant sur le registre national des refus tenu par l\'Agence de la Biomédecine :';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
      child: EnsRichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: 'Dispositions réglementaires\n\n',
              style: EnsTextStyle.text14_w700_normal_body,
            ),
            TextSpan(
              text: showAdProfilInformation ? _adProfilInformation : _baseProfilInformation,
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ],
        ),
      ),
    );
  }
}

class _DonOrganesInformations extends StatelessWidget {
  final bool showAdProfilInformation;

  const _DonOrganesInformations({required this.showAdProfilInformation});

  static const String _adProfilInformation =
      'Au moment du décès, avant d\'envisager un prélèvement d\'organes et de tissus, l\'équipe médicale vérifiera d\'abord auprès des personnes habilitées, par l\'Agence de Biomédecine, que le mineur n\'est pas inscrit sur le registre national des refus. Si tel n\'est pas le cas, il sera ensuite vérifié auprès des proches qu’il ou elle n’a pas fait valoir de son vivant son opposition.\n\nDe plus, le refus peut désormais être partiel, et ne concerner que certains organes ou tissus.\n\nRetrouvez les modalités et toutes les réponses à vos questions sur :';
  static const String _baseProfilInformation =
      'Vous pouvez également faire valoir votre refus de prélèvement par écrit et confier ce document daté et signé à un proche.\n\nAu moment du décès, avant d\'envisager un prélèvement d\'organes et de tissus, l\'équipe médicale vérifiera d\'abord auprès des personnes habilitées, par l\'Agence de Biomédecine, que vous n\'êtes pas inscrit sur le registre national des refus. Si tel n\'est pas le cas, il sera ensuite vérifié auprès des proches que vous n\'avez pas fait valoir de votre vivant votre opposition à l\'écrit ou à l\'oral. Dans le cas d\'une expression orale, l\'équipe médicale demandera à vos proches d\'en préciser les circonstances et de signer la retranscription qui en sera faite par écrit.\n\nDe plus, le refus peut désormais être partiel, et ne concerner que certains organes ou tissus.\n\nRetrouvez les modalités et toutes les réponses à vos questions sur :';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 24, right: 24),
      child: Text(
        showAdProfilInformation ? _adProfilInformation : _baseProfilInformation,
        style: EnsTextStyle.text14_w400_normal_body,
      ),
    );
  }
}
