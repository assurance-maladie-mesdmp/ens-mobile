/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_content.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/etablissement_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/called_es_or_ps_detail_screen_from.dart';
import 'package:fr_cnamts_ens/tags/tags_messagerie.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class MessageHeaderWidget extends StatelessWidget {
  final TypeOfContact? fromContact;
  final String dateLabel;
  final List<TypeOfContact> toRecipients;
  final bool withDraftIndicator;

  const MessageHeaderWidget({
    required this.fromContact,
    required this.dateLabel,
    required this.toRecipients,
    this.withDraftIndicator = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 5,
              child: Align(
                alignment: Alignment.topLeft,
                child: EnsRichText(
                  text: TextSpan(
                    children: [
                      if (withDraftIndicator) ..._buildDraftIndicator(),
                      if (fromContact != null) contactElement(context, fromContact!),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(dateLabel, textAlign: TextAlign.end, style: EnsTextStyle.text14_w600_normal_title),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Align(
          alignment: Alignment.topLeft,
          child: EnsRichText(
            text: TextSpan(children: fromContactList(context)),
          ),
        ),
      ],
    );
  }

  List<InlineSpan> _buildDraftIndicator() => [
        const TextSpan(text: 'Brouillon,', style: EnsTextStyle.text16_w700_normal_error),
        const WidgetSpan(child: SizedBox(width: 8)),
      ];

  List<InlineSpan> fromContactList(BuildContext context) {
    final List<InlineSpan> list = [];
    list.add(const TextSpan(text: 'À ', style: EnsTextStyle.text14_w600_normal_body));
    toRecipients.forEachIndexed((index, element) {
      list.add(contactElement(context, element));
      if (index + 1 != toRecipients.length) {
        list.add(const TextSpan(text: ', ', style: EnsTextStyle.text14_w600_normal_body));
      }
    });
    return list;
  }

  InlineSpan contactElement(BuildContext context, TypeOfContact contact) {
    switch (contact) {
      case DefaultContact _:
        final defaultContact = contact;
        return TextSpan(
          text: defaultContact.name.capitalizeName(),
          style: EnsTextStyle.text14_w600_normal_body,
        );
      case ProfessionnelDeSanteContact _:
        final ps = contact;
        return _clickableContactElement(
          name: ps.name.capitalizeName(),
          type: SpecialContactType.PROFESSIONNEL,
          onTap: () {
            context.tagAction(TagsMessagerie.tag_553_button_nom_ps);
            Navigator.pushNamed(
              context,
              ProfessionnelDeSanteDetailScreen.routeName,
              arguments: ProfessionnelDeSanteArgument(ps.idNat, CalledESorPSDetailScreenFrom.MESSAGERIE_SCREEN),
            );
          },
        );
      case EtablissementDeSanteContact _:
        final es = contact;
        return _clickableContactElement(
          name: es.name.capitalizeName(),
          type: SpecialContactType.ETABLISSEMENT,
          onTap: () {
            context.tagAction(TagsMessagerie.tag_553_button_nom_ps);
            Navigator.pushNamed(
              context,
              EtablissementDeSanteDetailScreen.routeName,
              arguments: EtablissementDeSanteArgument(
                es.idNat,
                CalledESorPSDetailScreenFrom.MESSAGERIE_SCREEN,
              ),
            );
          },
        );
      default:
        return const WidgetSpan(child: SizedBox());
    }
  }

  WidgetSpan _clickableContactElement({
    required String name,
    required SpecialContactType type,
    required void Function() onTap,
  }) {
    return WidgetSpan(
      child: EnsInkWell(
        semanticHint:
            'Appuyer pour visualiser les détails ${type == SpecialContactType.PROFESSIONNEL ? ' du professionnel santé : $name' : 'de l\'établissement de santé : $name'}',
        onTap: onTap,
        child: Text(
          name,
          style: EnsTextStyle.text14_w700_normal_primary_underline,
        ),
      ),
    );
  }
}
