/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/agenda/screens/agenda_screen.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/infra/remote_config_wrapper.dart';
import 'package:fr_cnamts_ens/tags/tags_home.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:redux/redux.dart';

class VaccinationsAndTraitementsAndExamenRecommandesWidgetViewModel extends Equatable {
  final List<VaccinationsAndTraitementsAndExamenRecommandesDisplayModel> vaccinationsAndTraitementsAndExamenRecommandes;

  const VaccinationsAndTraitementsAndExamenRecommandesWidgetViewModel._internal({
    required this.vaccinationsAndTraitementsAndExamenRecommandes,
  });

  factory VaccinationsAndTraitementsAndExamenRecommandesWidgetViewModel(
    Store<EnsState> store,
    RemoteConfigWrapper remoteConfigWrapper,
  ) {
    final List<VaccinationsAndTraitementsAndExamenRecommandesDisplayModel> displayModels = [];

    if (remoteConfigWrapper.isEnabled(Feature.agenda)) {
      final homeExamenRecommandesState = store.state.homeExamenRecommandesState;
      final nbExamensAndVaccinations = homeExamenRecommandesState.status.isSuccess()
          ? homeExamenRecommandesState.examensRecommandesAPlanifierLength
          : 0;

      if (nbExamensAndVaccinations != 0) {
        displayModels.add(
          VaccinationsAndTraitementsAndExamenRecommandesDisplayModel(
            icon: EnsImages.ic_calendar,
            title: 'Examens médicaux et vaccinations à réaliser',
            number: nbExamensAndVaccinations.toString(),
            tag: TagsHome.tag_1342_link_examens_recommandes,
            targetScreen: AgendaScreen.routeName,
          ),
        );
      }
    }

    return VaccinationsAndTraitementsAndExamenRecommandesWidgetViewModel._internal(
      vaccinationsAndTraitementsAndExamenRecommandes: displayModels,
    );
  }

  @override
  List<Object?> get props => [vaccinationsAndTraitementsAndExamenRecommandes];
}

class VaccinationsAndTraitementsAndExamenRecommandesDisplayModel extends Equatable {
  final String icon;
  final String title;
  final String number;
  final EnsTag tag;
  final String targetScreen;
  final Object? targetScreenArguments;

  const VaccinationsAndTraitementsAndExamenRecommandesDisplayModel({
    required this.icon,
    required this.title,
    required this.number,
    required this.tag,
    required this.targetScreen,
    this.targetScreenArguments,
  });

  @override
  List<Object?> get props => [icon, title, number, tag, targetScreen, targetScreenArguments];
}
