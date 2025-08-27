/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/redux/mesures_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/customize_mesures_list_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/viewmodels/last_mesures_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/last_mesure_item.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_mesures.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class LastMesuresScreen extends StatelessWidget {
  static const routeName = '/medical/profil/mesures';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, LastMesuresScreenViewModel>(
      converter: (store) => LastMesuresScreenViewModel(store),
      onInitialBuild: (vm) {
        context.tagAction(TagMesures.tagMesures);
        context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_MESURES);
      },
      onInit: (store) => store.dispatch(const FetchLastMesuresAction()),
      distinct: true,
      builder: (_, vm) => Scaffold(
        appBar: const EnsAppBarSubLevel(title: 'Mesures'),
        body: _Content(vm),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final LastMesuresScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.lastMesuresStatus) {
      case LastMesuresStatus.SUCCESS:
        return _Success(
          vm.lastMesuresDisplayModels,
          vm.isProfilPrincipal,
          vm.mainFirstName,
        );
      case LastMesuresStatus.ERROR:
        return _Error(vm.loadLastMesures);
      case LastMesuresStatus.LOADING:
        return const _Loading();
    }
  }
}

class _Success extends StatelessWidget {
  final List<LastMesuresScreenItemDisplayModel> lastMesureDisplayModels;
  final bool isProfilPrincipal;
  final String mainFirstName;

  const _Success(
    this.lastMesureDisplayModels,
    this.isProfilPrincipal,
    this.mainFirstName,
  );

  @override
  Widget build(BuildContext context) {
    return ListViewWithScrollbar.separated(
      separatorBuilder: (context, index) => const Divider(height: 2, color: EnsColors.neutral200),
      padding: const EdgeInsets.only(bottom: 100),
      itemCount: lastMesureDisplayModels.length,
      itemBuilder: (_, index) {
        switch (lastMesureDisplayModels[index]) {
          case LastMesuresScreenHeaderDisplayModel _:
            return Padding(
              padding: const EdgeInsets.fromLTRB(24, 32, 24, 20),
              child: Column(
                children: [
                  Text(
                    'Je garde une trace des mesures de santé qui ${isProfilPrincipal ? 'me concernent' : 'concernent $mainFirstName'} pour avoir une vision globale de leur évolution et mieux les communiquer à ${isProfilPrincipal ? 'mes' : 'ses'} professionnels de santé.',
                    style: EnsTextStyle.text14_w400_normal_body,
                  ),
                  const SizedBox(height: 8),
                  const _CustomizeListButton(),
                ],
              ),
            );
          case LastMesureDisplayModel _:
            return LastMesureItem(
              lastMesure: lastMesureDisplayModels[index] as LastMesureDisplayModel,
            );
          default:
            return const SizedBox();
        }
      },
    );
  }
}

class _CustomizeListButton extends StatelessWidget {
  const _CustomizeListButton();

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        Navigator.pushNamed(context, CustomizeMesuresListScreen.routeName);
      },
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          EnsSvg(EnsImages.ic_list_plus, width: 24, height: 24),
          SizedBox(width: 4),
          Flexible(
            child: Text(
              'Afficher les autres mesures',
              style: EnsTextStyle.text14_w700_normal_primary,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class _Error extends StatelessWidget {
  final Function() loadLastMesures;

  const _Error(this.loadLastMesures);

  @override
  Widget build(BuildContext context) {
    return ErrorPage(reloadFunction: () => loadLastMesures());
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return ListViewWithScrollbar.separated(
      separatorBuilder: (context, index) => const Divider(height: 2, color: EnsColors.neutral200),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) => const ListItemSkeleton(),
    );
  }
}
