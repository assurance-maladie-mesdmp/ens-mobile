/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/screens/habitudes_de_vie_details_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/screens/viewModels/habitudes_de_vie_details_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/screens/viewModels/habitudes_de_vie_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/screens/viewModels/habitudes_de_vie_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/widgets/habitudes_de_vie_item.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_habitudes_de_vie.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class HabitudesDeVieScreen extends StatelessWidget {
  static const routeName = '/medical/profil/habitudes-de-vie';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, HabitudesDeVieScreenViewModel>(
      converter: (store) => HabitudesDeVieScreenViewModel(store),
      onInitialBuild: (vm) {
        context.tagAction(TagsHabitudesDeVie.tag_habitudes_de_vie);
        context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_HABITUDES_VIE);
        vm.loadHabitudesVie();
      },
      distinct: true,
      builder: (_, HabitudesDeVieScreenViewModel vm) => Scaffold(
        appBar: const EnsAppBarSubLevel(title: 'Habitudes de vie'),
        body: _Content(vm),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final HabitudesDeVieScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.habitudesDeVieStatus) {
      case ScreenStatus.LOADING:
        return _LoadingPage();
      case ScreenStatus.SUCCESS:
        return _SuccessPage(vm);
      case ScreenStatus.ERROR:
        return ErrorPage(reloadFunction: () => vm.loadHabitudesVie());
    }
  }
}

class _SuccessPage extends StatelessWidget {
  final HabitudesDeVieScreenViewModel vm;

  const _SuccessPage(this.vm);

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Text(
              'Je peux renseigner mes habitudes de vie pour améliorer mon suivi médical.'
                  .resolveWith(isProfilPrincipal: vm.isProfilPrincipal),
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ),
          _HabitudesVieList(vm),
        ],
      ),
    );
  }
}

class _HabitudesVieList extends StatelessWidget {
  final HabitudesDeVieScreenViewModel vm;

  const _HabitudesVieList(this.vm);

  @override
  Widget build(BuildContext context) {
    return ListViewWithScrollbar.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(bottom: 76),
      separatorBuilder: (context, index) => const Divider(color: EnsColors.neutral200, height: 2),
      scrollDirection: Axis.vertical,
      itemCount: vm.habitudesDeVieDisplayModels.length,
      itemBuilder: (context, index) {
        final currentDisplayModel = vm.habitudesDeVieDisplayModels[index];
        return _HabitudesVieListItem(currentDisplayModel);
      },
    );
  }
}

class _HabitudesVieListItem extends StatelessWidget {
  final HabitudesDeVieCategoryDisplayModel habitudeVieDisplayModel;

  const _HabitudesVieListItem(this.habitudeVieDisplayModel);

  @override
  Widget build(BuildContext context) {
    return HabitudesDeVieItem(
      title: habitudeVieDisplayModel.title,
      image: habitudeVieDisplayModel.image,
      lastModifiedDate: habitudeVieDisplayModel.lastModifiedDateLabel,
      onClick: () {
        context.traceAction(
          EnsTraceType.CONSULT_RUBRIQUE_HABITUDES_VIE_DETAIL,
          params: {'nomHDV': habitudeVieDisplayModel.title},
        );
        Navigator.pushNamed(
          context,
          HabitudesDeVieDetailsScreen.routeName,
          arguments: HabitudesDeVieDetailsScreenArgument(habitudeVieDisplayModel.code),
        );
      },
    );
  }
}

class _LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListViewWithScrollbar.separated(
        separatorBuilder: (context, index) => const Divider(height: 2, color: EnsColors.neutral200),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) => const ListItemSkeleton(),
      ),
    );
  }
}
