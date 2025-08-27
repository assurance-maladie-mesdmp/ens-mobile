/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_container.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_widget.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/displayModel/mon_histoire_de_sante_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/mon_histoire_de_sante_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/home_latest_mon_histoire_de_sante_items_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/mon_histoire_de_sante_vue_jours_list_item.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/widgets/histoire_sante_episodes_skeleton.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/tags/tags_home.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class HomeLatestMonHistoireDeSanteItemsWidget extends StatelessWidget {
  const HomeLatestMonHistoireDeSanteItemsWidget();

  @override
  Widget build(BuildContext context) {
    return InterruptionServiceContainer(
      composant: const DomaineInterruptionSectionComposant(
        domaineInterruption: DomaineInterruption.EPISODE_DE_SANTE,
        from: InterruptionServiceSectionName.MHS,
      ),
      child: StoreConnector<EnsState, HomeLatestMonHistoireDeSanteItemsViewModel>(
        converter: (store) => HomeLatestMonHistoireDeSanteItemsViewModel.from(store),
        distinct: true,
        onWillChange: (oldVm, vm) {
          if (oldVm?.status != HistoireDeSanteListStatus.SUCCESS && vm.status == HistoireDeSanteListStatus.SUCCESS) {
            vm.fetchVaccinationsWhenNeeded();
          }
        },
        builder: (context, vm) => ColoredBox(
          color: EnsColors.light,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: _Content(vm),
          ),
        ),
      ),
    );
  }
}

class _HeaderWidgets extends StatelessWidget {
  final HomeLatestMonHistoireDeSanteItemsViewModel vm;

  const _HeaderWidgets(this.vm);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            vm.isMainProfile ? 'Mon histoire de santé' : 'L\'histoire de santé de ${vm.mainFirstName}',
            textAlign: TextAlign.start,
            style: EnsTextStyle.text20_w400_normal_title,
          ),
        ),
      ],
    );
  }
}

class _Loading extends StatelessWidget {
  final HomeLatestMonHistoireDeSanteItemsViewModel vm;

  const _Loading(this.vm);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        _HeaderWidgets(vm),
        const SizedBox(height: 8),
        DecoratedBox(
          decoration: BoxDecoration(
            color: EnsColors.light,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const SizedBox(height: 10, width: 120),
        ),
        const SizedBox(height: 8),
        ListViewWithScrollbar.separated(
          padding: EdgeInsets.zero,
          separatorBuilder: (context, index) => const SizedBox(height: 8),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (context, index) => MonHistoireDeSanteEpisodesSkeleton(),
        ),
        const SizedBox(height: 32),
        DecoratedBox(
          decoration: BoxDecoration(
            color: EnsColors.light,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const SizedBox(
            height: 10,
            width: 120,
          ),
        ),
        const SizedBox(height: 8),
        ListViewWithScrollbar.separated(
          padding: EdgeInsets.zero,
          separatorBuilder: (context, index) => const SizedBox(height: 8),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (context, index) => MonHistoireDeSanteEpisodesSkeleton(),
        ),
      ],
    );
  }
}

class _List extends StatelessWidget {
  final HomeLatestMonHistoireDeSanteItemsViewModel vm;

  const _List(this.vm);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        _HeaderWidgets(vm),
        ListViewWithScrollbar.separated(
          padding: const EdgeInsets.symmetric(vertical: 16),
          separatorBuilder: (context, index) => const SizedBox(height: 8),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: vm.displayModels.length,
          itemBuilder: (context, index) {
            return MonHistoireDeSanteVueJoursListItem(
              displayModel: vm.displayModels[index],
              withTopMargin: index > 0 && vm.displayModels[index - 1] is MonHistoireDeSanteEpisodeDisplayModel,
              itemTagClick: const EnsTag(
                category: EnsAnalyticsCategory.CLICK,
                name: 'button_episodemhs_home',
                level1: 'home_connecte',
              ),
              from: FetchProfessionnelSanteDetailFrom.HOME,
            );
          },
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: EnsButtonSecondary(
              backgroundColor: Colors.transparent,
              label: vm.isMainProfile ? 'Voir mon histoire de santé' : 'Voir l\'histoire de santé',
              onTap: () {
                context.tagAction(TagsHome.tag_640_button_voir_tous_mon_hd);
                Navigator.pushNamed(context, MonHistoireDeSanteScreen.routeName);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _Content extends StatelessWidget {
  final HomeLatestMonHistoireDeSanteItemsViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case HistoireDeSanteListStatus.LOADING:
        return _Loading(vm);
      case HistoireDeSanteListStatus.EMPTY:
      case HistoireDeSanteListStatus.ERROR:
        return Container();
      case HistoireDeSanteListStatus.SUCCESS:
        return _List(vm);
    }
  }
}
