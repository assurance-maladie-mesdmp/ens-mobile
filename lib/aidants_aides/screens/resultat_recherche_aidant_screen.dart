/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/potentiel_aidant.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/donner_acces_mon_profil_info_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/donner_acces_mon_profil_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/viewmodels/resultat_recherche_aidant_view_model.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_aidants_aides.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';

class ResultatRechercheAidantScreenArguments {
  final PotentielAidant potentielAidant;

  const ResultatRechercheAidantScreenArguments(this.potentielAidant);
}

class ResultatRechercheAidantScreen extends StatelessWidget {
  static const routeName = '/aidants_aides/resultat_recherche_aidant';

  @override
  Widget build(BuildContext context) {
    context.tagAction(TagsAidantsAides.tag_2537_je_verifie_et_envoie_ma_demande_aide);
    final potentielAidant =
        (ModalRoute.of(context)!.settings.arguments! as ResultatRechercheAidantScreenArguments).potentielAidant;

    return Scaffold(
      appBar: EnsAppBarSubLevel(
        title: 'Je vérifie et envoie ma demande',
        action: ActionButton(
          tooltip: 'Informations',
          icon: const EnsSvg(EnsImages.ic_info_circle_outlined),
          onTap: () {
            Navigator.pushNamed(context, DonnerAccesMonProfilInfoScreen.routeName);
          },
        ),
      ),
      body: SafeArea(
        child: StoreConnector<EnsState, ResultatRechercheAidantViewModel>(
          converter: (store) => ResultatRechercheAidantViewModel.from(store, potentielAidant),
          onDidChange: (oldVm, vm) {
            if (oldVm?.sendInvitationStatus == AllPurposesStatus.LOADING &&
                vm.sendInvitationStatus == AllPurposesStatus.SUCCESS) {
              Navigator.popUntil(context, ModalRoute.withName(DonnerAccesMonProfilScreen.routeName));
            }
          },
          builder: (context, vm) {
            return _Body(vm.potentielAidantDisplayModel, vm.sendInvitation, vm.sendInvitationStatus);
          },
        ),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  final PotentielAidantDisplayModel displayModel;
  final AllPurposesStatus sendInvitationStatus;
  final void Function() sendInvitation;

  const _Body(this.displayModel, this.sendInvitation, this.sendInvitationStatus);

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  bool _isSelected = false;
  bool _shouldDisplayWarning = false;

  @override
  Widget build(BuildContext context) {
    const checkBoxErrorMessage = 'Pour continuer, cochez la déclaration.';
    return Stack(
      children: [
        ScrollviewWithScrollbar(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                child: Text(
                  'Je vérifie l’identité de mon proche aidant et j’envoie ma demande.',
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
              ),
              EnsCard(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const EnsSvg(EnsImages.ps_autorise),
                        const SizedBox(width: 8),
                        Text(widget.displayModel.fullName, style: EnsTextStyle.text16_w600_title),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Date de naissance : ${widget.displayModel.birthDate}',
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                    Text(
                      'Numéro de sécurité sociale : ${widget.displayModel.numeroSecu}',
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                    const SizedBox(height: 24),
                    MergeSemantics(
                      child: EnsInkWell(
                        onTap: () => setState(() {
                          _isSelected = !_isSelected;
                          if (_isSelected) {
                            _shouldDisplayWarning = false;
                          }
                        }),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EnsCheckbox(
                              value: _isSelected,
                              borderColor: _shouldDisplayWarning ? EnsColors.error : EnsColors.primary,
                              onChange: (_) => setState(() {
                                _isSelected = !_isSelected;
                                if (_isSelected) {
                                  _shouldDisplayWarning = false;
                                }
                              }),
                            ),
                            const SizedBox(width: 12),
                            Flexible(
                              child: Column(
                                children: [
                                  const Text(
                                    'Je déclare que la personne désignée est mon proche aidant. Elle aura donc accès aux données de mon profil Mon espace santé. ',
                                    style: EnsTextStyle.text14_w600_normal_body,
                                  ),
                                  if (_shouldDisplayWarning) const EnsErrorText(text: checkBoxErrorMessage),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                Expanded(
                  child: EnsButton(
                    label: 'Envoyer ma demande',
                    isLoading: widget.sendInvitationStatus == AllPurposesStatus.LOADING,
                    onTap: () {
                      context.tagAction(TagsAidantsAides.tag_2538_button_aide_envoyer_ma_demande);
                      if (_isSelected) {
                        widget.sendInvitation();
                      } else {
                        setState(() {
                          _shouldDisplayWarning = true;
                          SemanticsService.announce(checkBoxErrorMessage, TextDirection.ltr);
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
