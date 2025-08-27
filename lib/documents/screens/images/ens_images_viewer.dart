/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_circle_arrow_button.dart';

class EnsImagesViewer extends StatefulWidget {
  final List<Widget> items;

  final EnsImagesViewerController _controller;

  const EnsImagesViewer({
    super.key,
    required this.items,
    required EnsImagesViewerController controller,
  }) : _controller = controller;

  @override
  State<EnsImagesViewer> createState() => _EnsImageViewerState();
}

class _EnsImageViewerState extends State<EnsImagesViewer> {
  _EnsImageViewerState();

  EnsImagesViewerController get _controller => widget._controller;

  @override
  void didUpdateWidget(covariant EnsImagesViewer oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.itemCounts = widget.items.length;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.index.value = min(_controller.index.value, _controller.itemCounts - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          carouselController: _controller._carouselController,
          options: CarouselOptions(
            pageViewKey: null,
            initialPage: _controller.index.value,
            height: MediaQuery.of(context).size.height,
            enlargeCenterPage: false,
            enableInfiniteScroll: false,
            onPageChanged: (index, _) {
              _controller.index.value = index;
            },
          ),
          items: widget.items,
        ),
        ValueListenableBuilder<int>(
          valueListenable: _controller.index,
          builder: (_, index, __) {
            return Row(
              children: [
                AnimatedSlide(
                  offset: index > 0 ? Offset.zero : const Offset(-2, 0),
                  duration: const Duration(milliseconds: 350),
                  child: EnsCircleArrowButton(
                    direction: ArrowDirection.LEFT,
                    size: 40,
                    padding: 8,
                    onTap: () => _controller._carouselController.previousPage(),
                  ),
                ),
                const Spacer(),
                AnimatedSlide(
                  offset: index < _controller.itemCounts - 1 ? Offset.zero : const Offset(2, 0),
                  duration: const Duration(milliseconds: 200),
                  child: EnsCircleArrowButton(
                    direction: ArrowDirection.RIGHT,
                    size: 40,
                    padding: 8,
                    onTap: () => _controller._carouselController.nextPage(),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

class EnsImagesViewerController {
  final CarouselSliderController _carouselController = CarouselSliderController();
  final ValueNotifier<int> index = ValueNotifier(0);
  final int initialPage = 0;
  int itemCounts = 0;

  void goToLastPage() {
    _carouselController.animateToPage(itemCounts - 1);
  }
}
