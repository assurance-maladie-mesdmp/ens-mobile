/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/confidentialite_documents/redux/confidentialite_documents_actions.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/confidentialite_documents/screens/confidentialite_documents_screen_view_model.dart';
import 'package:fr_cnamts_ens/parameters/widgets/acces_aux_donnees_bullet_points.dart';
import 'package:fr_cnamts_ens/parameters/widgets/parameters_toggle_item.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/tags/tags_compte.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

class ConfidentialiteDocumentsScreen extends StatefulWidget {
  static const routeName = '/mon-compte/confidentialite';

  @override
  State<ConfidentialiteDocumentsScreen> createState() => _ConfidentialiteDocumentsScreenState();
}

class _ConfidentialiteDocumentsScreenState extends State<ConfidentialiteDocumentsScreen> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Confidentialité des informations',
      ),
      body: StoreConnector<EnsState, ConfidentialiteDocumentsScreenViewModel>(
        converter: (store) => ConfidentialiteDocumentsScreenViewModel.from(store),
        distinct: true,
        onInitialBuild: (vm) {
          context.tagAction(TagsCompte.tag_446_compte_confidentialite_rubriques);
          if (vm.initialConfidentiality != null) {
            _updateToggleValue(vm.initialConfidentiality!.isVisible);
          }
        },
        onInit: (store) => store.dispatch(const FetchDefaultConfidentialityAction()),
        onWillChange: (oldVm, vm) {
          if (oldVm?.initialConfidentiality == null && vm.initialConfidentiality != null) {
            _updateToggleValue(vm.initialConfidentiality!.isVisible);
          }
        },
        builder: (_, vm) {
          switch (vm.getStatus) {
            case AllPurposesStatus.NOT_LOADED:
            case AllPurposesStatus.LOADING:
              return _Loading();
            case AllPurposesStatus.SUCCESS:
              if (isRefonteParametresEnabled) {
                return _ContentRefonteParametreEnable(
                  vm: vm,
                  isVisible: isVisible,
                  updateToggleValue: _updateToggleValue,
                );
              } else {
                return _Content(vm: vm, isVisible: isVisible, updateToggleValue: _updateToggleValue);
              }
            case AllPurposesStatus.ERROR:
              return ErrorPage(reloadFunction: vm.reload);
          }
        },
      ),
    );
  }

  void _updateToggleValue(bool isVisible) {
    setState(() {
      this.isVisible = isVisible;
    });
  }
}

class _Content extends StatelessWidget {
  final ConfidentialiteDocumentsScreenViewModel vm;
  final bool isVisible;
  final void Function(bool isVisible) updateToggleValue;

  const _Content({required this.vm, required this.isVisible, required this.updateToggleValue});

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              children: [
                const Text(
                  'Je peux rendre visibles ou masquer mes informations aux professionnels de santé. '
                  'Ce paramétrage s\'appliquera également à tous nouveaux documents et informations ajoutés.'
                  ' \n\n Je peux également gérer la confidentialité de chaque document.',
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
                EnsLinkText(
                  textPadding: EdgeInsets.zero,
                  label: 'Changer la confidentialité d\'un document',
                  semanticsHint: 'Navigation vers votre liste de documents.',
                  onTap: () {
                    context.tagAction(TagsCompte.tag_677_link_changer_confidentialite_doc);
                    Navigator.popUntil(context, (route) => route.isFirst);
                    navigateInApp('/documents');
                  },
                ),
              ],
            ),
          ),
          ParametersToggleItem(
            titre: 'Mes informations',
            description: 'Par défaut, je rends visible mes documents, ma rubrique Mon histoire de santé ainsi '
                'que les directives anticipées de mon profil médical aux professionnels de santé.',
            value: isVisible,
            disabled: vm.updateStatus.isLoading(),
            onToggle: (newValue) {
              if (EnsModuleContainer.currentInjector.isGuestMode()) {
                StoreProvider.of<EnsState>(context).dispatch(const DisplaySnackbarAction.unavailableInGuestMode());
              } else {
                updateToggleValue(newValue);
                vm.updateDefaultConfidentiality(newValue);
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: EnsRichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                text: 'À chaque fois qu\'un professionnel de santé ajoute ou modifie un document,'
                    ' je reçois une notification à l\'adresse ',
                style: EnsTextStyle.text14_w400_normal_body,
                children: [
                  TextSpan(text: vm.userMail, style: EnsTextStyle.text14_w700_normal_body),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ContentRefonteParametreEnable extends StatelessWidget {
  final ConfidentialiteDocumentsScreenViewModel vm;
  final bool isVisible;
  final void Function(bool isVisible) updateToggleValue;

  const _ContentRefonteParametreEnable({required this.vm, required this.isVisible, required this.updateToggleValue});

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              children: [
                const Text(
                  'Je peux rendre visible ou masquer certaines informations aux professionnels de santé.',
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
                EnsLinkText(
                  textPadding: EdgeInsets.zero,
                  label: 'Quelles sont ces informations ?',
                  onTap: () => _showInformationBottomSheet(context),
                ),
                const SizedBox(height: 32),
                const Text(
                  'Le paramétrage que je choisis s\'appliquera à tous nouveaux documents et informations ajoutés.',
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
                const SizedBox(height: 32),
                const Text(
                  'Je peux également gérer la confidentialité de chaque document.',
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
                EnsLinkText(
                  textPadding: EdgeInsets.zero,
                  label: 'Comment changer la confidentialité d\'un document ? ',
                  semanticsHint: 'Navigation vers votre liste de documents.',
                  onTap: () {
                    context.tagAction(TagsCompte.tag_677_link_changer_confidentialite_doc);
                    Navigator.popUntil(context, (route) => route.isFirst);
                    navigateInApp('/documents');
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24, right: 24, left: 24),
            child: EnsRichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                text: 'À chaque accès en cas d\'urgence, je recevrai une notification sur l\'adresse e-mail\n',
                style: EnsTextStyle.text14_w400_normal_body,
                children: [
                  TextSpan(text: vm.userMail, style: EnsTextStyle.text14_w700_normal_body),
                ],
              ),
            ),
          ),
          ParametersToggleItem(
            titre: 'Mes informations',
            description: _getDescriptionParametersToggleItem(profilType: vm.profilType),
            value: isVisible,
            disabled: vm.updateStatus.isLoading(),
            onToggle: (newValue) {
              GuestModeHelper.showUnavailableSnackbarIfGuestMode(
                context: context,
                onAuthenticatedMode: () {
                  updateToggleValue(newValue);
                  vm.updateDefaultConfidentiality(newValue);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

String _getDescriptionParametersToggleItem({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL =>
      'Par défaut, je rends visible mes documents, ma rubrique Mon histoire de santé ainsi que les directives anticipées de mon profil médical aux professionnels de santé.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Par défaut, je rends visible ses documents, sa rubrique Histoire de santé ainsi que les directives anticipées de son profil médical aux professionnels de santé.'
  };
}

void _showInformationBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return const InformationBottomSheet(
        title: 'Quelles sont ces informations ?',
        description: Column(
          children: [
            Text(
              'Selon leur profession, les professionnels de santé ont le droit d\'accéder :',
              style: EnsTextStyle.text16_w400_normal_body,
            ),
            AccesAuxDonneesBulletPoints(),
            SizedBox(height: 20),
            Text(
              'Les autres informations de ce profil ne sont pas accessibles par les professionnels de santé.',
              style: EnsTextStyle.text16_w400_normal_body,
            ),
          ],
        ),
      );
    },
  );
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 32),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkeletonBox(width: double.infinity, height: 14),
                  SizedBox(height: 8),
                  SkeletonBox(width: double.infinity, height: 14),
                  SizedBox(height: 8),
                  SkeletonBox(width: double.infinity, height: 14),
                  SizedBox(height: 8),
                  SkeletonBox(width: 200, height: 14),
                  SizedBox(height: 28),
                  SkeletonBox(width: double.infinity, height: 14),
                  SizedBox(height: 8),
                  SkeletonBox(width: 200, height: 14),
                  SizedBox(height: 8),
                  SkeletonBox(width: double.infinity, height: 14),
                ],
              ),
            ),
            SizedBox(height: 24),
            SizedBox(
              height: 160,
              width: double.infinity,
              child: EnsCard(
                borderRadius: 0,
                padding: EdgeInsets.fromLTRB(24, 20, 24, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SkeletonBox(width: 120),
                        Spacer(),
                        SkeletonBox(width: 60),
                      ],
                    ),
                    SizedBox(height: 28),
                    SkeletonBox(width: double.infinity),
                    SizedBox(height: 8),
                    SkeletonBox(width: double.infinity),
                    SizedBox(height: 8),
                    SkeletonBox(width: double.infinity),
                    SizedBox(height: 8),
                    SkeletonBox(width: 160),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkeletonBox(width: double.infinity, height: 14),
                  SizedBox(height: 8),
                  SkeletonBox(width: double.infinity, height: 14),
                  SizedBox(height: 8),
                  SkeletonBox(width: 200, height: 14),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
