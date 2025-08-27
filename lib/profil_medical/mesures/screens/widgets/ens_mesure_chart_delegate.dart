/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';

class EnsMesureDelegate extends SliverPersistentHeaderDelegate {
  BuildContext context;
  Widget child;

  EnsMesureDelegate(this.context, this.child);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) => child;

  @override
  double get maxExtent => MediaQuery.of(context).size.height * 0.45;

  @override
  double get minExtent => MediaQuery.of(context).size.height * 0.3;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
