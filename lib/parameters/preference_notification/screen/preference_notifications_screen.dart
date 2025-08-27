/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/preference_notification/domain/preference_notification.dart';
import 'package:fr_cnamts_ens/parameters/preference_notification/redux/preference_notification_redux.dart';
import 'package:fr_cnamts_ens/parameters/preference_notification/screen/viewModel/preference_notification_screen_view_model.dart';
import 'package:fr_cnamts_ens/parameters/widgets/parameters_toggle_item.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class PreferenceNotificationsScreen extends StatelessWidget {
  static const routeName = '/mon-compte/app-notification';

  const PreferenceNotificationsScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Notifications de l’application'),
      body: StoreConnector<EnsState, PreferenceNotificationScreenViewModel>(
        onInit: (store) => store.dispatch(FetchPreferenceNotificationAction()),
        converter: (store) => PreferenceNotificationScreenViewModel.from(store),
        distinct: true,
        builder: (_, vm) => _Content(vm),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final PreferenceNotificationScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    return switch (vm.status) {
      AllPurposesStatus.LOADING || AllPurposesStatus.SUCCESS => _SuccessOrLoadingView(vm),
      AllPurposesStatus.ERROR || _ => _Error(vm),
    };
  }
}

class _Error extends StatelessWidget {
  final PreferenceNotificationScreenViewModel vm;

  const _Error(this.vm);

  @override
  Widget build(BuildContext context) {
    return ErrorPage(
      reloadFunction: () => vm.reload,
    );
  }
}

class _SuccessOrLoadingView extends StatelessWidget {
  final PreferenceNotificationScreenViewModel vm;

  const _SuccessOrLoadingView(this.vm);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScrollviewWithScrollbar(
        child: Column(
          children: [
            _InfoText(vm.userMail),
            ParametersToggleItem(
              titre: 'Messagerie',
              description: isRefonteParametresEnabled
                  ? 'Pour chaque message reçu dans la rubrique Messagerie, je reçois une notification.'
                  : 'Pour chaque message reçu sur Mon espace santé, je reçois une notification.',
              value: vm.isMessagerieChecked,
              onToggle: (newValue) => vm.setPreferenceNotification(TypePreferenceNotification.NOTIF_MESSAGE, newValue),
              isLoading: vm.isMessagerieLoading,
            ),
            const Divider(height: 2, color: EnsColors.neutral200),
            ParametersToggleItem(
              titre: 'Documents',
              description: isRefonteParametresEnabled
                  ? 'Pour chaque action réalisée par un professionnel de santé dans la rubrique Documents, je reçois une notification.'
                  : 'Pour chaque document déposé sur Mon espace santé, je reçois une notification.',
              value: vm.isDocumentsChecked,
              onToggle: (newValue) => vm.setPreferenceNotification(TypePreferenceNotification.NOTIF_DOCUMENT, newValue),
              isLoading: vm.isDocumentsLoading,
            ),
            const Divider(height: 2, color: EnsColors.neutral200),
            if (isAgendaEnabled) ...[
              ParametersToggleItem(
                titre: 'Examens médicaux et vaccinations',
                description: isRefonteParametresEnabled
                    ? 'Pour chaque examen et vaccination suggéré par Mon espace santé, je reçois une notification.'
                    : 'Pour chaque examen et vaccination à réaliser, je reçois une notification.',
                value: vm.isExamensEtVaccinationsChecked,
                onToggle: (newValue) => vm.setPreferenceNotification(
                  TypePreferenceNotification.NOTIF_APPOINTMENT,
                  newValue,
                ),
                isLoading: vm.isExamensEtVaccinationsLoading,
              ),
            ],
            const Divider(height: 2, color: EnsColors.neutral200),
            ParametersToggleItem(
              titre: 'Dépistages organisés des cancers',
              description: isRefonteParametresEnabled
                  ? 'Pour chaque dépistage suggéré par Mon espace santé, je reçois une notification.'
                  : 'Pour chaque dépistage à réaliser, je reçois une notification.',
              value: vm.isDepistagesChecked,
              onToggle: (newValue) => vm.setPreferenceNotification(
                TypePreferenceNotification.NOTIF_DEPISTAGE,
                newValue,
              ),
              isLoading: vm.isDepistagesLoading,
            ),
            const Divider(height: 2, color: EnsColors.neutral200),
            if (isCatalogueDeServiceSynchroEnabled) ...[
              ParametersToggleItem(
                titre: 'Services synchronisés',
                description: isRefonteParametresEnabled
                    ? 'Je reçois un e-mail avec la liste de mes services synchronisés tous les 90 jours.'
                        .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal)
                    : 'Tous les 90 jours, je reçois un e-mail avec la liste de mes services synchronisés.',
                value: vm.isServicesSynchronisesChecked,
                onToggle: (newValue) => vm.setPreferenceNotification(
                  TypePreferenceNotification.NOTIF_SYNCHRONIZED_SERVICE,
                  newValue,
                ),
                isLoading: vm.isServicesSynchronisesLoading,
              ),
              const Divider(height: 2, color: EnsColors.neutral200),
            ],
          ],
        ),
      ),
    );
  }
}

class _InfoText extends StatelessWidget {
  final String userMail;

  const _InfoText(this.userMail);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 18),
      child: Text(
        isRefonteParametresEnabled
            ? 'Je choisis les notifications que je souhaite recevoir dans mon application Mon espace santé.'
            : 'Je choisis les notifications que je souhaite recevoir dans Mon espace santé.',
        style: EnsTextStyle.text14_w400_normal_body,
      ),
    );
  }
}
