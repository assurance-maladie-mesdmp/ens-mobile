/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_box_shadow.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/text_scale_utils.dart';

class EnsDropdownList extends StatefulWidget {
  final String label;
  final Color headerColor;
  final Color? circleColor;
  final List<Widget> items;
  final Widget? leading;
  final EdgeInsets externalPadding;

  const EnsDropdownList({
    required this.label,
    required this.headerColor,
    this.circleColor,
    required this.items,
    this.leading,
    this.externalPadding = const EdgeInsets.symmetric(vertical: 8),
    super.key,
  });

  @override
  State<EnsDropdownList> createState() => _EnsDropdownListState();
}

class _EnsDropdownListState extends State<EnsDropdownList> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isOpen = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _controller.addListener(() {
      final key = widget.key;
      if (_isOpen && key is GlobalKey && key.currentContext != null) {
        Scrollable.ensureVisible(
          key.currentContext!,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.externalPadding,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: _isOpen ? [EnsBoxShadow.base] : null,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: Colors.white,
            child: Column(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    boxShadow: widget.headerColor == Colors.white ? [EnsBoxShadow.base] : null,
                  ),
                  child: EnsInkWell(
                    color: widget.headerColor,
                    onTap: () {
                      _isOpen ? _controller.reverse() : _controller.forward();
                      setState(() {
                        _isOpen = !_isOpen;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          if (widget.leading != null && TextScaleUtils.getTextScaleFactor(context) < 2)
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: widget.leading,
                            ),
                          Expanded(
                            child: Text(
                              widget.label,
                              style: EnsTextStyle.text14_w700_normal_title,
                            ),
                          ),
                          const SizedBox(width: 16),
                          if (widget.circleColor != null) ...[
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(shape: BoxShape.circle, color: widget.circleColor),
                              child: Center(
                                child: Text(
                                  widget.items.length.toString(),
                                  style: EnsTextStyle.text16_w700_body,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                          ],
                          EnsSvg(
                            _isOpen ? EnsImages.ic_chevron_up : EnsImages.ic_chevron_down,
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizeTransition(
                  sizeFactor: CurvedAnimation(curve: Curves.fastOutSlowIn, parent: _controller),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                    child: Column(children: widget.items),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
