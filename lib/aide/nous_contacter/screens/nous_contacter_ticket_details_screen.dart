/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/screens/viewmodels/nous_contacter_ticket_details_view_model.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/file_attachment_widget.dart';
import 'package:fr_cnamts_ens/tags/tags_aide.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_html.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class NousContacterTicketDetailsScreen extends StatelessWidget {
  static const routeName = '/aide/nous_contacter/ticket_details';

  @override
  Widget build(BuildContext context) {
    final ticketId = ModalRoute.of(context)!.settings.arguments.toString();

    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Nous contacter',
      ),
      body: SafeArea(
        child: StoreConnector<EnsState, NousContacterTicketDetailsViewModel>(
          converter: (Store<EnsState> store) => NousContacterTicketDetailsViewModel(store, ticketId),
          onInitialBuild: (vm) {
            vm.load();
            context.tagAction(TagsAide.tag_2274_aide_consulter_demande);
          },
          builder: (context, vm) {
            return _Body(vm: vm);
          },
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final NousContacterTicketDetailsViewModel vm;

  const _Body({required this.vm});

  @override
  Widget build(BuildContext context) {
    return switch (vm.status) {
      AllPurposesStatus.SUCCESS => _Success(vm: vm),
      AllPurposesStatus.ERROR => ErrorPage(reloadFunction: vm.load),
      _ => _Loading(),
    };
  }
}

class _Success extends StatelessWidget {
  final NousContacterTicketDetailsViewModel vm;

  const _Success({required this.vm});

  @override
  Widget build(BuildContext context) {
    final ticketDetails = vm.displayModel!;
    return ScrollviewWithScrollbar(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 32),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticketDetails.titre,
                        style: EnsTextStyle.text20_w400_normal_title,
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: 10),
                      EnsPersistentInfoBox.text('Cette conversation sera conservée pendant un an.'),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                ...ticketDetails.messages.map(
                  (message) => Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(24),
                        color: EnsColors.light,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(child: Text(message.from, style: EnsTextStyle.text16_w600_normal_title)),
                                const SizedBox(width: 8),
                                Text(message.createdAt, style: EnsTextStyle.text14_w600_normal_title),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text('À ${message.to}', style: EnsTextStyle.text14_w600_normal_body),
                            if (message.attachmentsName.isNotEmpty) const SizedBox(height: 16),
                            ...message.attachmentsName.map(
                              (attachmentName) => Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: FileAttachmentWidget(
                                  dm: FileAttachmentDisplayModel(name: attachmentName, documentId: attachmentName),
                                ),
                              ),
                            ),
                            const EnsDivider(paddingTop: 24, paddingBottom: 24),
                            EnsHtml(
                              data: _insertLineBreaks(message.message),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _insertLineBreaks(String message) {
    return message.replaceAll('\n', '</br>');
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(24, 32, 24, 16),
          color: EnsColors.neutral100,
          width: double.infinity,
          height: 88,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SkeletonBox(width: 197, height: 12),
              SizedBox(height: 16),
              SkeletonBox(width: 225, height: 12),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(24, 40, 24, 16),
          color: Colors.white,
          width: double.infinity,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SkeletonBox(width: 225, height: 12),
                  SkeletonBox(width: 35, height: 12),
                ],
              ),
              SizedBox(height: 12),
              SkeletonBox(width: 121, height: 12),
              SizedBox(height: 22),
              Divider(height: 2, color: EnsColors.neutral200),
              SizedBox(height: 32),
              SkeletonBox(width: 121, height: 12),
              SizedBox(height: 24),
              SkeletonBox(width: double.infinity, height: 12),
              SizedBox(height: 8),
              SkeletonBox(width: double.infinity, height: 12),
              SizedBox(height: 8),
              SkeletonBox(width: double.infinity, height: 12),
              SizedBox(height: 8),
              SkeletonBox(width: double.infinity, height: 12),
              SizedBox(height: 8),
              SkeletonBox(width: 80, height: 12),
            ],
          ),
        ),
      ],
    );
  }
}
