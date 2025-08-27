/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/editing_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/screens/document_confidentiality_helper.dart';
import 'package:fr_cnamts_ens/documents/widgets/viewmodels/edit_document_form_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/confidentialite_documents/redux/confidentialite_documents_actions.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/champs_obligatoires_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_drop_down.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date_validator.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_radio_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

class EditDocumentForm extends StatefulWidget {
  final EditingDocument editingDocument;
  final EnsDocumentCategorie? forcedCategory;
  final void Function(DocumentEdition) onValidate;
  final String? dossierId;
  final bool isUpdatingDocument;

  const EditDocumentForm({
    super.key,
    required this.editingDocument,
    this.forcedCategory,
    required this.onValidate,
    this.dossierId,
    required this.isUpdatingDocument,
  });

  @override
  State<EditDocumentForm> createState() => _EditDocumentFormState();
}

class _EditDocumentFormState extends State<EditDocumentForm> {
  final privacyInfosUrl = EnsModuleContainer.currentInjector.getUrlsConfig().privacyInfosUrl;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ShakeWidgetState> _shakeKey = GlobalKey<ShakeWidgetState>();
  final ScrollController _scrollController = ScrollController();

  late TextEditingController _docNameController;
  late ValueNotifier<DateTime> _docDateController;
  late ValueNotifier<EnsDocumentCategorie?> _docTypeController;
  late KindOfConfidentiality _docConfidentiality;
  late FocusNode _documentLabelFocus;

  @override
  void initState() {
    _docNameController = TextEditingController(text: widget.editingDocument.title);
    _docDateController = ValueNotifier<DateTime>(widget.editingDocument.date ?? DateTime.now());
    _docTypeController = ValueNotifier<EnsDocumentCategorie?>(widget.editingDocument.categorie);
    _docConfidentiality =
        DocumentConfidentialityHelper.getKindOfConfidentiality(widget.editingDocument.confidentialites);
    if (widget.forcedCategory != null) {
      _docTypeController.value = widget.forcedCategory;
    }
    _documentLabelFocus = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _documentLabelFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, EditDocumentFormViewModel>(
      converter: (store) => EditDocumentFormViewModel.from(store),
      distinct: true,
      onInitialBuild: (_) {
        if (widget.editingDocument.id == null) {
          context.tagAction(TagsDocuments.tag_826_ajouter_un_document_formulaire);
        }
      },
      onInit: (store) => store.dispatch(const FetchDefaultConfidentialityAction()),
      builder: (BuildContext context, EditDocumentFormViewModel vm) {
        _docConfidentiality =
            _docConfidentiality == KindOfConfidentiality.UNKNOWN ? vm.defaultConfidentiality : _docConfidentiality;
        return EnsPopScope.shouldNotPop(
          onPopInvoked: (navigator) async {
            if (widget.editingDocument.id == null) {
              context.tagAction(TagsDocuments.tag_170_popin_ajouter_un_document_quitter);
            }
            if (_docNameController.text.isEmpty) {
              if (widget.editingDocument.id == null) {
                context.tagAction(TagsDocuments.tag_171_button_ajouter_un_document_quitter_valider);
              }
              navigator.pop();
            } else {
              final shouldPop = await NavigationUtils.onWillPop(
                context,
                'Quitter la page ?',
                'En quittant cette page, toutes vos modifications seront perdues.',
                'Quitter',
                positiveButtonHandler: () {
                  if (widget.editingDocument.id == null) {
                    context.tagAction(TagsDocuments.tag_171_button_ajouter_un_document_quitter_valider);
                  }
                },
                negativeButtonHandler: () {
                  if (widget.editingDocument.id == null) {
                    context.tagAction(TagsDocuments.tag_172_button_ajouter_un_document_quitter_annuler);
                  }
                },
              );
              if (shouldPop) {
                navigator.pop();
              }
            }
          },
          child: _Content(
            nameMaxLength: widget.editingDocument.updatableTitle ? 50 : -1,
            vm: vm,
            validateButtonDisplayedLabel: widget.editingDocument.id == null ? 'Ajouter le document' : 'Valider',
            scrollController: _scrollController,
            formKey: _formKey,
            shakeKey: _shakeKey,
            editingDocument: widget.editingDocument,
            forcedCategory: widget.forcedCategory,
            docNameController: _docNameController,
            docConfidentiality: _docConfidentiality,
            docDateController: _docDateController,
            docTypeController: _docTypeController,
            onValidate: _validateAndSend,
            onConfidentialityChange: (confidentiality) {
              setState(() => _docConfidentiality = confidentiality);
            },
            documentLabelFocus: _documentLabelFocus,
            isUpdatingDocument: widget.isUpdatingDocument,
          ),
        );
      },
    );
  }

  void _validateAndSend() {
    final validation = _formKey.validate(additionalCondition: _docConfidentiality != KindOfConfidentiality.UNKNOWN);
    validation.onValid(() {
      final DocumentEdition newDoc;
      if (widget.editingDocument.id == null) {
        newDoc = DocumentEditionCreation(
          name: _docNameController.text,
          documentDate: _docDateController.value,
          category: _docTypeController.value!,
          confidentialites: [_docConfidentiality],
          uploadDate: DateTime.now(),
          ensFileContent: widget.editingDocument.content!,
          dossierId: widget.editingDocument.dossierId ?? widget.dossierId,
        );
      } else {
        newDoc = DocumentEditionPropertiesUpdate(
          id: widget.editingDocument.id!,
          name: _docNameController.text,
          documentDate: _docDateController.value,
          category: _docTypeController.value!,
          confidentialites: [_docConfidentiality],
          uploadDate: DateTime.now(),
          dossierId: widget.editingDocument.dossierId ?? widget.dossierId,
        );
      }
      widget.onValidate.call(newDoc);
    }).onInvalid(() {
      _shakeKey.currentState?.shake();
      final isAccessibilityEnabled = WidgetsBinding.instance.accessibilityFeatures.accessibleNavigation;
      if (!isAccessibilityEnabled) {
        Future.delayed(const Duration(milliseconds: 300)).then(
          (_) => _scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
          ),
        );
      } else {
        _documentLabelFocus.requestFocus();
      }
    });
  }
}

class _Content extends StatelessWidget {
  final int nameMaxLength;
  final ScrollController scrollController;
  final GlobalKey formKey;
  final GlobalKey shakeKey;
  final EditDocumentFormViewModel vm;
  final String validateButtonDisplayedLabel;
  final EditingDocument editingDocument;
  final EnsDocumentCategorie? forcedCategory;
  final TextEditingController docNameController;
  final KindOfConfidentiality docConfidentiality;
  final ValueNotifier<DateTime> docDateController;
  final ValueNotifier<EnsDocumentCategorie?> docTypeController;
  final void Function() onValidate;
  final void Function(KindOfConfidentiality) onConfidentialityChange;
  final FocusNode documentLabelFocus;
  final bool isUpdatingDocument;

  const _Content({
    required this.nameMaxLength,
    required this.scrollController,
    required this.formKey,
    required this.shakeKey,
    required this.vm,
    required this.validateButtonDisplayedLabel,
    required this.editingDocument,
    required this.forcedCategory,
    required this.docNameController,
    required this.docConfidentiality,
    required this.docDateController,
    required this.docTypeController,
    required this.onValidate,
    required this.onConfidentialityChange,
    required this.documentLabelFocus,
    required this.isUpdatingDocument,
  });

  @override
  Widget build(BuildContext context) {
    final privacyInfosUrl = EnsModuleContainer.currentInjector.getUrlsConfig().privacyInfosUrl;
    return SafeArea(
      child: EnsForm(
        formKey: formKey,
        shakeKey: shakeKey,
        scrollController: scrollController,
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 8),
            ChampsObligatoiresFormTextWidget(
              displayFullText: false,
              focusNode: documentLabelFocus,
            ),
            const SizedBox(height: 24),
            CountedTextInput.withBorders(
              enabled: editingDocument.updatableTitle,
              label: 'Nom du document',
              description: 'Ex. : Ordonnance de soins n°4',
              controller: docNameController,
              validatorCallback: (value) => textFieldValidator(
                value: value,
                fieldLabel: 'le nom du document',
                maxLength: nameMaxLength,
              ),
              maxCharacters: nameMaxLength,
            ),
            const SizedBox(height: 24),
            EnsInputDate(
              enabled: forcedCategory == null && editingDocument.updatableCreationDate,
              label: 'Date du document ou date du jour',
              hint: 'jj/mm/aaaa',
              controller: docDateController,
              context: context,
              lastDate: DateTime.now(),
              validator: (_) => EnsInputDateValidator().validate(docDateController.value),
            ),
            const SizedBox(height: 24),
            EnsDropDown<EnsDocumentCategorie>(
              enabled: forcedCategory == null && editingDocument.updatableCategory,
              context: context,
              borderRadius: BorderRadius.circular(4),
              label: 'Catégorie du document',
              hint: '- Sélectionner une catégorie -',
              controller: docTypeController,
              items: EnsDocumentCategorie.values
                  .where(
                    (categorie) =>
                        categorie != EnsDocumentCategorie.unknown &&
                        categorie != EnsDocumentCategorie.syntheseMedicale &&
                        categorie != EnsDocumentCategorie.questionnaireSante &&
                        categorie != EnsDocumentCategorie.directivesAnticipees,
                  )
                  .toList(),
              itemFormater: (EnsDocumentCategorie? categorie) => categorie != null ? categorie.label : '',
              validator: (value) => requiredFieldValidator(value, errorText: 'Sélectionner la catégorie du document'),
            ),
            if (!isUpdatingDocument) ...[
              const SizedBox(height: 24),
              const Text('Confidentialité', style: EnsTextStyle.text16_w600_title),
              const SizedBox(height: 16),
              if (!vm.defaultConfidentialityGetStatus.isNotLoadedOrLoading())
                RadioButtons(
                  confidentiality: docConfidentiality,
                  vm: vm,
                  documentId: editingDocument.id,
                  onTap: onConfidentialityChange,
                )
              else
                Column(
                  children: [
                    EnsConfidentialityContainerSkeleton(),
                    const SizedBox(height: 16),
                    EnsConfidentialityContainerSkeleton(),
                  ],
                ),
              EnsExternalLink.withRedirection(
                linkUrl: privacyInfosUrl,
                linkText: 'Qui a accès à mes documents ?',
                extraPadding: const EdgeInsets.symmetric(vertical: 16),
              ),
            ],
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: EnsButton(
                    label: validateButtonDisplayedLabel,
                    onTap: () {
                      if (editingDocument.id == null) {
                        context.tagAction(TagsDocuments.tag_173_button_validation_ajout_document);
                      }
                      onValidate();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RadioButtons extends StatefulWidget {
  final KindOfConfidentiality confidentiality;
  final EditDocumentFormViewModel? vm;
  final String? documentId;
  final Function(KindOfConfidentiality)? onTap;

  const RadioButtons({required this.confidentiality, this.vm, this.documentId, this.onTap});

  @override
  State<RadioButtons> createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  late KindOfConfidentiality _docConfidentiality;

  @override
  void initState() {
    super.initState();
    _docConfidentiality = widget.confidentiality;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EnsRadioButton.card(
          label: 'Ce document est visible par les professionnels de santé autorisés à accéder à vos documents.',
          groupValue: _docConfidentiality,
          onSelected: () {
            if (widget.vm != null) {
              _tagAddDocumentVisibleConfidentialityClick(context, KindOfConfidentiality.PATIENT_AND_PS);
            }
            widget.onTap?.call(KindOfConfidentiality.PATIENT_AND_PS);
            setState(() {
              _docConfidentiality = KindOfConfidentiality.PATIENT_AND_PS;
            });
          },
          value: KindOfConfidentiality.PATIENT_AND_PS,
        ),
        const SizedBox(height: 12),
        EnsRadioButton.card(
          label:
              'Ce document est masqué aux professionnels de santé. Il reste visible par la personne qui l\'a déposé et par vous-même.',
          groupValue: _docConfidentiality,
          onSelected: () {
            if (widget.vm != null) {
              _tagAddDocumentVisibleConfidentialityClick(context, KindOfConfidentiality.PATIENT_ONLY);
            }
            widget.onTap?.call(KindOfConfidentiality.PATIENT_ONLY);
            setState(() {
              _docConfidentiality = KindOfConfidentiality.PATIENT_ONLY;
            });
          },
          value: KindOfConfidentiality.PATIENT_ONLY,
        ),
      ],
    );
  }

  void _tagAddDocumentVisibleConfidentialityClick(BuildContext context, KindOfConfidentiality confidentialite) {
    if (widget.documentId == null) {
      if (confidentialite == KindOfConfidentiality.PATIENT_AND_PS) {
        context.tagAction(TagsDocuments.tag_735_button_ajouter_un_document_confidentialite_visible);
      } else if (confidentialite == KindOfConfidentiality.PATIENT_ONLY) {
        context.tagAction(TagsDocuments.tag_736_button_ajouter_un_document_confidentialite_masquee);
      }
    }
  }
}

class EnsConfidentialityContainerSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 2,
          color: Colors.transparent,
        ),
        boxShadow: const [
          BoxShadow(color: EnsColors.neutral200, blurRadius: 16),
        ],
      ),
      child: MergeSemantics(
        child: EnsInkWell(
          color: EnsColors.light,
          borderRadius: BorderRadius.circular(8),
          onTap: null,
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonCircle(radius: 20),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 4),
                    SkeletonBox(width: 160),
                    SizedBox(height: 20),
                    SkeletonBox(width: 120),
                    SizedBox(height: 8),
                    SkeletonBox(width: 72),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
