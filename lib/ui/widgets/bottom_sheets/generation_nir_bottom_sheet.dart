/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date_validator.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_radio_button.dart';

class GenerationNirBottomSheet extends StatefulWidget {
  const GenerationNirBottomSheet({super.key});

  @override
  _GenerationNirBottomSheetState createState() => _GenerationNirBottomSheetState();
}

class _GenerationNirBottomSheetState extends State<GenerationNirBottomSheet> {
  String? _selectedGender;
  final _birthDateController = ValueNotifier<DateTime?>(null);

  void _generate() {
    final sex = _selectedGender ?? (Random().nextBool() ? 'H' : 'F');
    final birthDate = _birthDateController.value ??
        DateTime(1950 + Random().nextInt(74), Random().nextInt(12) + 1, Random().nextInt(28) + 1);

    final nir = _generateNir(sex, birthDate);
    final numeroSerie = _generateNumeroSerie();
    StoreProvider.of<EnsInitialState>(context).dispatch(
      GenerateCarteVitaleAction(
        nir: nir,
        numeroSerie: numeroSerie,
        birthDate: birthDate,
      ),
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) => EnsBottomSheet(
        content: [
          const Text(
            'Générer un NIR et remplir le formulaire',
            style: EnsTextStyle.text26_w400_normal_title,
            textAlign: TextAlign.center,
          ),
          const Text('Paramétres facultatifs ', style: EnsTextStyle.text16_w600_title),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EnsInputDate(
                  label: 'Date de naissance',
                  controller: _birthDateController,
                  context: context,
                  validator: (value) => EnsInputDateValidator().validate(_birthDateController.value),
                  lastDate: DateTime.now(),
                  startWithKeyboardInput: true,
                ),
                const SizedBox(height: 12),
                const Text('Sexe', style: EnsTextStyle.text16_w600_title),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: EnsRadioButton.card(
                        label: 'Homme',
                        groupValue: _selectedGender,
                        padding: const EdgeInsets.all(24),
                        labelAlignment: CrossAxisAlignment.start,
                        value: 'H',
                        onSelected: () {
                          setState(() {
                            _selectedGender = 'H';
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: EnsRadioButton.card(
                        label: 'Femme',
                        groupValue: _selectedGender,
                        padding: const EdgeInsets.all(24),
                        labelAlignment: CrossAxisAlignment.start,
                        value: 'F',
                        onSelected: () {
                          setState(() {
                            _selectedGender = 'F';
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: EnsButton(
                  label: 'Générer',
                  color: EnsColors.primary,
                  size: EnsButtonSize.MEDIUM,
                  onTap: _generate,
                ),
              ),
            ],
          ),
        ],
      );
}

String _generateNir(String sex, DateTime birthDate) {
  final sexCode = sex == 'H' ? '1' : '2';
  final year = birthDate.year.toString().substring(2, 4);
  final month = birthDate.month.toString().padLeft(2, '0');

  final departmentOptions =
      List.generate(95, (i) => (i + 1).toString().padLeft(2, '0')) + ['971', '972', '973', '974', '975', '976'];
  final department = (departmentOptions..shuffle()).first;

  final commune = Random().nextInt(990).toString().padLeft(3, '0');
  final randomSerial = Random().nextInt(999).toString().padLeft(3, '0');
  final baseNir = '$sexCode$year$month$department$commune$randomSerial';
  final key = (97 - (int.parse(baseNir) % 97)).toString().padLeft(2, '0');

  return '$baseNir$key';
}

String _generateNumeroSerie() {
  return (Random().nextInt(900000000) + 100000000).toString() + (Random().nextInt(9000) + 1000).toString();
}
