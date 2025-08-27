/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/files/domain/file_preprocessor.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_image_content.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class MultiImagesPdfPreviewScreenViewModel extends AnalyticsViewModel with EquatableMixin {
  static const _SUCCESS_AND_ERROR = [
    MultiPagesStatus.SUCCESS,
    MultiPagesStatus.GENERIC_ERROR,
    MultiPagesStatus.ERROR_FILE_TOO_BIG,
  ];

  final Store<EnsState> _store;
  final List<EnsFileImageContent> pages;
  final MultiPagesStatus multiPagesStatus;
  final EnsFileContent? finalFileContent;
  final String? dossierId;
  final bool isBlackAndWhiteLoading;

  const MultiImagesPdfPreviewScreenViewModel._internal(
    this._store,
    this.pages,
    this.multiPagesStatus,
    this.finalFileContent,
    this.dossierId,
    this.isBlackAndWhiteLoading,
  ) : super(_store);

  factory MultiImagesPdfPreviewScreenViewModel(Store<EnsState> store, [String? dossierId]) {
    final multiPageState = store.state.documentsState.multiPagesListState;
    final isBlackAndWhiteLoading = store.state.documentsState.isBlackAndWhiteLoading;
    List<EnsFileImageContent> pages = [];
    final MultiPagesStatus multiPagesStatus = _determineMultiPagesStatus(multiPageState);
    EnsFileContent? finalFileContent;

    if (multiPageState is MultiPagesListWithPages) {
      pages = multiPageState.pages;
    }

    if (multiPageState is MultiPagesListStateGenerated) {
      finalFileContent = multiPageState.ensFileContent;
    }

    return MultiImagesPdfPreviewScreenViewModel._internal(
      store,
      pages,
      multiPagesStatus,
      finalFileContent,
      dossierId,
      isBlackAndWhiteLoading,
    );
  }

  static MultiPagesStatus _determineMultiPagesStatus(MultiPagesListState multiPageState) {
    switch (multiPageState) {
      case MultiPagesListStateLoading _:
        return MultiPagesStatus.LOADING;
      case MultiPagesListStateSuccess _:
      case MultiPagesListStateGenerated _:
        return MultiPagesStatus.SUCCESS;
      case MultiPagesListStateError _:
        if (multiPageState.errorType == MultidocErrorType.TOO_BIG) {
          return MultiPagesStatus.ERROR_FILE_TOO_BIG;
        }
        return MultiPagesStatus.GENERIC_ERROR;
      case MultiPagesListStateGenerating _:
        return MultiPagesStatus.GENERATING_OUTPUT;
      case MultiPagesListStateNotLoaded _:
      default:
        return MultiPagesStatus.NOT_LOADED;
    }
  }

  void cancelDocumentCreation() {
    _store.dispatch(CancelMultiPageStateAction());
  }

  void validateMultiPagesDoc() {
    _store.dispatch(ValidateMultiPageAction(pages));
  }

  void deletePage(int index) {
    _store.dispatch(DeleteDocumentPageAction(index));
  }

  void continueMultiPageState() {
    final multiPagesListState = _store.state.documentsState.multiPagesListState;
    if (multiPagesListState is MultiPagesListStateGenerated) {
      _store.dispatch(ContinueMultiPageStateAction(multiPagesListState.pages));
    }
  }

  bool get isSuccessOrError {
    return _SUCCESS_AND_ERROR.contains(multiPagesStatus);
  }

  void passImageToBlackAndWhite(int index) {
    tagAction(
      const EnsTag(
        name: 'camera_icone_noir_blanc',
        level1: 'documents',
        level2: 'documents_ajout',
        level3: 'camera',
        category: EnsAnalyticsCategory.CLICK,
      ),
    );
    _store.dispatch(TransformToBlackAndWhitePageAction(index));
  }

  void reCropDocument(int index) {
    tagAction(
      const EnsTag(
        name: 'camera_icone_recadrer',
        level1: 'documents',
        level2: 'documents_ajout',
        level3: 'camera',
        category: EnsAnalyticsCategory.CLICK,
      ),
    );
    _store.dispatch(ReCropAction(index));
  }

  @override
  List<Object?> get props => [pages, multiPagesStatus, finalFileContent, dossierId, isBlackAndWhiteLoading];
}

enum MultiPagesStatus { NOT_LOADED, LOADING, SUCCESS, GENERIC_ERROR, ERROR_FILE_TOO_BIG, GENERATING_OUTPUT }
