/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_carousel_item.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_carousel_selector.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_circle_arrow_button.dart';
import 'package:fr_cnamts_ens/utils/text_scale_utils.dart';

class EnsCarousel extends StatefulWidget {
  final List<EnsCarouselItem> items;
  final double height;
  final double textHeight;
  final double viewportFraction;
  final bool enableInfiniteScroll;
  final bool disableCenter;
  final bool padEnds;
  final bool addPaddingUnderSlider;
  final Function()? tapOnPrevious;
  final Function()? tapOnNext;

  const EnsCarousel({
    super.key,
    required this.items,
    this.viewportFraction = 0.92,
    this.height = 256,
    this.textHeight = 120,
    this.enableInfiniteScroll = true,
    this.disableCenter = false,
    this.padEnds = true,
    this.addPaddingUnderSlider = false,
    this.tapOnPrevious,
    this.tapOnNext,
  });

  @override
  State<EnsCarousel> createState() => _EnsCarouselState();
}

class _EnsCarouselState extends State<EnsCarousel> {
  final CarouselSliderController _controller = CarouselSliderController();
  final ValueNotifier<int> _indexController = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    final textScaleFactor = TextScaleUtils.getTextScaleFactor(context);

    final double textHeight = max(1, widget.textHeight * textScaleFactor);
    final double carouselHeight = widget.height + textHeight - widget.textHeight;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarouselSlider.builder(
          itemCount: widget.items.length,
          itemBuilder: (_, index, realIndex) => index == _indexController.value
              ? widget.items[index]
              : Semantics(
                  excludeSemantics: true,
                  child: FocusTraversalGroup(
                    descendantsAreFocusable: false,
                    child: widget.items[index],
                  ),
                ),
          carouselController: _controller,
          options: CarouselOptions(
            height: carouselHeight,
            viewportFraction: widget.viewportFraction,
            enableInfiniteScroll: widget.enableInfiniteScroll && widget.items.length > 1,
            padEnds: widget.padEnds,
            disableCenter: widget.disableCenter,
            onPageChanged: (index, _) {
              setState(() {
                _indexController.value = index;
              });
            },
          ),
        ),
        if (widget.items.length > 1)
          Padding(
            padding: widget.addPaddingUnderSlider ? const EdgeInsets.only(top: 24) : EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: EnsCircleArrowButton(
                    onTap: () {
                      widget.tapOnPrevious?.call();
                      _controller.previousPage();
                    },
                    direction: ArrowDirection.LEFT,
                    semanticLabel: 'Information précédente',
                    backgroundColor: EnsColors.primary,
                  ),
                ),
                EnsCarouselSelector(
                  length: widget.viewportFraction <= 0.6 ? widget.items.length - 1 : widget.items.length,
                  indexController: _indexController,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: EnsCircleArrowButton(
                    onTap: () {
                      widget.tapOnNext?.call();
                      _controller.nextPage();
                    },
                    direction: ArrowDirection.RIGHT,
                    semanticLabel: 'Information suivante',
                    backgroundColor: EnsColors.primary,
                  ),
                ),
              ],
            ),
          )
        else if (widget.items.length == 1)
          const SizedBox(height: 24),
      ],
    );
  }
}
