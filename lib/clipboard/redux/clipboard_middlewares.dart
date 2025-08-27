/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/clipboard/domain/data/clipboard_wrapper.dart';
import 'package:fr_cnamts_ens/clipboard/redux/clipboard_actions.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:redux/redux.dart';

class ClipboardMiddlewares {
  final ClipboardWrapper _clipboardWrapper;

  ClipboardMiddlewares(this._clipboardWrapper);

  static List<Middleware<EnsState>> create(ClipboardWrapper clipboardWrapper) {
    final middlewares = ClipboardMiddlewares(clipboardWrapper);

    return [
      TypedMiddleware<EnsState, CopyToClipboardAction>(middlewares._onCopyToClipboardAction).call,
    ];
  }

  void _onCopyToClipboardAction(Store<EnsState> store, CopyToClipboardAction action, NextDispatcher next) {
    _clipboardWrapper
        .setData(text: action.text)
        .then((value) => store.dispatch(DisplaySnackbarAction.success(action.successMessage)));
    next(action);
  }
}
