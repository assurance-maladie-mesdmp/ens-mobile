/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/screens/filter_result_screen.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rounded_button.dart';

class EnsEpinglerButton extends StatelessWidget {
  final EdgeInsets padding;

  const EnsEpinglerButton({
    super.key,
    this.padding = const EdgeInsets.symmetric(vertical: 8),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: EnsRoundedButton(
        color: EnsColors.neutral100,
        text: 'Épinglés',
        semanticsLabel: 'Voir mes documents épinglés',
        onTap: () {
          context.tagAction(TagsDocuments.tag_2461_documents_epingles);
          Navigator.pushNamed(
            context,
            FilterResultScreen.routeName,
            arguments: [FilterResultScreenArgument.epingle()],
          );
        },
      ),
    );
  }
}
