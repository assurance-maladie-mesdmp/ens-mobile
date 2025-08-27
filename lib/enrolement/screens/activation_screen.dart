/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/enrolement/screens/profil_active_confirmation_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/session_expiree_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/update_coordonnees_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/viewmodels/activation_screen_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/enrolement_header.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class ActivationScreen extends StatefulWidget {
  static const String routeName = '/enrolement/activation';

  final void Function(String) onNextCall;

  const ActivationScreen(this.onNextCall);

  @override
  State<ActivationScreen> createState() => _ActivationScreenState();
}

class _ActivationScreenState extends State<ActivationScreen> {
  bool _isSelected = false;
  bool _shouldDisplayWarning = false;

  @override
  Widget build(BuildContext context) {
    const checkboxUncheckedErrorText = 'Veuillez cocher l\'autorisation';
    return StoreConnector<EnsInitialState, ActivationScreenViewModel>(
      converter: (store) => ActivationScreenViewModel.from(store),
      onInit: (_) {
        context.tagInitialAction(TagsEnrolement.tag_2315_enrolement_decision_acceptation);
      },
      onDidChange: (oldVm, vm) {
        if (oldVm?.acceptCGUStatus == AllPurposesEnrolementStatus.LOADING) {
          if (vm.acceptCGUStatus == AllPurposesEnrolementStatus.SUCCESS) {
            if (vm.isOdAccountActivated) {
              Navigator.pushNamed(context, ProfilActiveConfirmationScreen.routeName);
            } else {
              widget.onNextCall(UpdateCoordonneesScreen.routeName);
            }
          } else if (vm.acceptCGUStatus == AllPurposesEnrolementStatus.SESSION_TIMED_OUT) {
            Navigator.pushNamed(context, SessionExpireeScreen.routeName);
          }
        }
      },
      builder: (_, vm) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            EnrolementHeader(
              title: 'Activation',
              subtitle: vm.isEnrolementAd ? 'J\'active Mon espace santé pour ' : 'J\'active Mon espace santé.',
              pictoPath: EnsImages.cgus,
              subtitleMotGras: vm.isEnrolementAd ? vm.firstName : null,
            ),
            Material(
              color: EnsColors.light,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      vm.isEnrolementAd
                          ? 'J\'active le profil Mon espace santé de ${vm.fullName} pour accéder à son dossier médical et ses documents de santé.'
                          : 'J\'active Mon espace santé pour accéder à mon dossier médical et mes documents de santé.',
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                    const SizedBox(height: 24),
                    EnsExternalLink.withRedirection(
                      linkText: 'En savoir plus sur les Conditions Générales d’Utilisation',
                      linkUrl: EnsModuleContainer.commonInjector!.getUrlsConfig().cguUrl,
                      onTap: () {
                        context.tagInitialAction(TagsEnrolement.tag_2316_button_conditions_generales_utilisation);
                      },
                    ),
                    const SizedBox(height: 24),
                    EnsExternalLink.withRedirection(
                      linkText: 'En savoir plus sur la Politique de protection des données personnelles',
                      linkUrl: EnsModuleContainer.commonInjector!.getUrlsConfig().privacyInfosUrl,
                      onTap: () {
                        context.tagInitialAction(TagsEnrolement.tag_2317_button_politique_confidentialite);
                      },
                    ),
                    const SizedBox(height: 24),
                    const EnsDivider(),
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
                                    'J\'accepte les Conditions Générales d’Utilisation et la Politique de protection des données personnelles.',
                                    style: EnsTextStyle.text14_w600_normal_body,
                                  ),
                                  if (_shouldDisplayWarning) const EnsErrorText(text: checkboxUncheckedErrorText),
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
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 36),
              child: EnsButton(
                label: 'Valider',
                isLoading: vm.acceptCGUStatus == AllPurposesEnrolementStatus.LOADING,
                isEnrolement: true,
                onTap: () {
                  if (_isSelected) {
                    vm.sendCGUAcceptation();
                  } else {
                    setState(() {
                      _shouldDisplayWarning = true;
                      SemanticsService.announce(checkboxUncheckedErrorText, TextDirection.ltr);
                    });
                  }
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
