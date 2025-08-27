/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_contact_code_provisoire_enum.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/enrolement/screens/activation_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/code_provisoire_error_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/demande_coordonees_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/identite_form_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/representant_legal_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/session_expiree_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/viewmodels/code_provisoire_form_screen_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/enrolement_header.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_code_provisoire_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:redux/redux.dart';

class CodeProvisoireFormScreen extends StatelessWidget {
  static const routeName = '/enrolement/code_provisoire';

  final void Function(String) onNextCall;
  final void Function(String) onCall;
  final void Function(int) changeStepperMaxValue;

  const CodeProvisoireFormScreen({required this.onNextCall, required this.onCall, required this.changeStepperMaxValue});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsInitialState, CodeProvisoireFormScreenViewModel>(
      onInitialBuild: (vm) {
        return switch (vm.typeContactCodeProvisoire) {
          TypeContactCodeProvisoire.COURRIER => context.tagInitialAction(
              TagsEnrolement.tag_2313_enrolement_identification_code_provisoire_manque_coordonnees,
            ),
          _ => context.tagInitialAction(TagsEnrolement.tag_2314_enrolement_identification_saisie_code_provisoire),
        };
      },
      onWillChange: (oldVm, vm) {
        if (oldVm?.status == CodeProvisoireStatus.LOADING) {
          if (vm.status == CodeProvisoireStatus.SUCCESS) {
            if (vm.isOdAccountActivated) {
              changeStepperMaxValue(7);
            }
            vm.isEnrolementAd ? onNextCall(RepresentantLegalScreen.routeName) : onNextCall(ActivationScreen.routeName);
          } else if (vm.status == CodeProvisoireStatus.CODE_EXPIRED ||
              vm.status == CodeProvisoireStatus.CODE_ALREADY_USED) {
            Navigator.pushNamed(context, CodeProvisoireErrorScreen.routeName).then(
              (value) => onCall(IdentiteFormScreen.routeName),
            );
          } else if (vm.status == CodeProvisoireStatus.SESSION_TIMED_OUT) {
            Navigator.pushNamed(context, SessionExpireeScreen.routeName);
          }
        }
      },
      converter: (Store<EnsInitialState> store) => CodeProvisoireFormScreenViewModel(store),
      builder: (context, vm) {
        return _Body(vm);
      },
    );
  }
}

class _Body extends StatelessWidget {
  final CodeProvisoireFormScreenViewModel _vm;

  const _Body(this._vm);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        EnrolementHeader(
          title: 'Mon code provisoire',
          subtitle: _vm.description,
          pictoPath: EnsImages.code_provisoire,
        ),
        _Form(_vm),
      ],
    );
  }
}

class _Form extends StatefulWidget {
  final CodeProvisoireFormScreenViewModel _vm;

  const _Form(this._vm);

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final _scrollController = ScrollController();
  final _codeProvisoireController = TextEditingController();

  @override
  void dispose() {
    _codeProvisoireController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ColoredBox(
            color: EnsColors.light,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: EnsForm(
                formKey: _formKey,
                shakeKey: _shakeKey,
                scrollController: _scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    EnsCodeProvisoireInput(controller: _codeProvisoireController),
                    if (widget._vm.typeContactCodeProvisoire == TypeContactCodeProvisoire.COURRIER)
                      EnsLinkText(
                        textAlign: TextAlign.start,
                        label: 'Je n\’ai pas de code provisoire',
                        onTap: () {
                          context.tagInitialAction(TagsEnrolement.tag_2310_enrolement_dashboard_manque_coordonnees);
                          Navigator.pushNamed(context, DemandeCoordonneesScreen.routeName);
                        },
                        textStyle: EnsTextStyle.text14_w700_normal_primary_underline,
                        textPadding: const EdgeInsets.only(
                          top: 12,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
            child: EnsButton(
              label: 'Valider',
              isEnrolement: true,
              isLoading: widget._vm.status == CodeProvisoireStatus.LOADING,
              onTap: () {
                _validateAndSend(widget._vm);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _validateAndSend(CodeProvisoireFormScreenViewModel vm) {
    final validation = _formKey.validate();
    validation.onValid(() {
      vm.sendForm(_codeProvisoireController.value.text);
    }).onInvalid(() {
      _shakeKey.currentState?.shake();
    });
  }
}
