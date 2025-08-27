/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';

class EnsForm extends StatelessWidget {
  final GlobalKey formKey;
  final GlobalKey? shakeKey;
  final ScrollController? scrollController;
  final EdgeInsets padding;
  final Widget child;
  final Function()? onChanged;

  const EnsForm({
    super.key,
    required this.child,
    required this.formKey,
    this.shakeKey,
    required this.scrollController,
    this.padding = const EdgeInsets.symmetric(horizontal: 24),
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: dont_use_form
    final form = Form(key: formKey, onChanged: onChanged, child: child);
    return ShakeWidget(
      key: shakeKey,
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        excludeFromSemantics: true,
        child: scrollController == null
            ? Padding(
                padding: padding,
                child: form,
              )
            : ScrollviewWithScrollbar(
                controller: scrollController,
                padding: padding,
                child: form,
              ),
      ),
    );
  }
}
