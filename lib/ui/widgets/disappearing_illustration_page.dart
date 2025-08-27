/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_illustration.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';

class DisappearingIllustrationPage extends StatefulWidget {
  final EnsPersistentInfoBox? infoBox;
  final String asset;
  final List<Widget> children;
  final double horizontalPadding;
  final ScrollPhysics? physics;

  const DisappearingIllustrationPage({
    this.infoBox,
    required this.asset,
    required this.children,
    this.horizontalPadding = 24,
    this.physics,
  });

  @override
  State<DisappearingIllustrationPage> createState() => _DisappearingIllustrationPageState();
}

class _DisappearingIllustrationPageState extends State<DisappearingIllustrationPage> {
  double height = -1;
  final globalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (height == -1) {
        setState(() => height = globalKey.currentContext?.size?.height ?? 0);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return ScrollviewWithScrollbar(
          physics: widget.physics,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (widget.infoBox != null) ...[
                        widget.infoBox!,
                        SizedBox(height: DeviceUtils.isSmallDevice(context) ? 12 : 20),
                      ],
                      Flexible(child: EnsIllustration(widget.asset)),
                      SizedBox(height: DeviceUtils.isSmallDevice(context) ? 8 : 16),
                      ...widget.children,
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
