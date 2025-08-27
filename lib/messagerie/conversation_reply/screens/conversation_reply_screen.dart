/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_content/screens/message_item.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/messagerie_view_helper.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/viewmodels/conversation_reply_screen_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/viewmodels/send_message_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/redux/messagerie_redux.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/add_attachment_file_button.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/conversation_reply_attachments_widget.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/inactif_contact_message_card_widget.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/message_header_widget.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/send_button.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/sending_email_widget.dart';
import 'package:fr_cnamts_ens/tags/tags_messagerie.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/utils/snackbar_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/multi_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_textarea_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';
import 'package:fr_cnamts_ens/utils/opacity_utils.dart';

class ConversationReplyScreen extends StatefulWidget {
  static const routeName = '/conversationReply';

  const ConversationReplyScreen({super.key});

  @override
  _ConversationReplyScreenState createState() => _ConversationReplyScreenState();
}

class _ConversationReplyScreenState extends State<ConversationReplyScreen> {
  final messagerieViewModelHelper = EnsModuleContainer.currentInjector.getMessagerieViewModelHelper();
  final fileHelper = EnsModuleContainer.currentInjector.getFileHelper();

  final _formKey = GlobalKey<FormState>();
  final _contentTextInputController = TextEditingController();
  final ScrollController _scrollController = ScrollController(initialScrollOffset: 0);
  double _appBarTitleOpacity = 0.0;
  double _conversationTitleOpacity = 1.0;
  bool _replyAll = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateOpacityListener);
  }

  @override
  void dispose() {
    _contentTextInputController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _updateOpacityListener() {
    setState(() {
      final opacityResult = OpacityUtils.computeTitleOpacity(_scrollController.offset, 50);
      _appBarTitleOpacity = opacityResult.title;
      _conversationTitleOpacity = opacityResult.bodyTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    _replyAll = ModalRoute.of(context)!.settings.arguments! as bool;

    return StoreConnector<EnsState, ConversationReplyScreenViewModel>(
      converter: (store) => ConversationReplyScreenViewModel(store, messagerieViewModelHelper, _replyAll),
      distinct: true,
      onInit: (store) => store.dispatch(const InitSendMessageAction()),
      onInitialBuild: (vm) {
        vm.tagAction(TagsMessagerie.tag_messagerie_reponse);
        if (vm.replyContent == null || vm.replyContent == '') {
          vm.saveDraft();
        }
      },
      onDidChange: (_, vm) {
        if (vm.sendStatus.isLoading()) {
          vm.tagAction(TagsMessagerie.tag_messagerie_reponse_envoi);
        }
      },
      onWillChange: (_, vm) => _onWillChange(vm),
      builder: (_, vm) => EnsPopScope.shouldNotPop(
        onPopInvoked: (navigator) async {
          vm.tagAction(TagsMessagerie.tag_messagerie_reponse_envoi_back);
          if (vm.shouldPromptDraftBottomSheet(_contentTextInputController.text)) {
            final shouldPop = await _openQuitActionBottomSheet(context, vm);
            if (shouldPop == true) {
              navigator.pop();
            }
          } else {
            vm.deleteDraft();
            navigator.pop();
          }
        },
        child: Scaffold(
          appBar: EnsAppBarSubLevel(
            title: 'Répondre à : ${vm.replySubject}',
            centerTitle: false,
            opacity: _appBarTitleOpacity,
            action: vm.sendStatus.isNotLoading() && !EnsModuleContainer.currentInjector.isGuestMode()
                ? SendButton(
                    onTap: () {
                      vm.tagAction(TagsMessagerie.tag_button_envoyer_message);
                      _validateAndSend(context, vm);
                    },
                  )
                : null,
            excludeSemantics: true,
          ),
          body: _Body(
            vm: vm,
            formKey: _formKey,
            contentTextInputController: _contentTextInputController,
            scrollController: _scrollController,
            conversationTitleOpacity: _conversationTitleOpacity,
          ),
        ),
      ),
    );
  }

  Future<bool?> _openQuitActionBottomSheet(BuildContext context, ConversationReplyScreenViewModel vm) {
    vm.tagAction(TagsMessagerie.tag_popin_messagerie_reponse_quitter);
    return NavigationUtils.showEnsMultiAction(
      context,
      'Enregistrer le brouillon ?',
      'En cliquant sur supprimer, ce brouillon sera définitivement perdu.',
      [
        EnsMultiActionOption(
          buttonTitle: 'Enregistrer le brouillon',
          buttonClickHandler: () {
            vm.tagAction(TagsMessagerie.tag_button_messagerie_reponse_quitter_enregistrer);
            vm.saveDraft(draft: MessageContent(content: _contentTextInputController.text));
            Navigator.pop(context, true);
          },
          isPrimaryAction: true,
        ),
        EnsMultiActionOption(
          buttonTitle: 'Supprimer le brouillon',
          buttonClickHandler: () {
            vm.tagAction(TagsMessagerie.tag_button_messagerie_reponse_quitter_supprimer);
            vm.deleteDraft();
            Navigator.pop(context, true);
          },
          isPrimaryAction: false,
        ),
      ],
    );
  }

  void _onWillChange(ConversationReplyScreenViewModel vm) {
    if (vm.sendStatus.isSuccess()) {
      vm.finalizeSendMessage();
      Navigator.pop(context);
    }
  }

  void _validateAndSend(BuildContext context, ConversationReplyScreenViewModel vm) {
    final validation = _formKey.validate();
    validation.onValid(() {
      final sendingMessageContent = MessagerieViewHelper.buildSendingMessageContent(
        initialMessage: _contentTextInputController.text,
        addingMessage: vm.messageSignatureByAidant,
      );
      vm.sendMessage(sendingMessageContent, _replyAll);
    }).onInvalid(() {
      showSnackbarError(context, 'Ajouter du contenu au message pour l\'envoyer');
    });
  }
}

class _ReplyForm extends StatefulWidget {
  final TextEditingController contentTextInputController;
  final ScrollController scrollController;
  final ConversationReplyScreenViewModel vm;
  final double conversationTitleOpacity;
  final GlobalKey formKey;

  const _ReplyForm({
    required this.contentTextInputController,
    required this.scrollController,
    required this.vm,
    required this.conversationTitleOpacity,
    required this.formKey,
  });

  @override
  State<_ReplyForm> createState() => _ReplyFormState();
}

class _ReplyFormState extends State<_ReplyForm> {
  bool _initialized = false;
  late MessagerieViewHelper messagerieViewHelper;

  @override
  void initState() {
    super.initState();
    messagerieViewHelper = MessagerieViewHelper(
      contentTextInputController: widget.contentTextInputController,
      tagOnTakePicture: () => widget.vm.tagAction(TagsMessagerie.tag_button_type_dajoutPJ_camera),
      tagOnChoseFile: () => widget.vm.tagAction(TagsMessagerie.tag_button_type_dajout_fichier),
      tagOnChosePictureInGallery: () => widget.vm.tagAction(TagsMessagerie.tag_button_type_dajout_album),
      tagOnBottomSheetOpens: () => widget.vm.tagAction(TagsMessagerie.tag_popin_type_dajout_PJ),
      profilType: widget.vm.profilType,
    );
  }

  @override
  Widget build(BuildContext context) {
    final vm = widget.vm;
    _initializeForm(vm);
    return ScrollviewWithScrollbar(
      controller: widget.scrollController,
      child: Column(
        children: [
          if (vm.inactifPsContactNamesList.isNotEmpty)
            InactifContactMessageCard(inactifPsContactsNames: vm.inactifPsContactNamesList),
          _ScreenTitle(
            title: 'Répondre à : ${vm.replySubject ?? ''}',
            conversationTitleOpacity: widget.conversationTitleOpacity,
          ),
          ColoredBox(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
              child: Column(
                children: [
                  MessageHeaderWidget(
                    fromContact: vm.from,
                    dateLabel: vm.replyDateLabel ?? '',
                    toRecipients: vm.recipients ?? [],
                  ),
                  ConversationReplyAttachmentsWidget(
                    fileAttachmentDisplayModels: vm.replyFileAttachmentDM ?? [],
                    onDeleteAttachment: (attachmentIdToDelete) {
                      vm.tagAction(TagsMessagerie.tag_button_reponse_supprimer_PJ);
                      vm.deleteAttachment(
                        attachmentId: attachmentIdToDelete,
                        content: widget.contentTextInputController.text,
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  AddAttachmentFileButton(
                    label: 'Ajouter une pièce jointe',
                    onTap: () {
                      vm.tagAction(TagsMessagerie.tag_button_reponse_ajouter_PJ);
                      FocusScope.of(context).unfocus();
                      messagerieViewHelper.openAddAttachmentBottomSheet(context, vm);
                    },
                  ),
                  const SizedBox(height: 16),
                  const Divider(height: 2, color: EnsColors.neutral200),
                  const SizedBox(height: 24),
                  EnsForm(
                    formKey: widget.formKey,
                    scrollController: widget.scrollController,
                    child: Column(
                      children: [
                        EnsTextareaInput(
                          controller: widget.contentTextInputController,
                          validatorCallback: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Ajouter du contenu';
                            }
                            return null;
                          },
                          autofocus: true,
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
          const SizedBox(height: 16),
          _MessageList(viewModel: vm),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  void _initializeForm(ConversationReplyScreenViewModel vm) {
    if (!_initialized) {
      widget.contentTextInputController.text = vm.replyContent ?? '';
      _initialized = true;
    }
  }
}

class _ScreenTitle extends StatelessWidget {
  final String title;
  final double conversationTitleOpacity;

  const _ScreenTitle({required this.title, required this.conversationTitleOpacity});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: conversationTitleOpacity,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 16),
        child: Wrap(
          children: [
            Text(title, style: EnsTextStyle.text20_w600_normal_title),
            Container(),
          ],
        ),
      ),
    );
  }
}

class _MessageList extends StatelessWidget {
  final ConversationReplyScreenViewModel viewModel;

  const _MessageList({required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return ListViewWithScrollbar.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: viewModel.messagesHistory?.length ?? 0,
      itemBuilder: (context, index) => MessageItem(messageItemDisplayModel: viewModel.messagesHistory![index]),
    );
  }
}

class _Error extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: ErrorPage(
        reloadFunction: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final ConversationReplyScreenViewModel vm;
  final GlobalKey<FormState> formKey;
  final TextEditingController contentTextInputController;
  final ScrollController scrollController;
  final double conversationTitleOpacity;

  const _Body({
    required this.vm,
    required this.formKey,
    required this.contentTextInputController,
    required this.scrollController,
    required this.conversationTitleOpacity,
  });

  @override
  Widget build(BuildContext context) {
    switch (vm.screenStatus) {
      case ConversationReplyScreenStatus.SUCCESS:
        switch (vm.sendStatus) {
          case AllPurposesStatus.LOADING:
            return const SendingEmailWidget();
          case AllPurposesStatus.NOT_LOADED:
          case AllPurposesStatus.SUCCESS:
          case AllPurposesStatus.ERROR:
            return _ReplyForm(
              contentTextInputController: contentTextInputController,
              scrollController: scrollController,
              vm: vm,
              conversationTitleOpacity: conversationTitleOpacity,
              formKey: formKey,
            );
        }
      case ConversationReplyScreenStatus.ERROR:
        return _Error();
    }
  }
}
