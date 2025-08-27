/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'synthese_pdf_redux.dart';

class SynthesePdfState extends Equatable {
  final AllPurposesStatus status;
  final SynthesePdfData? data;
  final AllPurposesStatus saveDocumentStatus;

  const SynthesePdfState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.data,
    this.saveDocumentStatus = AllPurposesStatus.NOT_LOADED,
  });

  bool get isSuccessWithData => status.isSuccess() && data != null;

  bool get isErrorOrSuccessWithoutData => status.isError() || (status.isSuccess() && data == null);

  SynthesePdfState clone({
    AllPurposesStatus? status,
    SynthesePdfData? data,
    AllPurposesStatus? saveDocumentStatus,
  }) {
    return SynthesePdfState(
      status: status ?? this.status,
      data: data ?? this.data,
      saveDocumentStatus: saveDocumentStatus ?? this.saveDocumentStatus,
    );
  }

  @override
  List<Object?> get props => [status, data, saveDocumentStatus];
}

class SynthesePdfData extends Equatable {
  final EnsFileContent synthesePdf;
  final bool displayConfidentialiteBottomSheet;

  const SynthesePdfData({
    required this.synthesePdf,
    required this.displayConfidentialiteBottomSheet,
  });

  SynthesePdfData clone({
    EnsFileContent? synthesePdf,
    bool? displayConfidentialiteBottomSheet,
  }) {
    return SynthesePdfData(
      synthesePdf: synthesePdf ?? this.synthesePdf,
      displayConfidentialiteBottomSheet: displayConfidentialiteBottomSheet ?? this.displayConfidentialiteBottomSheet,
    );
  }

  @override
  List<Object?> get props => [synthesePdf, displayConfidentialiteBottomSheet];
}
