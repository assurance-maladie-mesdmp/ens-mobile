/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/update_confidentialite_document_screen_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_radio_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';

class UpdateConfidentialiteDocumentScreen extends StatelessWidget {
  static const routeName = '/document/update-confidentiality';

  const UpdateConfidentialiteDocumentScreen();

  @override
  Widget build(BuildContext context) {
    final String docId = ModalRoute.of(context)!.settings.arguments! as String;
    return StoreConnector<EnsState, UpdateConfidentialiteDocumentScreenViewModel>(
      converter: (store) => UpdateConfidentialiteDocumentScreenViewModel(store, docId),
      distinct: true,
      onInitialBuild: (vm) {
        vm.tagAction(TagsDocuments.tag_737_popin_modifier_confidentialite);
      },
      builder: (_, vm) => _ConfidentialitySelection(vm),
    );
  }
}

class _ConfidentialitySelection extends StatefulWidget {
  final UpdateConfidentialiteDocumentScreenViewModel vm;

  const _ConfidentialitySelection(this.vm);

  @override
  State<_ConfidentialitySelection> createState() => _ConfidentialitySelectionState();
}

class _ConfidentialitySelectionState extends State<_ConfidentialitySelection> {
  final privacyInfosUrl = EnsModuleContainer.currentInjector.getUrlsConfig().privacyInfosUrl;
  late KindOfConfidentiality _selectedConfidentiality;

  @override
  void initState() {
    _selectedConfidentiality = widget.vm.defaultValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Gérer la confidentialité'),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ScrollviewWithScrollbar(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Confidentialité', style: EnsTextStyle.text14_w600_normal_body),
                    const SizedBox(height: 12),
                    EnsRadioButton.card(
                      value: KindOfConfidentiality.PATIENT_AND_PS,
                      groupValue: _selectedConfidentiality,
                      label:
                          'Ce document est visible par les professionnels de santé autorisés à accéder à vos documents.',
                      onSelected: () {
                        if (_selectedConfidentiality != KindOfConfidentiality.PATIENT_AND_PS) {
                          widget.vm
                              .tagAction(TagsDocuments.tag_738_button_modifier_un_document_confidentialite_visible);
                          setState(() => _selectedConfidentiality = KindOfConfidentiality.PATIENT_AND_PS);
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    EnsRadioButton.card(
                      value: KindOfConfidentiality.PATIENT_ONLY,
                      groupValue: _selectedConfidentiality,
                      label:
                          'Ce document est masqué aux professionnels de santé. Il reste visible par la personne qui l\'a déposé et par vous-même.',
                      onSelected: () {
                        if (_selectedConfidentiality != KindOfConfidentiality.PATIENT_ONLY) {
                          widget.vm
                              .tagAction(TagsDocuments.tag_739_button_modifier_un_document_confidentialite_masquee);
                          setState(() => _selectedConfidentiality = KindOfConfidentiality.PATIENT_ONLY);
                        }
                      },
                    ),
                    const SizedBox(height: 8),
                    EnsExternalLink.withRedirection(
                      linkUrl: privacyInfosUrl,
                      linkText: 'Qui peut consulter ces documents ?',
                      extraPadding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: DeviceUtils.isLargeDevice(context)
                ? const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 64)
                : const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: SizedBox(
              width: double.infinity,
              child: EnsButton(
                label: 'Valider',
                onTap: () {
                  widget.vm.updateConfidentialites(_selectedConfidentiality);
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
