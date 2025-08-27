/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_messagerie.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';

class EmptyMessageInfoBox extends StatelessWidget {
  const EmptyMessageInfoBox();

  @override
  Widget build(BuildContext context) {
    context.tagAction(TagsMessagerie.tag_838_vue_aucun_destinataire);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      child: EnsPersistentInfoBox.text(
        'Je peux uniquement contacter les professionnels qui m’ont déjà écrit et qui n’ont pas mis fin aux échanges.',
      ),
    );
  }
}
