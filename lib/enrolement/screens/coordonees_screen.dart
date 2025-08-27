/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_contact_code_provisoire_enum.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/enrolement/screens/code_provisoire_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/session_expiree_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/viewmodels/coordonnees_screen_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:redux/redux.dart';

class CoordonneesScreen extends StatelessWidget {
  static const routeName = '/enrolement/coordonnees';

  final void Function(String) onNextCall;

  const CoordonneesScreen(this.onNextCall);

  @override
  Widget build(BuildContext context) {
    return _Body(onNextCall);
  }
}

class _Body extends StatefulWidget {
  final void Function(String) onNextCall;

  const _Body(this.onNextCall);

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  TypeContactCodeProvisoire? choixContact;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsInitialState, CoordonneesScreenViewModel>(
      converter: (Store<EnsInitialState> store) => CoordonneesScreenViewModel(store),
      onInitialBuild: (vm) {
        context.tagInitialAction(TagsEnrolement.tag_2307_enrolement_identification_choix_mode_reception);
        setState(() {
          choixContact = vm.userContact.typeContactCodeProvisoire;
        });
      },
      onDidChange: (oldVm, vm) {
        if (oldVm?.sendCodeStatus == AllPurposesEnrolementStatus.LOADING) {
          if (vm.sendCodeStatus == AllPurposesEnrolementStatus.SUCCESS) {
            widget.onNextCall(CodeProvisoireFormScreen.routeName);
          } else if (vm.sendCodeStatus == AllPurposesEnrolementStatus.SESSION_TIMED_OUT) {
            Navigator.pushNamed(context, SessionExpireeScreen.routeName);
          }
        }
      },
      builder: (_, vm) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mes coordonnées', style: EnsTextStyle.text20_w400_normal_title),
                    SizedBox(height: 4),
                    Text(
                      'Je choisis le mode de réception du code provisoire pour confirmer mon identité.',
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: vm.userContact.telephone != null,
                child: _ContactCard(
                  label: 'Par SMS',
                  description: 'Je reçois mon code ${vm.userContact.telephone}',
                  svgPath: EnsImages.telephone_sms,
                  isSelected: choixContact == TypeContactCodeProvisoire.TELEPHONE,
                  onSelect: () {
                    setState(() {
                      choixContact = TypeContactCodeProvisoire.TELEPHONE;
                    });
                  },
                ),
              ),
              Visibility(
                visible: vm.userContact.email != null && vm.userContact.telephone != null,
                child: const SizedBox(height: 16),
              ),
              Visibility(
                visible: vm.userContact.email != null,
                child: _ContactCard(
                  label: 'Par e-mail',
                  description: 'Je reçois mon code sur ${vm.userContact.email}',
                  svgPath: EnsImages.message_envoye,
                  isSelected: choixContact == TypeContactCodeProvisoire.E_MAIL,
                  onSelect: () {
                    setState(() {
                      choixContact = TypeContactCodeProvisoire.E_MAIL;
                    });
                  },
                ),
              ),
              const SizedBox(height: 24),
              EnsInkWell(
                onTap: () {
                  _showBottomSheet(context);
                },
                child: const Text(
                  'Mes coordonnées sont incorrectes ?',
                  style: EnsTextStyle.text14_w700_normal_primary_underline,
                ),
              ),
              const Spacer(),
              EnsButton(
                label: 'Envoyer le code',
                isLoading: vm.sendCodeStatus == AllPurposesEnrolementStatus.LOADING,
                isEnrolement: true,
                onTap: () {
                  if (choixContact != null) {
                    vm.sendCode(choixContact!);
                  }
                },
              ),
              const SizedBox(height: 54),
            ],
          ),
        );
      },
    );
  }
}

class _ContactCard extends StatelessWidget {
  final String label;
  final String description;
  final String svgPath;
  final bool isSelected;
  final void Function() onSelect;

  const _ContactCard({
    required this.label,
    required this.description,
    required this.svgPath,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return EnsCard(
      onTap: () => onSelect(),
      border: isSelected ? Border.all(color: EnsColors.primary, width: 2) : null,
      borderRadius: 16,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          EnsCheckbox(
            value: isSelected,
            onChange: (_) => onSelect(),
          ),
          const SizedBox(width: 16),
          EnsSvg(svgPath, width: 80, height: 80),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: EnsTextStyle.text16_w700_normal_title,
                ),
                Text(
                  description,
                  style: EnsTextStyle.text12_w400_normal_body,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _showBottomSheet(BuildContext context) {
  context.tagInitialAction(TagsEnrolement.tag_2308_enrolement_dashboard_erreur_coordonnees);
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return EnsIllustrationBottomSheet(
        title: 'Mes coordonnées sont incorrectes ?',
        subtitle:
            'Je peux modifier mes coordonnées depuis mon compte en ligne de ma caisse d\'Assurance Maladie ou en contactant directement ma caisse d\'Assurance Maladie.',
        asset: EnsImages.coordonnees_de_contact,
        positiveButtonLabel: 'J\'ai compris',
        additionalContentEnd: [
          EnsLinkText(
            onTap: () {
              context.tagInitialAction(TagsEnrolement.tag_2309_button_erreur_coordonnees_retour_accueil);
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            label: 'Revenir à l\'accueil',
            textStyle: EnsTextStyle.text16_w700_primary_underline,
            textAlign: TextAlign.center,
            alignment: AlignmentDirectional.center,
          ),
        ],
      );
    },
  );
}
