/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';

class AccessibleTabBar extends StatefulWidget {
  final List<String> labels;
  final TabController? tabController;
  final TabAlignment? tabAlignment;

  const AccessibleTabBar({
    required this.labels,
    this.tabController,
    this.tabAlignment,
  });

  @override
  State<AccessibleTabBar> createState() => _AccessibleTabBarState();
}

class _AccessibleTabBarState extends State<AccessibleTabBar> {
  late List<GlobalKey> _keys;
  bool _scrollable = true;

  @override
  void initState() {
    super.initState();
    _keys = widget.labels.map((e) => GlobalKey()).toList();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final maxWidth = (MediaQuery.of(_keys.first.currentContext!).size.width / _keys.length) - 32;
      final shouldScroll = _keys.any((key) => key.currentContext!.size!.width > maxWidth);
      if (!shouldScroll) {
        setState(() {
          _scrollable = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 2,
      child: TabBar.secondary(
        tabAlignment: _scrollable ? widget.tabAlignment : null,
        overlayColor: WidgetStateProperty.all(EnsColors.neutral200),
        labelStyle: EnsTextStyle.text16_w700_normal_title,
        labelColor: EnsColors.primary,
        unselectedLabelColor: EnsColors.body,
        unselectedLabelStyle: EnsTextStyle.text16_w700_normal_title,
        indicatorWeight: 4.0,
        indicatorColor: EnsColors.primary,
        controller: widget.tabController,
        isScrollable: _scrollable,
        tabs: widget.labels
            .map(
              (label) => Tab(
                key: _keys[widget.labels.indexOf(label)],
                text: label,
              ),
            )
            .toList(),
      ),
    );
  }
}
