/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'receive_sharing_redux.dart';

class ReceiveSharingMiddlewares {
  final FileHelper fileHelper;
  final ReceiveSharingHelper receiveSharingHelper;

  ReceiveSharingMiddlewares(this.fileHelper, this.receiveSharingHelper);

  static List<Middleware<EnsInitialState>> create(FileHelper filerHelper, ReceiveSharingHelper receiveSharingHelper) {
    final middlewares = ReceiveSharingMiddlewares(filerHelper, receiveSharingHelper);

    return [
      TypedMiddleware<EnsInitialState, InitReceiveSharingAction>(middlewares._onInitReceiveSharing).call,
    ];
  }

  Future<void> _onInitReceiveSharing(
    Store<EnsInitialState> store,
    InitReceiveSharingAction action,
    NextDispatcher next,
  ) async {
    next(action);

    final intialMedias = await receiveSharingHelper.getInitialMedia();
    _receiveSharingFiles(store, intialMedias?.attachments);

    receiveSharingHelper.getMediaStream().listen((SharedMedia media) {
      _receiveSharingFiles(store, media.attachments);
    });
  }

  void _receiveSharingFiles(Store<EnsInitialState> store, List<SharedAttachment?>? mediaFiles) {
    if (mediaFiles != null) {
      final List<EnsFileContent> fileContents = [];

      for (final mediaFile in mediaFiles) {
        if (mediaFile != null) {
          final File file = File(mediaFile.path);
          fileContents.add(fileHelper.extractEnsFileContentFromFile(file));
        }
      }

      store.dispatch(_ReceiveSharingAction(fileContents));

      if (mediaFiles.isNotEmpty && store.state.authState.status != AuthStatus.LOGGED_IN) {
        store.dispatch(EnterAuthenticatedModeAction(false));
      }
    }
  }
}
