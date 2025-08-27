/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/screens/nous_contacter_ticket_details_screen.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/screens/viewmodels/nous_contacter_screen_view_model.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/nouvelle_demande_formulaire_screen.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/nouvelle_demande_formulaire_screen_arguments.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/attachment_indicator_widget.dart';
import 'package:fr_cnamts_ens/tags/tags_aide.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bottom_nav_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_html.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:redux/redux.dart';

class NousContacterScreen extends StatelessWidget {
  static const routeName = '/aide/nous_contacter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Nous contacter',
      ),
      body: StoreConnector<EnsState, NousContacterViewModel>(
        converter: (Store<EnsState> store) => NousContacterViewModel(store),
        onInitialBuild: (vm) {
          vm.load();
          context.tagAction(TagsAide.tag_2269_aide_nous_contacter);
        },
        builder: (context, vm) {
          return Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: Visibility(
              visible: vm.status == NousContacterScreenStatus.SUCCESS || vm.status == NousContacterScreenStatus.EMPTY,
              child: Padding(
                padding: EdgeInsets.only(bottom: getNavBarBottomPadding(context)),
                child: EnsFloatingButton(
                  onTap: () {
                    context.tagAction(TagsAide.tag_2270_button_nouvelle_demande);
                    Navigator.pushNamed(
                      context,
                      NouvelleDemandeFormulaireScreen.routeName,
                      arguments: NouvelleDemandeFormulaireScreenArguments.nousContacter(),
                    );
                  },
                  buttonLabel: 'Nouvelle demande',
                  leadingIconPath: EnsImages.ic_edit,
                ),
              ),
            ),
            body: _Body(vm: vm),
          );
        },
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final NousContacterViewModel vm;

  const _Body({required this.vm});

  @override
  Widget build(BuildContext context) {
    return switch (vm.status) {
      NousContacterScreenStatus.SUCCESS => _Success(vm: vm),
      NousContacterScreenStatus.LOADING => _Loading(),
      NousContacterScreenStatus.ERROR => ErrorPage(reloadFunction: vm.load),
      NousContacterScreenStatus.EMPTY => const _Empty(),
    };
  }
}

class _Success extends StatelessWidget {
  final NousContacterViewModel vm;

  const _Success({required this.vm});

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Une question sur Mon espace santé ? Nos conseillers sont là pour vous répondre.',
                style: EnsTextStyle.text14_w400_normal_body,
              ),
            ),
            const SizedBox(height: 24),
            ...vm.displayModels.map(
              (ticket) => Column(
                children: [
                  const EnsDivider(),
                  EnsCard(
                    onTap: () {
                      context.tagAction(TagsAide.tag_2273_button_consulter_demande);
                      Navigator.pushNamed(
                        context,
                        NousContacterTicketDetailsScreen.routeName,
                        arguments: ticket.id,
                      );
                    },
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    hasBoxShadow: false,
                    borderRadius: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(ticket.titre, style: EnsTextStyle.text16_w700_normal_title),
                            ),
                            const SizedBox(width: 8),
                            Text(ticket.lastUpdateDate, style: EnsTextStyle.text14_w600_normal_title),
                          ],
                        ),
                        const SizedBox(height: 8),
                        EnsHtml(
                          data: ticket.lastMessage.message,
                          maxLines: 1,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          textColor: EnsColors.body,
                        ),
                        if (ticket.lastMessage.hasAttachment) AttachmentIndicator(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 130),
          ],
        ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 40),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Une question sur Mon espace santé ? Nos conseillers sont là pour vous répondre.',
            style: EnsTextStyle.text14_w400_normal_body,
          ),
        ),
        SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SkeletonBox(
            height: 80,
            radius: 16,
          ),
        ),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SkeletonBox(
            height: 80,
            radius: 16,
          ),
        ),
      ],
    );
  }
}

class _Empty extends StatelessWidget {
  const _Empty();

  @override
  Widget build(BuildContext context) {
    return const DisappearingIllustrationPage(
      asset: EnsImages.message,
      children: [
        Text(
          'Vous n\'avez aucune demande en cours.',
          textAlign: TextAlign.center,
          style: EnsTextStyle.text24_w400_normal_title,
        ),
        SizedBox(height: 16),
        Text(
          'Une question sur Mon espace santé ? Nos conseillers sont là pour vous répondre.',
          textAlign: TextAlign.center,
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        SizedBox(height: 32),
      ],
    );
  }
}
