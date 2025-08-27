/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/viewmodels/ens_app_bar_view_model.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';

class EnsAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(64);
  final Widget? leading;
  final String? title;
  final Widget? action;
  final EdgeInsetsGeometry? titlePadding;

  const EnsAppBar({
    super.key,
    this.leading,
    this.title,
    this.action,
    this.titlePadding,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, EnsAppBarViewModel>(
      converter: (store) => EnsAppBarViewModel(store, EnsModuleContainer.currentInjector.getAppConfig()),
      onInit: (store) => store.dispatch(FetchUserDataAction(force: false)),
      distinct: true,
      builder: (_, vm) {
        return AppBar(
          elevation: 0,
          leading: leading,
          surfaceTintColor: Colors.white,
          title: _Title(title, action, leading, titlePadding),
          backgroundColor: EnsColors.light,
          foregroundColor: EnsColors.title,
          automaticallyImplyLeading: false,
          actions: _buildAction(),
          iconTheme: const IconThemeData(color: EnsColors.title),
          centerTitle: title != null,
          excludeHeaderSemantics: true,
        );
      },
    );
  }

  List<Widget> _buildAction() {
    if (action != null) {
      return [action!];
    }
    return [];
  }
}

class EnsDefaultAppBarLeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return IconButton(
          highlightColor: EnsColors.neutral200,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          tooltip: 'Retour',
        );
      },
    );
  }
}

class _Title extends StatelessWidget {
  final String? title;
  final EdgeInsetsGeometry? titlePadding;
  final Widget? action;
  final Widget? leading;

  const _Title(this.title, this.action, this.leading, this.titlePadding);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: titlePadding ?? EdgeInsets.zero,
            child: Text(
              title != null ? title! : '',
              style: EnsTextStyle.text16_title,
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ),
        ),
      ],
    );
  }
}
