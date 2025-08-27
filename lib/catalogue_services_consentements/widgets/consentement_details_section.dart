/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service_consentement.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';

class ConsentementDetailsSection extends StatefulWidget {
  final List<ServiceConsentementDetail> details;

  const ConsentementDetailsSection({required this.details});

  @override
  State<ConsentementDetailsSection> createState() => _ConsentementDetailsSectionState();
}

class _ConsentementDetailsSectionState extends State<ConsentementDetailsSection> with TickerProviderStateMixin {
  bool isExpanded = false;
  late final AnimationController _animationController =
      AnimationController(duration: const Duration(milliseconds: 250), vsync: this);

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizeTransition(
          axisAlignment: 1.0,
          sizeFactor: _animationController,
          child: Semantics(
            label: isExpanded ? widget.details.join(', ') : '',
            child: ExcludeSemantics(
              child: Column(
                children: widget.details.map((detail) => _FinalityDetail(detail)).toList(),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: EnsInkWell(
            onTap: () {
              isExpanded ? _animationController.reverse() : _animationController.forward();
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                child: isExpanded
                    ? Semantics(
                        button: true,
                        excludeSemantics: !isExpanded,
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              key: ValueKey('displayed'),
                              'Masquer les détails',
                              style: EnsTextStyle.text14_w700_normal_primary,
                            ),
                          ],
                        ),
                      )
                    : Semantics(
                        button: true,
                        excludeSemantics: isExpanded,
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          key: ValueKey('masked'),
                          children: [
                            Expanded(
                              child: Text(
                                'Voir plus de détails',
                                style: EnsTextStyle.text14_w700_normal_primary,
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _FinalityDetail extends StatelessWidget {
  final ServiceConsentementDetail detail;

  const _FinalityDetail(this.detail);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 8),
        Text(_getTitle(), style: EnsTextStyle.text14_w600_normal_secondary),
        const SizedBox(height: 8),
        ...detail.items.any((element) => element.description.isNotEmpty)
            ? detail.items
                .map(
                  (item) => [
                    Text(item.title, style: EnsTextStyle.text14_w600_normal_body),
                    Text(item.description, style: EnsTextStyle.text14_w600_normal_body),
                    const SizedBox(height: 16),
                  ],
                )
                .flattened
                .toList()
            : [Text(detail.items.map((e) => e.title).join(', '), style: EnsTextStyle.text14_w600_normal_body)],
        const SizedBox(height: 8),
      ],
    );
  }

  String _getTitle() {
    final libelle = detail.libelle;
    if (libelle == 'Mesure') {
      return '${libelle.toUpperCase()}S ${detail.isWrite ? 'AJOUTÉES' : 'CONSULTÉES'}';
    } else {
      return '${libelle.toUpperCase()}S ${detail.isWrite ? 'AJOUTÉS' : 'CONSULTÉS'}';
    }
  }
}
