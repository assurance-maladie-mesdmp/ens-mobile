/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'redux/receive_sharing_redux.dart';

class ReceiveSharingHelper {
  final handler = ShareHandlerPlatform.instance;

  Stream<SharedMedia> getMediaStream() {
    return ShareHandlerPlatform.instance.sharedMediaStream;
  }

  Future<SharedMedia?> getInitialMedia() {
    return ShareHandlerPlatform.instance.getInitialSharedMedia();
  }
}
