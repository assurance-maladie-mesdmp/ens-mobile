/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/aide/widgets/aide_screen.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/tags/parameters/tags_historique_activites.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class HistoriqueActivitesInfoButton extends StatelessWidget {
  const HistoriqueActivitesInfoButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => _displayBottomSheet(context),
      tooltip: 'Information',
      icon: const EnsSvg(EnsImages.ic_info_circle_outlined),
      splashRadius: 28,
    );
  }

  void _displayBottomSheet(BuildContext context) {
    context.tagAction(TagsHistoriqueActivites.tag_439_traces_ensavoirplus);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return InformationBottomSheet(
          title: 'En savoir plus',
          description: const Center(
            child: EnsRichText(
              text: TextSpan(
                text:
                    'L\'accès à vos données médicales (documents, vaccinations, historique de soins, entourage, dons d’organe et directives anticipées) par les professionnels de santé qui vous prennent en charge est subordonné à votre consentement (article R. 1111-46 du code de la santé publique), sauf en cas d’urgence vitale. Vous pouvez vérifier ici l\'historique de consultations de ces éléments. En cas d\'anomalie vous pouvez nous contacter via la rubrique aide.',
                style: EnsTextStyle.text16_w400_normal_body,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          redirectionLink: EnsLinkText(
            alignment: AlignmentDirectional.center,
            onTap: () => Navigator.pushNamed(context, AideScreen.routeName),
            label: 'Accéder à la rubrique aide',
          ),
        );
      },
    );
  }
}
