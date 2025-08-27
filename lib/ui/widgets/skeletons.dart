/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:shimmer/shimmer.dart';

class DocumentItemSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const ColoredBox(
        color: EnsColors.light,
        child: Padding(
          padding: EdgeInsets.only(left: 24, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32),
              SkeletonBox(width: 225.0),
              SizedBox(height: 12),
              SkeletonBox(width: 121.0),
              SizedBox(height: 32),
              SkeletonBox(width: 72.0),
            ],
          ),
        ),
      );
}

class ListItemSkeleton extends StatelessWidget {
  const ListItemSkeleton();

  @override
  Widget build(BuildContext context) => const ColoredBox(
        color: EnsColors.light,
        child: Padding(
          padding: EdgeInsets.only(left: 24, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32),
              SkeletonBox(width: 225.0),
              SizedBox(height: 24),
              SkeletonBox(width: 121.0),
              SizedBox(height: 12),
              SkeletonBox(width: 174.0),
            ],
          ),
        ),
      );
}

class ConsentementPsItemSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const ColoredBox(
        color: EnsColors.light,
        child: Padding(
          padding: EdgeInsets.only(left: 24, bottom: 24, top: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SkeletonCircle(radius: 20),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4),
                  SkeletonBox(width: 225.0),
                  SizedBox(height: 20),
                  SkeletonBox(width: 121.0),
                  SizedBox(height: 8),
                  SkeletonBox(width: 72.0),
                ],
              ),
            ],
          ),
        ),
      );
}

class ParametersItemSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: DecoratedBox(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0), color: EnsColors.light),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _SkeletonItem(),
              const Divider(height: 2, color: EnsColors.neutral200),
              _SkeletonItem(),
              const Divider(height: 2, color: EnsColors.neutral200),
              _SkeletonItem(),
              const Divider(height: 2, color: EnsColors.neutral200),
              _SkeletonItem(),
            ],
          ),
        ),
      );
}

class _SkeletonItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 32),
          SkeletonBox(width: 92.0, height: 8.0),
          SizedBox(height: 12),
          SkeletonBox(width: 208.0),
        ],
      ),
    );
  }
}

class MesureFormSkeleton extends StatelessWidget {
  const MesureFormSkeleton({super.key});

  @override
  Widget build(BuildContext context) => const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SkeletonBox(width: 100.0, height: 28.0),
          SizedBox(height: 24),
          Divider(height: 2, color: EnsColors.neutral200),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SkeletonBox(width: 40.0, height: 20.0),
                SkeletonBox(width: 140.0, height: 20.0),
              ],
            ),
          ),
          Divider(height: 2, color: EnsColors.neutral200),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SkeletonBox(width: 48.0, height: 20.0),
                SkeletonBox(width: 44.0, height: 20.0),
              ],
            ),
          ),
          Divider(height: 2, color: EnsColors.neutral200),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SkeletonBox(width: 20.0, height: 20.0),
                SkeletonBox(width: 28.0, height: 20.0),
              ],
            ),
          ),
          Divider(height: 2, color: EnsColors.neutral200),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SkeletonBox(width: 200.0, height: 20.0),
                SkeletonBox(width: 52.0, height: 20.0),
              ],
            ),
          ),
          SizedBox(height: 100),
        ],
      );
}

class SkeletonBox extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;

  const SkeletonBox({super.key, this.width, this.height = 12.0, this.radius = 4});

  @override
  Widget build(BuildContext context) => SizedBox(
        width: width,
        height: height,
        child: Shimmer.fromColors(
          baseColor: EnsColors.neutral200,
          highlightColor: EnsColors.neutral100,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius), color: EnsColors.light),
            height: 12,
            width: width,
          ),
        ),
      );
}

class SkeletonCircle extends StatelessWidget {
  final double radius;

  const SkeletonCircle({super.key, required this.radius});

  @override
  Widget build(BuildContext context) => SizedBox(
        width: radius,
        height: radius,
        child: Shimmer.fromColors(
          baseColor: EnsColors.neutral200,
          highlightColor: EnsColors.neutral100,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius), color: EnsColors.light),
            height: radius,
            width: radius,
          ),
        ),
      );
}

class _SkeletonProfileItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24, bottom: 12, top: 12),
      child: Row(
        children: [
          SkeletonCircle(radius: 40),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonBox(width: 92.0, height: 8.0),
                SizedBox(height: 4),
                SkeletonBox(width: 152.0),
              ],
            ),
          ),
          SizedBox(height: 12, width: 38),
        ],
      ),
    );
  }
}

class ProfileItemSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0), color: EnsColors.light),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _SkeletonProfileItem(),
            _SkeletonProfileItem(),
          ],
        ),
      );
}

class PreventionSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 28, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SkeletonBox(width: 280, height: 24),
            SizedBox(height: 12),
            SkeletonBox(width: 200, height: 24),
            SizedBox(height: 24),
            SkeletonBox(width: 240, height: 16),
            SizedBox(height: 24),
            SkeletonBox(width: 280),
            SizedBox(height: 12),
            SkeletonBox(width: 260),
            SizedBox(height: 12),
            SkeletonBox(width: 280),
            SizedBox(height: 12),
            SkeletonBox(width: 260),
          ],
        ),
      );
}

class CatalogueServiceItemSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const Material(
        color: EnsColors.light,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Row(
                children: [
                  SkeletonBox(
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SkeletonBox(width: 210),
                        SizedBox(height: 4),
                        SkeletonBox(width: 210),
                        SizedBox(height: 12),
                        SkeletonBox(width: 232),
                        SizedBox(height: 4),
                        SkeletonBox(width: 184),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}

class CheckboxItemSkeleton extends StatelessWidget {
  const CheckboxItemSkeleton();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: EnsColors.light,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 2,
          color: Colors.transparent,
        ),
        boxShadow: const [BoxShadow(color: EnsColors.neutral200, blurRadius: 16)],
      ),
      child: Material(
        borderRadius: BorderRadius.circular(8),
        color: Colors.transparent,
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SkeletonCircle(radius: 24),
                  SizedBox(width: 16),
                  SkeletonBox(width: 200),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkeletonCard extends StatelessWidget {
  const SkeletonCard();

  @override
  Widget build(BuildContext context) {
    return const EnsCard(
      borderRadius: 8,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Row(
        children: [
          SkeletonCircle(radius: 48),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SkeletonBox(width: 109, height: 9),
              SizedBox(height: 8),
              SkeletonBox(width: 158, height: 9),
            ],
          ),
        ],
      ),
    );
  }
}

class SkeletonCardWithDescription extends StatelessWidget {
  const SkeletonCardWithDescription();

  @override
  Widget build(BuildContext context) {
    return const EnsCard(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Row(
        children: [
          SkeletonCircle(radius: 48),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SkeletonBox(width: 160, height: 12),
              SizedBox(height: 8),
              SkeletonBox(width: 100, height: 12),
              SizedBox(height: 8),
              SkeletonBox(width: 160, height: 8),
              SizedBox(height: 8),
              SkeletonBox(width: 100, height: 8),
            ],
          ),
        ],
      ),
    );
  }
}

class PmlFormSkeleton extends StatelessWidget {
  const PmlFormSkeleton();

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 32),
          Container(
            height: 72,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              border: Border.all(color: EnsColors.neutral200, width: 2),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SkeletonBox(height: 12),
                SizedBox(height: 12),
                SkeletonBox(height: 12),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 48),
                SkeletonBox(width: 160, height: 12),
                SizedBox(height: 8),
                SkeletonBox(width: 90, height: 12),
                SizedBox(height: 16),
                SkeletonBox(height: 40),
                SizedBox(height: 16),
                Row(
                  children: [
                    SkeletonBox(width: 12),
                    SizedBox(width: 16),
                    SkeletonBox(width: 125),
                  ],
                ),
                SizedBox(height: 48),
                SkeletonBox(width: 160, height: 12),
                SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SkeletonBox(height: 40, width: 80, radius: 8),
                    SizedBox(width: 16),
                    SkeletonBox(height: 40, width: 80, radius: 8),
                    SizedBox(width: 16),
                    SkeletonBox(height: 40, width: 80, radius: 8),
                  ],
                ),
                SizedBox(height: 48),
                SkeletonBox(width: 160, height: 12, radius: 8),
                SizedBox(height: 16),
                SkeletonBox(height: 40),
                SizedBox(height: 48),
                SkeletonBox(width: 160, height: 12, radius: 8),
                SizedBox(height: 8),
                SkeletonBox(width: 90, height: 12),
                SizedBox(height: 16),
                SkeletonBox(height: 80),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
