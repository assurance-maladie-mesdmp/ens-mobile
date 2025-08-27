/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fr_cnamts_ens/aide/domain/faq_item.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/screens/nous_contacter_screen.dart';
import 'package:fr_cnamts_ens/aide/view_models/aide_faq_view_model.dart';
import 'package:fr_cnamts_ens/aide/widgets/aide_detail_screen.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_aide.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_clickable_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class AideScreen extends StatelessWidget {
  static const routeName = '/aide';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Aide',
      ),
      body: StoreConnector<EnsState, AideFAQViewModel>(
        converter: (store) => AideFAQViewModel.fromStore(store),
        onInitialBuild: (vm) {
          vm.loadFaq();
          context.tagAction(TagsAide.tag_2268_questions_frequentes);
        },
        distinct: true,
        builder: (_, vm) {
          return _Content(vm);
        },
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final AideFAQViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScrollviewWithScrollbar(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 32),
            const Text(
              'Bonjour, en quoi pouvons-nous vous aider ?',
              style: EnsTextStyle.text14_w400_normal_body,
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 32),
            ...vm.faqItems.map(
              (item) => _EnsFaqCard(
                title: item.title,
                questions: item.questions,
                svgPath: item.image,
                id: item.id,
              ),
            ),
            const EnsClickableCard(
              availableInGuestMode: false,
              title: 'Nous contacter',
              destinationPage: NousContacterScreen.routeName,
              svgPicture: EnsSvg(EnsImages.contactez_nous, height: 64, width: 64),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _EnsFaqCard extends StatelessWidget {
  final String title;
  final List<FaqQuestion> questions;
  final String svgPath;
  final String id;

  const _EnsFaqCard({
    required this.title,
    required this.questions,
    required this.svgPath,
    required this.id,
  });

  void _onMenuItemClick(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => AideDetailScreen(questions, title, id),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cmsUrl = EnsModuleContainer.currentInjector.getUrlsConfig().cmsUrl;
    const imagePath = '/sites/default/files/';
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: EnsClickableCard(
        title: title,
        svgPicture: SvgPicture.network(
          'https://$cmsUrl$imagePath$svgPath',
          height: 64,
          width: 64,
          excludeFromSemantics: true,
        ),
        onTap: () => _onMenuItemClick(context),
      ),
    );
  }
}
