/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/prevention/screens/viewmodels/prevention_detail_screen_view_model.dart';
import 'package:fr_cnamts_ens/prevention/widgets/cms_action_button_item.dart';
import 'package:fr_cnamts_ens/tags/tags_home.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_html.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';
import 'package:fr_cnamts_ens/utils/webpage_utils.dart';

class PreventionDetailScreenArgument extends Equatable {
  final String articleId;
  final bool isGenerique;

  const PreventionDetailScreenArgument({required this.articleId, required this.isGenerique});

  @override
  List<Object?> get props => [articleId, isGenerique];
}

class PreventionDetailScreen extends StatelessWidget {
  static const routeName = '/preventionDetail';

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments! as PreventionDetailScreenArgument;
    return StoreConnector<EnsState, PreventionDetailScreenViewModel>(
      distinct: true,
      converter: (store) => PreventionDetailScreenViewModel.from(
        store,
        articleId: argument.articleId,
        isGenerique: argument.isGenerique,
      ),
      onInitialBuild: (vm) {
        context.tagAction(TagsHome.tag_article);
        vm.loadDetailPage();
      },
      builder: (_, vm) => Scaffold(
        appBar: EnsAppBarSubLevel(
          title: vm.articleDetail?.title ?? '',
        ),
        body: SafeArea(child: _Content(vm)),
      ),
    );
  }
}

class _CmsNeedHelpActionButtonItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CmsActionButtonItem(
      title: 'Besoin d\'aide ?',
      content: 'Une question, une interrogation ? N\'hésitez pas à consulter notre aide en ligne.',
      linkLabel: 'Accéder à l\'aide en ligne',
      link: '/questions-frequentes',
      isExternalLink: true,
      onTap: () => navigateInApp('/questions-frequentes', fromDetailArticle: true),
    );
  }
}

class _Content extends StatelessWidget {
  final PreventionDetailScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.preventionDetailStatus) {
      case AllPurposesStatus.NOT_LOADED:
      case AllPurposesStatus.LOADING:
        return PreventionSkeleton();
      case AllPurposesStatus.SUCCESS:
        return _Success(vm);
      case AllPurposesStatus.ERROR:
        return ErrorPage(reloadFunction: vm.loadDetailPage);
    }
  }
}

class _Success extends StatelessWidget {
  final PreventionDetailScreenViewModel vm;

  const _Success(this.vm);

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 28),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(vm.articleDetail?.title ?? '', style: EnsTextStyle.text24_w400_normal_title),
            if (vm.articleDetail?.subTitle != null)
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(vm.articleDetail!.subTitle!, style: EnsTextStyle.text20_w400_normal_title),
              ),
            const SizedBox(height: 16),
            EnsHtml(
              data: vm.articleDetail?.content ?? '',
              textColor: EnsColors.title,
              shouldPopOnLinkTap: true,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Column(
                children: vm.articleDetail!.actionButtons.isEmpty
                    ? [_CmsNeedHelpActionButtonItem()]
                    : vm.articleDetail!.actionButtons
                        .map(
                          (action) => CmsActionButtonItem.fromCmsActionButton(
                            actionButton: action,
                            onTap: () {
                              context.tagAction(TagsHome.tag_443_button_lire_article);
                              launchUrlOrInternalLink(action.link, true);
                            },
                          ),
                        )
                        .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
