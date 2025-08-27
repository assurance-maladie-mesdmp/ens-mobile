/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of '../notifications_center_screen.dart';

class _BulletNotificationWidget extends StatelessWidget {
  final bool isTransparent;

  const _BulletNotificationWidget(this.isTransparent);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, top: 6.0, bottom: 6.0),
      child: Container(
        height: 8.0,
        width: 8.0,
        decoration: BoxDecoration(
          color: isTransparent ? Colors.transparent : EnsColors.secondary,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
