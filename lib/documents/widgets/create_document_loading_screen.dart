/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:lottie/lottie.dart';

class CreateDocumentLoadingScreen extends StatelessWidget {
  const CreateDocumentLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, AnalyticsViewModel>(
      onInitialBuild: (vm) {
        vm.tagAction(TagsDocuments.tag_827_ajouter_un_document_chargement);
      },
      distinct: true,
      converter: (store) => AnalyticsViewModel(store),
      builder: (BuildContext context, AnalyticsViewModel vm) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 12),
            Lottie.asset('assets/anims/file_upload.json', fit: BoxFit.contain, height: 166),
            const Text(
              'Ajout en cours\u2026',
              textAlign: TextAlign.center,
              style: EnsTextStyle.text14_w700_normal_primary,
            ),
            const SizedBox(height: 42),
          ],
        ),
      ),
    );
  }
}
