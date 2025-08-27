/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/aidants_aides_utils.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/redux/messagerie_redux.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/conversation_summary_item.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/viewmodels/messagerie_screen_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/new_conversation_screen.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/tags/tags_messagerie.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/utils/pull_to_refresh_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/delete_slidable.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bottom_nav_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class MessagerieScreen extends StatelessWidget {
  final messagerieViewModelHelper = EnsModuleContainer.currentInjector.getMessagerieViewModelHelper();

  @override
  Widget build(BuildContext context) => StoreConnector<EnsState, MessagerieScreenViewModel>(
        converter: (store) => MessagerieScreenViewModel(store, messagerieViewModelHelper),
        distinct: true,
        onInit: (store) => store.dispatch(const FetchMessagerieAction()),
        onInitialBuild: (vm) {
          context.tagAction(TagsMessagerie.tag_messagerie_liste_conversations);
          context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_MESSAGERIE);
        },
        onWillChange: (oldVm, newVm) {
          if (oldVm?.messagerieStatus != newVm.messagerieStatus) {
            if (newVm.messagerieStatus == MessagerieStatus.LOADING) {
              newVm.refreshConversations();
            }
          }
        },
        builder: (context, vm) => Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Visibility(
            visible: vm.messagerieStatus == MessagerieStatus.SUCCESS,
            child: _NouveauMessageButton(
              bottomPadding:
                  !EnsModuleContainer.currentInjector.isGuestMode() ? 32 + getNavBarBottomPadding(context) : 0,
              isMessagesListEmpty: false,
            ),
          ),
          body: _Body(vm),
        ),
      );
}

class _SuccessTitle extends StatelessWidget {
  final MessagerieScreenViewModel vm;

  const _SuccessTitle({required this.vm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24, right: 24, top: DeviceUtils.isSmallDevice(context) ? 8 : 24, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MergeSemantics(
            child: Semantics(
              header: true,
              child: const Text('Messagerie de santé', style: EnsTextStyle.text26_w400_normal_title),
            ),
          ),
          const SizedBox(height: 8),
          MergeSemantics(
            child: Text(
              'J\'échange de manière sécurisée des documents et des informations liées à ma santé avec mes professionnels de santé.'
                  .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ),
          if (vm.profilType.isAide) ...[
            const SizedBox(height: 24),
            EnsPersistentInfoBox.text(AidantAideUtils.unavailableAsAidant),
          ],
        ],
      ),
    );
  }
}

class ConversationsListItemSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 24, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32),
            SkeletonBox(width: 225.0, height: 12.0),
            SizedBox(height: 12),
            SkeletonBox(width: 121.0, height: 12.0),
            SizedBox(height: 32),
            SkeletonBox(width: 72.0, height: 12.0),
          ],
        ),
      ),
    );
  }
}

class _MessagerieLoadingScreen extends StatelessWidget {
  const _MessagerieLoadingScreen();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            top: MediaQuery.of(context).padding.top + 24,
            bottom: 24,
          ),
          child: const Text('Messagerie de santé ', style: EnsTextStyle.text26_w400_normal_title),
        ),
        Expanded(
          child: ListViewWithScrollbar.separated(
            padding: EdgeInsets.zero,
            separatorBuilder: (context, index) => const Divider(height: 2, color: EnsColors.neutral200),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) => ConversationsListItemSkeleton(),
          ),
        ),
      ],
    );
  }
}

class _Success extends StatelessWidget {
  final MessagerieScreenViewModel vm;

  const _Success(this.vm);

  @override
  Widget build(BuildContext context) {
    final itemCount = vm.conversations?.length ?? 0;
    return SlidableAutoCloseBehavior(
      child: ListViewWithScrollbar.separated(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, bottom: 100),
        separatorBuilder: (_, index) =>
            Divider(height: 2, color: index > 1 ? EnsColors.neutral200 : Colors.transparent),
        itemCount: itemCount,
        itemBuilder: (_, index) {
          final shouldAddPaddingAtTheBottom =
              !EnsModuleContainer.currentInjector.isGuestMode() && index == itemCount - 1;
          late Widget item;
          switch (vm.conversations![index]) {
            case MessagerieScreenHeaderDisplayModel _:
              item = _SuccessTitle(vm: vm);
            case ConversationSummaryItemDisplayModel _:
              final dm = vm.conversations![index] as ConversationSummaryItemDisplayModel;
              item = DeleteSlidable(
                child: ConversationSummaryItem(displayModel: dm),
                onPressed: (context) {
                  vm.profilType.handleProfilAction(
                    aideProfilCallback: () {
                      StoreProvider.of<EnsState>(context).dispatch(
                        DisplaySnackbarAction.info(
                          'Cette action est uniquement disponible pour ${vm.profilFullName}.',
                        ),
                      );
                    },
                    otherProfilCallback: () {
                      _showDeleteConfirmationBottomSheet(context, vm, dm.id);
                    },
                  );
                },
              );
            default:
              item = const SizedBox();
          }
          return Padding(
            padding: EdgeInsets.only(bottom: shouldAddPaddingAtTheBottom ? 48 : 0),
            child: item,
          );
        },
      ),
    );
  }

  void _showDeleteConfirmationBottomSheet(
    BuildContext context,
    MessagerieScreenViewModel vm,
    String conversationId,
  ) {
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
          vm.deleteConversation(conversationId);
        },
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final MessagerieScreenViewModel vm;

  const _Body(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.messagerieStatus) {
      case MessagerieStatus.EMPTY:
        return _EmptyPage(userEmail: vm.userEmail, onCopy: vm.copyEmail);
      case MessagerieStatus.SUCCESS:
        return EnsPullToRefresh(
          paddingTop: MediaQuery.of(context).padding.top,
          onRefresh: () async => vm.refreshConversations(),
          child: _Success(vm),
        );
      case MessagerieStatus.LOADING:
        return const _MessagerieLoadingScreen();
      case MessagerieStatus.ERROR:
        return _Error(vm);
    }
  }
}

class _EmptyPage extends StatelessWidget {
  final String? userEmail;
  final Function() onCopy;

  const _EmptyPage({required this.userEmail, required this.onCopy});

  @override
  Widget build(BuildContext context) {
    return EnsEmptyPage(
      customImagePath: EnsImages.messagerie_de_sante,
      title: 'Je n\'ai aucun message à consulter',
      description: 'Je contacte les professionnels de santé qui m\'ont déjà écrit et les pharmacies.',
      buttonList: EnsEmptyButtonList.withPrimaryButtonWithIcon(
        primaryButtonLabel: 'Nouveau message',
        leadingIconPath: EnsImages.ic_edit,
        primaryButtonHandler: () {
          context.tagAction(TagsMessagerie.tag_658_button_nouveau_message);
          Navigator.of(context).pushNamed(NewConversationScreen.routeName);
        },
      ),
    );
  }
}

class _NouveauMessageButton extends StatelessWidget {
  final double bottomPadding;
  final bool isMessagesListEmpty;

  const _NouveauMessageButton({this.bottomPadding = 0, required this.isMessagesListEmpty});

  @override
  Widget build(BuildContext context) {
    final double horizontalPadding = isMessagesListEmpty ? 60 : 0;

    return EnsButton(
      paddingAround: EdgeInsets.only(
        bottom: bottomPadding,
        left: horizontalPadding,
        right: horizontalPadding,
      ),
      leadingIconPath: EnsImages.ic_edit,
      label: 'Nouveau message',
      onTap: () {
        context.tagAction(TagsMessagerie.tag_658_button_nouveau_message);
        Navigator.of(context).pushNamed(NewConversationScreen.routeName);
      },
    );
  }
}

class _Error extends StatelessWidget {
  final MessagerieScreenViewModel vm;

  const _Error(this.vm);

  @override
  Widget build(BuildContext context) {
    return ErrorPage(reloadFunction: () => vm.refreshConversations());
  }
}
