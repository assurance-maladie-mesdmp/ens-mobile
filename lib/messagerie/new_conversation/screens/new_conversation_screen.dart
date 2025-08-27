/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/messagerie_view_helper.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/viewmodels/send_message_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/redux/messagerie_redux.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/select_destinataire_screen.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/viewmodels/new_conversation_screen_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/viewmodels/select_recipient_form_field_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/add_attachment_file_button.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/conversation_reply_attachments_widget.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/inactif_contact_message_card_widget.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/send_button.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/sending_email_widget.dart';
import 'package:fr_cnamts_ens/tags/tags_messagerie.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/utils/snackbar_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/multi_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_textarea_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

class NewConversationScreen extends StatefulWidget {
  static const routeName = '/newConversation';

  @override
  State<NewConversationScreen> createState() => _NewConversationScreenState();
}

class _NewConversationScreenState extends State<NewConversationScreen> {
  final _contentTextInputController = TextEditingController();
  final _subjectTextInputController = TextEditingController();
  final _destinataireController = ValueNotifier<ContactItemDisplayModel?>(null);
  final _scrollController = ScrollController();
  final _formKey = GlobalKey<FormState>();
  final _destinataireWidgetKey = GlobalKey<_DestinataireWidgetState>();

  @override
  void dispose() {
    _contentTextInputController.dispose();
    _subjectTextInputController.dispose();
    _destinataireController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final conversationArguments = ModalRoute.of(context)!.settings.arguments as ConversationArguments?;
    final conversationId = conversationArguments?.conversationId;
    final destinataire = conversationArguments?.destinataire;
    if (destinataire != null && _destinataireController.value == null) {
      _destinataireController.value = destinataire;
    }

    return StoreConnector<EnsState, NewConversationScreenViewModel>(
      converter: (store) => NewConversationScreenViewModel.from(store, conversationArguments?.docToShareId),
      distinct: true,
      onInit: (store) {
        store.dispatch(InitNewConversationAction(conversationId: conversationId));
      },
      onWillChange: (oldVm, vm) {
        if (vm.sendMessageStatus.isSuccess()) {
          Navigator.pop(context);
        }
        final destinataire = _destinataireController.value;
        if (oldVm?.createContactStatus.isNotSuccess() == true &&
            vm.createContactStatus.isSuccess() &&
            destinataire != null) {
          _destinataireController.value = ContactItemDisplayModel(
            id: vm.createContactId ?? destinataire.id,
            name: destinataire.name,
            mail: destinataire.mail,
            adresse: destinataire.adresse,
            isAPharmacie: destinataire.isAPharmacie,
          );
        }
      },
      builder: (_, vm) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: EnsAppBarSubLevel(
            title: '',
            action: vm.sendMessageStatus.isNotLoading() && vm.screenStatus.isSuccess()
                ? SendButton(
                    onTap: () {
                      _validateAndSend(context, vm);
                      context.tagAction(TagsMessagerie.tag_659_button_envoyer_nouveau_message);
                    },
                  )
                : null,
            automaticallyImplyLeading: _canPop(vm),
          ),
          body: vm.sendMessageStatus.isLoading()
              ? const SendingEmailWidget()
              : vm.sendMessageStatus.isNotLoaded() || vm.sendMessageStatus.isError()
                  ? _Content(
                      contentTextInputController: _contentTextInputController,
                      subjectTextInputController: _subjectTextInputController,
                      destinataireController: _destinataireController,
                      destinataireWidgetKey: _destinataireWidgetKey,
                      formKey: _formKey,
                      scrollController: _scrollController,
                      vm: vm,
                      docToShareId: conversationArguments?.docToShareId,
                      conversationId: conversationId,
                      canPop: _canPop,
                    )
                  : const SizedBox(),
        );
      },
    );
  }

  bool _canPop(NewConversationScreenViewModel vm) {
    return EnsModuleContainer.currentInjector.isGuestMode() ||
        (vm.sendMessageStatus.isNotLoading() && vm.screenStatus.isNotLoading());
  }

  void _validateAndSend(BuildContext context, NewConversationScreenViewModel vm) {
    final validation = _formKey.validate(additionalCondition: _destinataireController.value != null);
    validation.onValid(() {
      final sendingMessageContent = MessagerieViewHelper.buildSendingMessageContent(
        initialMessage: _contentTextInputController.text,
        addingMessage: vm.messageSignatureByAidant,
      );
      vm.sendMessage(
        recipientId: _destinataireController.value!.id,
        subject: _subjectTextInputController.text,
        content: sendingMessageContent,
        isSuggestedHealthcareStructure: _destinataireController.value?.mail != null,
        docToShareId: (ModalRoute.of(context)!.settings.arguments as ConversationArguments?)?.docToShareId,
      );
    }).onInvalid(() {
      _destinataireWidgetKey.currentState?.setState(() {});
    });
  }
}

class _Content extends StatelessWidget {
  final TextEditingController contentTextInputController;
  final TextEditingController subjectTextInputController;
  final ValueNotifier<ContactItemDisplayModel?> destinataireController;
  final GlobalKey<FormState> formKey;
  final ScrollController scrollController;
  final GlobalKey<_DestinataireWidgetState> destinataireWidgetKey;
  final NewConversationScreenViewModel vm;
  final String? conversationId;
  final String? docToShareId;
  final bool Function(NewConversationScreenViewModel) canPop;

  const _Content({
    required this.contentTextInputController,
    required this.subjectTextInputController,
    required this.destinataireController,
    required this.destinataireWidgetKey,
    required this.formKey,
    required this.scrollController,
    required this.vm,
    required this.conversationId,
    required this.docToShareId,
    required this.canPop,
  });

  @override
  Widget build(BuildContext context) {
    if (conversationId != null && vm.screenStatus.isLoading()) {
      return const _Loading();
    } else if (vm.screenStatus.isError()) {
      return ErrorPage(reloadFunction: () => vm.refreshNewConversation(conversationId));
    } else {
      return EnsPopScope.shouldNotPop(
        onPopInvoked: (navigator) async {
          if (canPop(vm)) {
            if (contentTextInputController.text.isNotEmpty ||
                subjectTextInputController.text.isNotEmpty ||
                _hasAttachment() ||
                destinataireController.value != null) {
              final shouldPop = await _openQuitActionBottomSheet(context, vm);
              if (shouldPop == true) {
                navigator.pop();
              }
            } else {
              vm.deleteDraft(shouldDisplaySnackBar: false);
              navigator.pop();
            }
          }
        },
        child: LayoutBuilder(
          builder: (_, constraints) {
            return EnsForm(
              formKey: formKey,
              scrollController: scrollController,
              padding: EdgeInsets.zero,
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (vm.inactifPsContactNameList.isNotEmpty)
                        InactifContactMessageCard(inactifPsContactsNames: vm.inactifPsContactNameList),
                      const Padding(
                        padding: EdgeInsets.all(24),
                        child: Text('Nouveau message', style: EnsTextStyle.text20_w400_normal_title),
                      ),
                      Flexible(
                        child: _Form(
                          subjectTextInputController: subjectTextInputController,
                          contentTextInputController: contentTextInputController,
                          destinataireController: destinataireController,
                          destinataireWidgetKey: destinataireWidgetKey,
                          vm: vm,
                          conversationId: conversationId,
                          docToShareId: docToShareId,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
  }

  bool _hasAttachment() {
    final fileAttachment = vm.newMessageInitialValues?.fileAttachmentDm;
    return (fileAttachment != null && fileAttachment.isNotEmpty) || (docToShareId != null && docToShareId!.isNotEmpty);
  }

  Future<bool?> _openQuitActionBottomSheet(BuildContext context, NewConversationScreenViewModel vm) {
    return NavigationUtils.showEnsMultiAction(
      context,
      'Enregistrer le brouillon ?',
      'En cliquant sur supprimer, ce brouillon sera définitivement perdu.',
      [
        EnsMultiActionOption(
          buttonTitle: 'Enregistrer le brouillon',
          buttonClickHandler: () {
            vm.saveDraft(
              draft: MessageContent(
                content: contentTextInputController.text,
                subject: subjectTextInputController.text,
                recipientId: destinataireController.value?.id,
              ),
            );
            clearSnackbar(context);
            Navigator.pop(context, true);
          },
          isPrimaryAction: true,
        ),
        EnsMultiActionOption(
          buttonTitle: 'Supprimer le brouillon',
          buttonClickHandler: () {
            vm.deleteDraft();
            clearSnackbar(context);
            Navigator.pop(context, true);
          },
          isPrimaryAction: false,
        ),
      ],
    );
  }
}

class _Form extends StatefulWidget {
  final TextEditingController subjectTextInputController;
  final TextEditingController contentTextInputController;
  final GlobalKey<_DestinataireWidgetState> destinataireWidgetKey;
  final ValueNotifier<ContactItemDisplayModel?> destinataireController;
  final NewConversationScreenViewModel vm;
  final String? conversationId;
  final String? docToShareId;

  const _Form({
    required this.subjectTextInputController,
    required this.contentTextInputController,
    required this.destinataireController,
    required this.destinataireWidgetKey,
    required this.vm,
    required this.conversationId,
    required this.docToShareId,
  });

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  late MessagerieViewHelper messagerieViewHelper;

  @override
  void initState() {
    messagerieViewHelper = MessagerieViewHelper(
      contentTextInputController: widget.contentTextInputController,
      recipientController: widget.destinataireController,
      subjectTextInputController: widget.subjectTextInputController,
      profilType: widget.vm.profilType,
    );
    if (widget.conversationId == null) {
      widget.vm.saveDraft(
        draft: MessageContent(
          content: widget.contentTextInputController.text,
          subject: widget.subjectTextInputController.text,
          recipientId: widget.destinataireController.value?.id,
          docToShareId: widget.docToShareId,
        ),
        shouldDisplaySnackBar: false,
      );
    }
    if (widget.vm.newMessageInitialValues != null) {
      widget.subjectTextInputController.text = widget.vm.newMessageInitialValues!.subject;
      widget.contentTextInputController.text = widget.vm.newMessageInitialValues!.content;
      widget.destinataireController.value ??= widget.vm.newMessageInitialValues!.recipient;
    }

    widget.destinataireController.addListener(() {
      final contact = widget.destinataireController.value;
      if (contact != null) {
        widget.vm.saveDraft(
          draft: MessageContent(
            content: widget.contentTextInputController.text,
            subject: widget.subjectTextInputController.text,
            recipientId: widget.destinataireController.value?.id,
            docToShareId: widget.docToShareId,
          ),
          shouldDisplaySnackBar: false,
          shouldCheckInactifsPsContactsStatus: true,
        );
        if (contact.isAPharmacie == true) {
          widget.vm.onPharmacieAddedToRecipients();
        }
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: EnsColors.light,
      child: Material(
        color: Colors.transparent,
        child: Column(
          children: [
            _DestinataireWidget(key: widget.destinataireWidgetKey, controller: widget.destinataireController),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const Divider(height: 2, thickness: 1, color: EnsColors.neutral200),
                    _SubjectFormField(controller: widget.subjectTextInputController),
                    const Divider(height: 2, thickness: 1, color: EnsColors.neutral200),
                    ConversationReplyAttachmentsWidget(
                      fileAttachmentDisplayModels: widget.vm.newMessageInitialValues?.fileAttachmentDm ?? [],
                      onDeleteAttachment: (attachmentIdToDelete) {
                        widget.vm.deleteAttachment(
                          attachmentId: attachmentIdToDelete,
                          content: widget.contentTextInputController.text,
                          subject: widget.subjectTextInputController.text,
                          recipientId: widget.destinataireController.value?.id,
                        );
                      },
                    ),
                    AddAttachmentFileButton(
                      label: 'Ajouter une pièce jointe',
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        messagerieViewHelper.openAddAttachmentBottomSheet(context, widget.vm);
                      },
                    ),
                    const Divider(height: 2, thickness: 1, color: EnsColors.neutral200),
                    const SizedBox(height: 16),
                    Expanded(
                      child: Column(
                        children: [
                          EnsTextareaInput(
                            hintText: 'Rédigez votre message',
                            controller: widget.contentTextInputController,
                            validatorCallback: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Ajouter du contenu';
                              }
                              return null;
                            },
                            autofocus: false,
                            minLine: 7,
                            maxLine: 200,
                          ),
                          if (widget.vm.messageSignatureByAidant != null)
                            Text(widget.vm.messageSignatureByAidant!, style: EnsTextStyle.text14_w700_normal_title),
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
    );
  }
}

class _DestinataireWidget extends StatefulWidget {
  final ValueNotifier<ContactItemDisplayModel?> controller;

  const _DestinataireWidget({super.key, required this.controller});

  @override
  State<_DestinataireWidget> createState() => _DestinataireWidgetState();
}

class _DestinataireWidgetState extends State<_DestinataireWidget> {
  bool isErrorField = false;

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    isErrorField = widget.controller.value == null;
  }

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      focusColor: Colors.white,
      onTap: () async {
        context.tagAction(TagsMessagerie.tag_836_button_liste_destinataire);
        final result = await Navigator.pushNamed(
          context,
          SelectDestinataireScreen.routeName,
          arguments: widget.controller.value,
        ) as ContactItemDisplayModel?;

        setState(() {
          widget.controller.value = result;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isErrorField)
              const EnsErrorText(
                text: 'Ajouter un destinataire',
                padding: EdgeInsets.only(bottom: 8),
              ),
            Row(
              children: [
                const Text(
                  'À :',
                  style: EnsTextStyle.text14_w400_normal_body,
                  semanticsLabel: 'Choix du destinataire',
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: widget.controller.value != null
                      ? Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: EnsColors.neutral200,
                            ),
                            child: Text(
                              widget.controller.value!.name,
                              style: EnsTextStyle.text16_w400_normal_title,
                            ),
                          ),
                        )
                      : const SizedBox(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.all(24),
          child: Text('Nouveau message', style: EnsTextStyle.text20_w400_normal_title),
        ),
        Expanded(
          child: ColoredBox(
            color: EnsColors.light,
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkeletonBox(width: 45),
                  EnsDivider(paddingTop: 16, paddingBottom: 16),
                  SkeletonBox(width: 45),
                  EnsDivider(paddingTop: 16, paddingBottom: 16),
                  Row(
                    children: [
                      SkeletonCircle(radius: 20),
                      SizedBox(width: 16),
                      SkeletonBox(width: 120),
                    ],
                  ),
                  EnsDivider(paddingTop: 16, paddingBottom: 16),
                  SkeletonBox(width: 225),
                  SizedBox(height: 12),
                  SkeletonBox(width: 120),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SubjectFormField extends FormField<String> {
  final TextEditingController controller;

  _SubjectFormField({required this.controller})
      : super(
          initialValue: controller.text,
          validator: noHtmlTagsValidator,
          builder: (FormFieldState<String> state) {
            return MergeSemantics(
              child: Column(
                children: [
                  if (state.hasError && state.errorText!.isNotEmpty)
                    EnsErrorText(
                      text: state.errorText!,
                      padding: const EdgeInsets.only(top: 8),
                    ),
                  Row(
                    children: [
                      const Text('Sujet :', style: EnsTextStyle.text14_w400_normal_body),
                      const SizedBox(width: 16),
                      Expanded(
                        child: TextFormField(
                          textCapitalization: TextCapitalization.sentences,
                          controller: controller,
                          cursorColor: EnsColors.primary,
                          decoration: const InputDecoration(border: InputBorder.none),
                          style: EnsTextStyle.text16_w400_normal_title,
                          onChanged: (value) {
                            state.didChange(value);
                            state.validate();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
}

class ConversationArguments {
  final String? conversationId;
  final String? docToShareId;
  final ContactItemDisplayModel? destinataire;

  ConversationArguments({this.conversationId, this.docToShareId, this.destinataire});
}
