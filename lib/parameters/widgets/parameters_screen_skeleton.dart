/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';

class ParametersScreenSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const _SubTitle('Informations de connexion'),
          _SkeletonItemInformationsConnexion(),
          const Divider(height: 2, color: EnsColors.neutral200),
          _SkeletonItemInformationsConnexion(),
          const Divider(height: 2, color: EnsColors.neutral200),
          _SkeletonItemInformationsConnexion(),
          const Divider(height: 2, color: EnsColors.neutral200),
          _SkeletonItemInformationsConnexion(),
          const _SubTitle('Sécurité'),
          _SkeletonItemOther(),
          const Divider(height: 2, color: EnsColors.neutral200),
          _SkeletonItemOther(),
          const Divider(height: 2, color: EnsColors.neutral200),
          const _SubTitle('Confidentialité'),
          _SkeletonItemOther(),
          const Divider(height: 2, color: EnsColors.neutral200),
          _SkeletonItemOther(),
        ],
      ),
    );
  }
}

class _SubTitle extends StatelessWidget {
  final String subTitle;

  const _SubTitle(this.subTitle);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 16),
      child: Wrap(
        children: [
          Text(subTitle, style: EnsTextStyle.text14_w600_normal_body),
          Container(),
        ],
      ),
    );
  }
}

class _SkeletonItemOther extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.only(top: 32, left: 24, right: 24, bottom: 24),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SkeletonBox(width: 92.0),
        ],
      ),
    );
  }
}

class _SkeletonItemInformationsConnexion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.only(top: 32, left: 24, right: 24, bottom: 24),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SkeletonBox(width: 92.0),
          SizedBox(height: 12),
          SkeletonBox(width: 208.0),
        ],
      ),
    );
  }
}
