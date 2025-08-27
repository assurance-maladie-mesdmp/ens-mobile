/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_agenda.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class EditRendezVousNotesScreen extends StatelessWidget {
  static const routeName = '/editRendezVousNotes';
  final _notesController = TextEditingController();

  EditRendezVousNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    _notesController.text = ModalRoute.of(context)!.settings.arguments! as String;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: const EnsAppBarSubLevel(title: 'Note personnelle'),
        body: ScrollviewWithScrollbar(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CountedTextInput.withBorders(
                label: 'Note personnelle (facultatif)',
                controller: _notesController,
                maxCharacters: 1000,
                maxLines: 7,
                validatorCallback: (value) => limitCharactersFieldValidator(
                  value: value,
                  maxCharacters: 1000,
                  errorMessage: 'la note personnelle est limitée à 1000 caractères',
                ),
                textInputAction: TextInputAction.newline,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Row(
                  children: [
                    Expanded(
                      child: EnsButton(
                        label: 'Valider',
                        onTap: () {
                          context.tagAction(TagsAgenda.tag_935_button_valider_note_rdv);
                          Navigator.pop(context, _notesController.text);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
