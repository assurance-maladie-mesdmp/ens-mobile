/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_carousel.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_carousel_item.dart';

class CatalogueCarouselWidget extends StatefulWidget {
  final List<EnsCarouselItem> items;

  const CatalogueCarouselWidget({super.key, required this.items});

  @override
  State<CatalogueCarouselWidget> createState() => _CatalogueCarouselWidgetState();
}

class _CatalogueCarouselWidgetState extends State<CatalogueCarouselWidget> {
  bool isVertical = false;
  bool isInitDone = false;

  @override
  void initState() {
    super.initState();

    if (!isInitDone) {
      final EnsCarouselItemImage screenshot = widget.items[0] as EnsCarouselItemImage;
      final imageStream = screenshot.image.image.resolve(ImageConfiguration.empty);
      imageStream.addListener(
        ImageStreamListener((info, syncCall) {
          setState(() {
            isVertical = info.image.height > info.image.width;
            isInitDone = true;
          });
        }),
      );
    }
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: EnsCarousel(
          items: widget.items,
          height: isVertical ? 400 : 172,
          addPaddingUnderSlider: true,
          enableInfiniteScroll: false,
          viewportFraction: isVertical ? 0.81 : 0.88,
        ),
      );
}
