/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';

class LoadingDetailsScreen extends StatelessWidget {
  const LoadingDetailsScreen();

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _SkeletonHeader(),
          const _SkeletonWithCircularItem(),
          const SizedBox(height: 14),
          const _SkeletonWithCircularItem(displayBottomSkeletonBox: true),
          const SizedBox(height: 14),
          _SkeletonItem(),
          const SizedBox(height: 14),
          _SkeletonItem(),
        ],
      ),
    );
  }
}

class _SkeletonWithCircularItem extends StatelessWidget {
  final bool displayBottomSkeletonBox;

  const _SkeletonWithCircularItem({this.displayBottomSkeletonBox = false});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: EnsColors.light,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SkeletonBox(
              width: 155,
              radius: 14,
            ),
            const SizedBox(
              height: 24,
            ),
            _SkeletonRow(),
            const SizedBox(height: 16),
            _SkeletonRow(),
            if (displayBottomSkeletonBox) ...[
              const SizedBox(height: 26),
              const SkeletonBox(
                width: 237,
                height: 12,
                radius: 14,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _SkeletonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        SkeletonCircle(radius: 28),
        SizedBox(width: 16),
        SkeletonBox(
          width: 237,
          height: 12,
          radius: 14,
        ),
      ],
    );
  }
}

class _SkeletonHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SkeletonBox(
            width: 160,
            height: 12,
            radius: 14,
          ),
          SizedBox(height: 24),
          SkeletonBox(
            width: 172,
            height: 12,
            radius: 14,
          ),
          SizedBox(height: 8),
          SkeletonBox(
            width: 256,
            height: 12,
            radius: 14,
          ),
          SizedBox(height: 24),
          SkeletonBox(
            width: 160,
            height: 24,
            radius: 14,
          ),
        ],
      ),
    );
  }
}

class _SkeletonItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: EnsColors.light,
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonBox(
                  width: 158,
                  height: 12,
                  radius: 14,
                ),
                SizedBox(height: 16),
                SkeletonBox(
                  width: 282,
                  height: 12,
                  radius: 14,
                ),
                SizedBox(height: 8),
                SkeletonBox(
                  width: 267,
                  height: 12,
                  radius: 14,
                ),
                SizedBox(height: 16),
                SkeletonBox(
                  width: 116,
                  height: 12,
                  radius: 14,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
