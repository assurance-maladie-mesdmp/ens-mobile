/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/called_es_or_ps_detail_screen_from.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';

class DocumentMetadata extends StatelessWidget {
  final EnsDocument document;
  final privacyInfosUrl = EnsModuleContainer.currentInjector.getUrlsConfig().privacyInfosUrl;

  DocumentMetadata({required this.document});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 32, 24, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const EnsSvg(EnsImages.ic_file_circle, height: 56, width: 56),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      document.title,
                      style: EnsTextStyle.text24_w400_normal_title,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              if (document.proprietaire.ownerType != null)
                OwnerDocumentTypeWidget(
                  message: _getOwnerMessage(document.proprietaire.ownerType!),
                ),
            ],
          ),
        ),
        const EnsDivider(),
        Material(
          color: EnsColors.light,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (document.reportDate != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: EnsPersistentInfoBox.text(
                      'Vous avez signalé un problème sur ce document le ${EnsDateUtils.formatddmmyyyy(
                        document.reportDate!,
                      )}',
                    ),
                  ),
                _DocumentDateInformation(document: document),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: _DocumentOwnerInformation(document: document),
                ),
                _DocumentTypeInformation(document: document),
              ],
            ),
          ),
        ),
        const EnsDivider(),
      ],
    );
  }

  String _getOwnerMessage(DocumentSpecialOwnerType ownerType) {
    switch (ownerType) {
      case DocumentSpecialOwnerType.PS:
      case DocumentSpecialOwnerType.ES:
        return 'Ce document a été ajouté par un professionnel de santé. Il ne peut pas être modifié ou supprimé.';
      case DocumentSpecialOwnerType.ASSURANCE_MALADIE:
        return 'Ce document a été ajouté par l\'assurance maladie. Il ne peut pas être modifié ou supprimé.';
      case DocumentSpecialOwnerType.MON_ESPACE_SANTE:
        return 'Ce document a été ajouté par Mon espace santé. Il ne peut pas être modifié ou supprimé.';
    }
  }
}

class OwnerDocumentTypeWidget extends StatelessWidget {
  final String message;

  const OwnerDocumentTypeWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform.translate(
              offset: const Offset(0, -1),
              child: const EnsSvg(EnsImages.ic_shield),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Text(
                message,
                style: EnsTextStyle.text14_w600_normal_body,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}

class _DocumentTypeInformation extends StatelessWidget {
  final EnsDocument document;

  const _DocumentTypeInformation({required this.document});

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Type de document',
            style: EnsTextStyle.text14_w600_normal_title,
          ),
          const SizedBox(height: 4),
          Text(document.categorie.label, style: EnsTextStyle.text14_w400_normal_body),
        ],
      ),
    );
  }
}

class _DocumentDateInformation extends StatelessWidget {
  final EnsDocument document;

  const _DocumentDateInformation({required this.document});

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Date du document',
            style: EnsTextStyle.text14_w600_normal_title,
          ),
          const SizedBox(height: 4),
          Text(
            EnsDateUtils.formatddmmyyyy(document.date),
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          const EnsDivider(paddingTop: 16),
        ],
      ),
    );
  }
}

class _DocumentOwnerInformation extends StatelessWidget {
  const _DocumentOwnerInformation({required this.document});

  final EnsDocument document;

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Ajouté par',
            style: EnsTextStyle.text14_w600_normal_title,
          ),
          const SizedBox(height: 4),
          _DocumentOwnerFullName(proprietaire: document.proprietaire),
          const EnsDivider(paddingTop: 16),
        ],
      ),
    );
  }
}

class _DocumentOwnerFullName extends StatelessWidget {
  final Proprietaire proprietaire;

  const _DocumentOwnerFullName({required this.proprietaire});

  @override
  Widget build(BuildContext context) {
    return proprietaire.isPsClickable && proprietaire.ownerType == DocumentSpecialOwnerType.PS
        ? _ClickableOwnerInformation(
            name: proprietaire.fullName,
            id: proprietaire.id,
          )
        : _UnclickableOwnerInformation(name: proprietaire.fullName);
  }
}

class _UnclickableOwnerInformation extends StatelessWidget {
  final String name;

  const _UnclickableOwnerInformation({required this.name});

  @override
  Widget build(BuildContext context) => Text(name, style: EnsTextStyle.text14_w400_normal_body);
}

class _ClickableOwnerInformation extends StatelessWidget {
  final String name;
  final String id;

  const _ClickableOwnerInformation({required this.name, required this.id});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      child: EnsLinkText(
        label: name,
        textPadding: const EdgeInsets.symmetric(vertical: 8),
        onTap: () => Navigator.pushNamed(
          context,
          ProfessionnelDeSanteDetailScreen.routeName,
          arguments: ProfessionnelDeSanteArgument(id, CalledESorPSDetailScreenFrom.DOCUMENT_SCREEN),
        ),
      ),
    );
  }
}
