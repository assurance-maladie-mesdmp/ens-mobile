/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_helper.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/new_conversation_screen.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/viewmodels/select_recipient_form_field_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professionnels_de_sante_name_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/etablissements_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/acteur_de_sante_tag_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/called_es_or_ps_detail_screen_from.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/etablissement_de_sante_detail_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/widget/add_ps_or_es_button.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/widget/address_item.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/widget/loading_details_screen.dart';
import 'package:fr_cnamts_ens/search_es/domain/models/etablissement_de_sante.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_pml.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';

class EtablissementDeSanteDetailScreen extends StatelessWidget {
  static const routeName = '/medical/profil/healthcare-entity/detail';

  const EtablissementDeSanteDetailScreen();

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments! as EtablissementDeSanteArgument;

    return StoreConnector<EnsState, EtablissementDeSanteDetailViewModel>(
      converter: (store) => EtablissementDeSanteDetailViewModel.from(store, arg),
      distinct: true,
      onInit: (store) {
        store.dispatch(FetchEtablissementDeSanteFromIdNatDetailsAction(arg.idNat));
        store.dispatch(FetchEtablissementsDeSanteAction());
      },
      onInitialBuild: (vm) {
        ActeurDeSanteTagHelper.tagPage(context, fromScreen: vm.fromScreen, isEs: true);
      },
      onWillChange: (oldVm, vm) {
        if (oldVm?.viewStatus.isNotError() == true && vm.viewStatus.isError()) {
          Navigator.pop(context);
        }
      },
      builder: (_, vm) => Scaffold(
        appBar: EnsAppBarSubLevel(
          title: 'Détail',
          action: !vm.isEsListLoading && vm.isEsPatientAdded ? _DeleteButton(vm) : null,
        ),
        body: _Content(vm),
      ),
    );
  }
}

class _DeleteButton extends StatelessWidget {
  final EtablissementDeSanteDetailViewModel vm;

  const _DeleteButton(this.vm);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: IconButton(
        onPressed: () {
          _showDeleteConfirmationBottomSheet(context, vm);
        },
        tooltip: 'Supprimer ce professionnel de santé',
        icon: const EnsSvg(EnsImages.ic_trash, color: EnsColors.title),
        splashRadius: 28,
      ),
    );
  }

  void _showDeleteConfirmationBottomSheet(BuildContext context, EtablissementDeSanteDetailViewModel vm) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Supprimer ce professionnel de santé ?',
          content: null,
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () {
            ActeurDeSanteTagHelper.tagValidateRemoveEtablissementDeSanteClick(context, vm.fromScreen);
            vm.removeEtablissementDeSante();
            Navigator.pop(context);
          },
        );
      },
    );
  }
}

class _Content extends StatelessWidget {
  final EtablissementDeSanteDetailViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    if (vm.viewStatus == ScreenStatus.SUCCESS) {
      return _SuccessEtablissementDeSante(etablissementDeSante: vm.es!, vm: vm);
    } else {
      return const LoadingDetailsScreen();
    }
  }
}

class EtablissementDeSanteArgument {
  final String idNat;
  final CalledESorPSDetailScreenFrom calledFrom;

  EtablissementDeSanteArgument(this.idNat, this.calledFrom);
}

class _SuccessEtablissementDeSante extends StatelessWidget {
  final EtablissementDeSante etablissementDeSante;
  final EtablissementDeSanteDetailViewModel vm;

  const _SuccessEtablissementDeSante({required this.etablissementDeSante, required this.vm});

  @override
  Widget build(BuildContext context) {
    final formattedEsName =
        ProfessionnelsDeSanteInformationHelper.capitalizeAsNames(etablissementDeSante.nameWithAlias);
    return ScrollviewWithScrollbar(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  formattedEsName,
                  style: EnsTextStyle.text24_w400_normal_title,
                ),
                const SizedBox(height: 8),
                if (etablissementDeSante.activity != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(etablissementDeSante.activity!, style: EnsTextStyle.text14_w600_normal_body),
                  ),
                if (vm.isEsListLoading) ...[
                  const SizedBox(height: 16),
                  const SkeletonBox(height: 32, width: double.infinity, radius: 4),
                ] else if (!vm.isEsPatientAdded && etablissementDeSante.active) ...[
                  const SizedBox(height: 16),
                  AddPsOrEsButton(
                    isLoading: vm.isAddEsLoading,
                    onTap: () {
                      ActeurDeSanteTagHelper.tagAddEtablissementDeSanteClick(context, vm.fromScreen);
                      vm.addEtablissementDeSante();
                    },
                  ),
                ],
              ],
            ),
          ),
          if (!etablissementDeSante.active) ...[
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
              child: EnsPersistentInfoBox.text('Ce professionnel de santé n\'est plus en activité'),
            ),
          ],
          ColoredBox(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (etablissementDeSante.address != null)
                  const Padding(
                    padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
                    child: Text('Coordonnées', style: EnsTextStyle.text20_w400_normal_body),
                  ),
                AddressItem(
                  address: etablissementDeSante.address!,
                  active: etablissementDeSante.active,
                  fromScreen: vm.fromScreen,
                  isEs: true,
                ),
                if (etablissementDeSante.isContactable &&
                    vm.fromScreen != CalledESorPSDetailScreenFrom.MESSAGERIE_SCREEN)
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: EnsButtonSecondary(
                        label: 'Envoyer un message',
                        onTap: () {
                          context.tagAction(TagsPml.tag_1026_button_ps_envoi_message);
                          InterruptionServiceHelper.showSnackbarOnInterruption(
                            context,
                            interruptionServiceSnackbarMessage: vm.interruptionServiceSnackbarMessage,
                            onNotInterrompu: () {
                              vm.createContact();
                              final newConversationScreenArg = ConversationArguments(
                                destinataire: ContactItemDisplayModel.fromEnsEtablissementDeSante(etablissementDeSante),
                              );
                              if (vm.fromScreen == CalledESorPSDetailScreenFrom.MESSAGERIE_SCREEN) {
                                Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  NewConversationScreen.routeName,
                                  (route) => route.isFirst,
                                  arguments: newConversationScreenArg,
                                );
                              } else {
                                Navigator.pushNamed(
                                  context,
                                  NewConversationScreen.routeName,
                                  arguments: newConversationScreenArg,
                                );
                              }
                            },
                          );
                        },
                      ),
                    ),
                  )
                else if (vm.isEsPatientAdded && vm.fromScreen != CalledESorPSDetailScreenFrom.MESSAGERIE_SCREEN)
                  const Padding(
                    padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
                    child: Text(
                      'Pour contacter ce professionnel depuis la messagerie de Mon espace santé, il doit d’abord m’écrire, et je pourrai ensuite lui répondre.',
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
