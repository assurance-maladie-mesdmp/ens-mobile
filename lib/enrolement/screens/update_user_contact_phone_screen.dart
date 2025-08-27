/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/screens/validate_otp_user_contact_change_screen.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/parameters/phone/ens_phone_display_model.dart';
import 'package:fr_cnamts_ens/parameters/phone/screens/viewModels/change_phone_screen_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_telephone_with_indicatif_input.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';

class UpdateUserContactPhoneScreen extends StatelessWidget {
  static const routeName = 'enrolement/identite/update-phone';

  final indicatifController = ValueNotifier<Indicatif>(Indicatif.PLUS_33);
  final numberController = TextEditingController();

  UpdateUserContactPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Modifier mon numéro de téléphone',
      ),
      body: GestureDetector(
        excludeFromSemantics: true,
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: StoreConnector<EnsInitialState, ChangePhoneScreenViewModel>(
          converter: (store) => ChangePhoneScreenViewModel.fromEnsInitialState(store),
          distinct: true,
          onWillChange: (oldVm, newVm) {
            if (oldVm?.changeContactStatus != ChangeContactStatus.SUCCESS &&
                newVm.changeContactStatus == ChangeContactStatus.SUCCESS) {
              Navigator.pushNamed(context, ValidateOtpUserContactChangeScreen.routeName);
            }
          },
          onInitialBuild: (vm) {
            context.tagInitialAction(TagsEnrolement.tag_verification_coordonnees_modification_telephone);
          },
          builder: (_, vm) => _Content(
            vm: vm,
            indicatifController: indicatifController,
            numberController: numberController,
          ),
        ),
      ),
    );
  }
}

class _Content extends StatefulWidget {
  final ChangePhoneScreenViewModel vm;
  final ValueNotifier<Indicatif> indicatifController;
  final TextEditingController numberController;

  const _Content({required this.vm, required this.indicatifController, required this.numberController});

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  final _formKey = GlobalKey<FormState>();
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    final phoneDisplayModel = widget.vm.phoneDisplayModel;
    widget.numberController.text = phoneDisplayModel.phoneSuffix;
    widget.indicatifController.value = phoneDisplayModel.indicatif;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: EnsForm(
        formKey: _formKey,
        scrollController: _scrollController,
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            EnsPersistentInfoBox.text(
              'Je saisis mon numéro de téléphone mobile pour recevoir un code à usage unique et valider la modification',
            ),
            const SizedBox(height: 16),
            EnsTelephoneWithIndicatifInput(
              context: context,
              numberController: widget.numberController,
              indicatifController: widget.indicatifController,
            ),
            const SizedBox(height: 24),
            EnsButton(
              label: 'Valider',
              onTap: () => _validateAndSend(widget.vm),
              isLoading: widget.vm.changeContactStatus == ChangeContactStatus.PENDING,
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  void _validateAndSend(ChangePhoneScreenViewModel vm) {
    final validation = _formKey.validate();
    validation.onValid(() {
      vm.sendChangePhone(widget.indicatifController.value, widget.numberController.text);
    });
  }
}
