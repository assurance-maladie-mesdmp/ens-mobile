/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';

class EnsIllustration extends StatelessWidget {
  final String asset;
  static const _MIN_SIZE = 64.0;
  static const _MAX_SIZE = 160.0;

  const EnsIllustration(this.asset);

  @override
  Widget build(BuildContext context) {
    return MinMaxHeightBox(
      minHeight: _MIN_SIZE,
      maxHeight: _MAX_SIZE,
      child: EnsSvg(asset, height: _MAX_SIZE, width: _MAX_SIZE),
    );
  }
}

class MinMaxHeightBox extends SingleChildRenderObjectWidget {
  final double minHeight;
  final double maxHeight;

  const MinMaxHeightBox({super.key, super.child, required this.minHeight, required this.maxHeight});

  @override
  RenderObject createRenderObject(BuildContext context) {
    return MinMaxHeightRenderBox(minHeight: minHeight, maxHeight: maxHeight);
  }
}

class MinMaxHeightRenderBox extends RenderProxyBox {
  MinMaxHeightRenderBox({
    required double minHeight,
    required double maxHeight,
  })  : assert(minHeight > 0.0),
        assert(minHeight.isFinite),
        assert(maxHeight >= minHeight),
        _minHeight = minHeight,
        _maxHeight = maxHeight,
        super();

  double _minHeight;

  // ignore: avoid_setters_without_getters
  set minHeight(double value) {
    assert(value > 0.0);
    assert(value <= _maxHeight);
    assert(value.isFinite);
    if (_minHeight == value) {
      return;
    }
    _minHeight = value;
    markNeedsLayout();
  }

  double _maxHeight;

  // ignore: avoid_setters_without_getters
  set maxHeight(double value) {
    assert(value >= _minHeight);
    if (_maxHeight == value) {
      return;
    }
    _maxHeight = value;
    markNeedsLayout();
  }

  @override
  double computeMinIntrinsicHeight(double width) => 0;

  @override
  double computeMaxIntrinsicHeight(double width) => 0;

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    final double height;
    if (constraints.maxHeight >= _maxHeight) {
      height = _maxHeight;
    } else if (constraints.maxHeight > _minHeight) {
      height = constraints.maxHeight;
    } else {
      height = 0;
    }
    return Size(constraints.maxWidth, height);
  }

  @override
  void performLayout() {
    size = computeDryLayout(constraints);
    if (child != null && size.height > 0) {
      child!.layout(BoxConstraints.tight(size));
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (size.height > 0) {
      super.paint(context, offset);
    }
  }
}
