/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';

class EnsPopScope extends StatelessWidget {
  final bool canPop;
  final VoidCallback? onScreenClosedInvoked;
  final Function(NavigatorState navigator)? onPopInvoked;
  final Widget child;

  const EnsPopScope.shouldPop({
    super.key,
    this.onScreenClosedInvoked,
    required this.child,
  })  : canPop = true,
        onPopInvoked = null;

  const EnsPopScope.shouldNotPop({
    super.key,
    this.onScreenClosedInvoked,
    this.onPopInvoked,
    required this.child,
  }) : canPop = false;

  @override
  Widget build(BuildContext context) {
    // ignore: dont_use_popscope
    return PopScope(
      canPop: canPop,
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) {
          onScreenClosedInvoked?.call();
          return;
        }
        onPopInvoked?.call(Navigator.of(context));
      },
      child: child,
    );
  }
}
