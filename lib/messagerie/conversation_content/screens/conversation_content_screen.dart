/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/bottom_navigation_tabs_screen.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_content/screens/conversation_content_skeleton.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_content/screens/message_item.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_content/screens/viewmodels/conversation_content_screen_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/conversation_reply_screen.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_content.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/redux/messagerie_redux.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/inactif_contact_message_card_widget.dart';
import 'package:fr_cnamts_ens/tags/tags_messagerie.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/utils/pull_to_refresh_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/list_extensions.dart';
import 'package:fr_cnamts_ens/utils/opacity_utils.dart';

class ConversationContentScreenArguments extends Equatable {
  final String? conversationId;
  final String? messageId;

  const ConversationContentScreenArguments({this.conversationId, this.messageId});

  @override
  List<Object?> get props => [conversationId, messageId];
}

class ConversationContentScreen extends StatefulWidget {
  static const routeName = '/conversationContent';

  @override
  _ConversationContentScreenState createState() => _ConversationContentScreenState();
}

class _ConversationContentScreenState extends State<ConversationContentScreen> {
  final messagerieViewModelHelper = EnsModuleContainer.currentInjector.getMessagerieViewModelHelper();

  final ScrollController _scrollController = ScrollController(initialScrollOffset: 0);
  double _appBarTitleOpacity = 0.0;
  double _conversationTitleOpacity = 1.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateOpacityListener);
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
    final conversationArguments = ModalRoute.of(context)!.settings.arguments! as ConversationContentScreenArguments;
    return StoreConnector<EnsState, ConversationContentScreenViewModel>(
      converter: (store) => ConversationContentScreenViewModel.from(store, messagerieViewModelHelper),
      onInit: (store) {
        store.dispatch(
          FetchConversationContentAction(
            conversationId: conversationArguments.conversationId,
            messageId: conversationArguments.messageId,
            autoRetry: true,
          ),
        );
      },
      onInitialBuild: (vm) {
        context.tagAction(TagsMessagerie.tag_messagerie_message);
      },
      distinct: true,
      onDidChange: (oldVm, vm) {
        vm.dispatchAcknowledgeIfNeeded();
        if (oldVm?.conversationContentStatus != ConversationContentStatus.SUCCESS &&
            vm.conversationContentStatus == ConversationContentStatus.SUCCESS) {
          final contactName = vm.acteurDeSanteContactNameForTrace;
          if (contactName != null) {
            context.traceAction(EnsTraceType.CONSULT_MESSAGE, params: {'nomPrenomPS': contactName});
          }
        }
        if (oldVm?.suppressionStatus.isLoading() == true && vm.suppressionStatus.isSuccess()) {
          Navigator.pop(context);
        }
      },
      builder: (_, vm) => Scaffold(
        appBar: EnsAppBarSubLevel(
          title: vm.subject ?? '',
          opacity: _appBarTitleOpacity,
          action: vm.conversationContentStatus == ConversationContentStatus.SUCCESS
              ? ActionButton(
                  icon: const EnsSvg(EnsImages.ic_trash, width: 24, height: 24, color: EnsColors.title),
                  tooltip: 'Supprimer la conversation',
                  onTap: () {
                    if (vm.profilType.isAide) {
                      vm.displayUnavailableAsAidantSnackbar();
                    } else {
                      _showDeleteConfirmationBottomSheet(context, vm);
                    }
                  },
                )
              : null,
          excludeSemantics: true,
        ),
        body: _Body(vm, _scrollController, _conversationTitleOpacity),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: vm.withReplyFloatingButton ? _FloatingButton(vm) : null,
      ),
    );
  }

  void _showDeleteConfirmationBottomSheet(BuildContext context, ConversationContentScreenViewModel vm) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) => ConfirmationBottomSheet(
        title: 'Supprimer cette conversation ?',
        content: const ConfirmationBottomSheetDefaultTextContent(
          'Une fois supprimée, vous ne pourrez plus accéder aux messages de cette conversation et aux documents associés.',
        ),
        positiveButtonLabel: 'Supprimer',
        positiveButtonHandler: () {
          vm.deleteConversation();
        },
      ),
    );
  }
}

class _ConversationBlockedInfo extends StatelessWidget {
  final String conversationFinalizedBy;

  const _ConversationBlockedInfo(this.conversationFinalizedBy);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: EnsColors.neutral200,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$conversationFinalizedBy a mis fin à vos échanges.',
              style: EnsTextStyle.text14_w600_normal_title,
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () => _showInfoBottomSheet(context),
              child: const Row(
                children: [
                  Expanded(
                    child: Text(
                      'En savoir plus sur les échanges avec vos professionnels de santé',
                      style: EnsTextStyle.text14_w700_normal_primary_underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showInfoBottomSheet(
    BuildContext context,
  ) async {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) => const InformationBottomSheet(
        title: 'Les échanges avec vos professionnels de santé',
        description: Text(
          'Un professionnel de santé peut mettre fin à une conversation dans Mon espace santé. Vous ne pouvez alors plus lui répondre. Un message sur la conversation concernée vous informe de la clôture de l\'échange.',
          style: EnsTextStyle.text16_w400_normal_body,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class _Error extends StatelessWidget {
  final ConversationContentScreenViewModel vm;

  const _Error(this.vm);

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(child: Center(child: ErrorPage(reloadFunction: () => vm.refreshMessages())));
  }
}

class _ScreenTitle extends StatelessWidget {
  final String title;
  final String? conversationFinalizedBy;
  final bool isConversationFinalized;
  final double conversationTitleOpacity;

  const _ScreenTitle(
    this.title,
    this.conversationFinalizedBy,
    this.isConversationFinalized,
    this.conversationTitleOpacity,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: conversationTitleOpacity,
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 16),
            child: Text(title, style: EnsTextStyle.text20_w600_normal_title),
          ),
        ),
        if (isConversationFinalized && conversationFinalizedBy != null)
          _ConversationBlockedInfo(conversationFinalizedBy!),
      ],
    );
  }
}

class _FloatingButton extends StatelessWidget {
  final ConversationContentScreenViewModel vm;

  const _FloatingButton(this.vm);

  @override
  Widget build(BuildContext context) {
    return EnsFloatingButton(
      buttonLabel: vm.responseButtonLabel ?? '',
      leadingIconPath: EnsImages.ic_reply,
      onTap: () {
        if (vm.shouldDisplayReplyOptionsBottomSheet) {
          _showReplyOptionsBottomSheet(vm, context);
        } else {
          _tagResponseButtonClick(context, vm);
          final bool replyAll = vm.replyOptions.contains(ReplyOptionType.REPLY_TO_ALL);
          Navigator.pushNamed(context, ConversationReplyScreen.routeName, arguments: replyAll);
        }
      },
    );
  }

  void _showReplyOptionsBottomSheet(ConversationContentScreenViewModel vm, BuildContext context) {
    DynamicActionBottomSheet.showOptionsBottomSheet(
      [
        BottomSheetAction(
          assetName: EnsImages.ic_reply,
          label: 'Répondre',
          execution: () {
            _tagResponseButtonClick(context, vm);
            Navigator.pushNamed(context, ConversationReplyScreen.routeName, arguments: false);
          },
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_reply_all,
          label: 'Répondre à tous',
          execution: () {
            _tagResponseButtonClick(context, vm);
            Navigator.pushNamed(context, ConversationReplyScreen.routeName, arguments: true);
          },
        ),
      ],
      context,
      title: 'Répondre',
    );
  }

  void _tagResponseButtonClick(BuildContext context, ConversationContentScreenViewModel vm) {
    if (vm.responseButtonLabel == 'Répondre à tous') {
      context.tagAction(TagsMessagerie.tag_button_Multidest_repondre_a_tous);
    }
  }
}

class _Success extends StatelessWidget {
  final ConversationContentScreenViewModel vm;
  final ScrollController scrollController;
  final double conversationTitleOpacity;

  const _Success(this.vm, this.scrollController, this.conversationTitleOpacity);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScrollviewWithScrollbar(
        controller: scrollController,
        child: Column(
          children: [
            if (vm.inactifPsContactNamesList.isNotEmpty)
              InactifContactMessageCard(inactifPsContactsNames: vm.inactifPsContactNamesList),
            ListViewWithScrollbar.separated(
              separatorBuilder: (_, index) => SizedBox(height: vm.displayModels!.indexIsNotAnEnd(index) ? 16 : 0),
              padding: const EdgeInsets.only(bottom: 76),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: vm.displayModels?.length ?? 0,
              itemBuilder: (_, index) {
                switch (vm.displayModels![index]) {
                  case ConversationContentScreenHeaderDisplayModel _:
                    return _ScreenTitle(
                      vm.subject ?? '',
                      vm.conversationFinalizedBy,
                      vm.isConversationFinalized,
                      conversationTitleOpacity,
                    );
                  case MessageItemDisplayModel _:
                    final dm = vm.displayModels![index] as MessageItemDisplayModel;
                    return MessageItem(messageItemDisplayModel: dm);
                  default:
                    return const SizedBox();
                }
              },
            ),
            if (vm.shouldDisplayCantReplySnackbar)
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: EnsPersistentInfoBox.text('Ce message n’autorise pas la réponse.'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _NotFoundError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnsEmptyPage(
      customImagePath: EnsImages.avertissement,
      title: 'Message supprimé',
      description: 'Ce message a été supprimé. Il n\'est plus disponible.',
      buttonList: EnsEmptyButtonList.withPrimaryButton(
        primaryButtonLabel: 'Voir les messages',
        primaryButtonHandler: () {
          BottomNavigationTabsScreen.navigateToTab(BottomTabs.MESSAGES);
          Navigator.popUntil(context, (route) => route.isFirst);
        },
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final ConversationContentScreenViewModel vm;
  final ScrollController scrollController;
  final double conversationTitleOpacity;

  const _Body(this.vm, this.scrollController, this.conversationTitleOpacity);

  @override
  Widget build(BuildContext context) {
    switch (vm.conversationContentStatus) {
      case ConversationContentStatus.SUCCESS:
        return EnsPullToRefresh(
          onRefresh: () async => vm.refreshMessages(),
          child: _Success(vm, scrollController, conversationTitleOpacity),
        );
      case ConversationContentStatus.LOADING:
        return ConversationContentSkeleton();
      case ConversationContentStatus.GENERIC_ERROR:
        return _Error(vm);
      case ConversationContentStatus.NOT_FOUND_ERROR:
        return _NotFoundError();
    }
  }
}
