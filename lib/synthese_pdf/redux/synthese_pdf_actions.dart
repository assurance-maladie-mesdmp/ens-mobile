/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'synthese_pdf_redux.dart';

class InitSynthesePdfStateAction {}

class FetchSynthesePMLAction {}

class _ProcessFetchSynthesePMLSuccessAction {
  final EnsFileContent synthesePML;

  _ProcessFetchSynthesePMLSuccessAction(this.synthesePML);
}

class _ProcessFetchSynthesePMLErrorAction {}

class FetchSyntheseQuestionnaireAction {
  final String? version;
  final QuestionnaireCode? code;

  FetchSyntheseQuestionnaireAction({this.version, this.code});
}

class _ProcessFetchSyntheseQuestionnaireSuccessAction {
  final EnsFileContent syntheseAQ;

  _ProcessFetchSyntheseQuestionnaireSuccessAction(this.syntheseAQ);
}

class _ProcessFetchSyntheseQuestionnaireErrorAction {}

class ExportSynthesePdfAction {
  final EnsFileContent synthese;
  final String filename;

  ExportSynthesePdfAction(this.synthese, this.filename);
}

class UploadSynthesePmlPdfAction {
  final EnsFileContent ensFileContent;
  final bool? isForcedToVisible;

  UploadSynthesePmlPdfAction({required this.ensFileContent, this.isForcedToVisible});
}

class UploadSyntheseQuestionnairePdfAction {
  final EnsFileContent ensFileContent;
  final QuestionnaireCode questionnaireCode;
  final bool? isForcedToVisible;

  UploadSyntheseQuestionnairePdfAction({
    required this.ensFileContent,
    required this.questionnaireCode,
    this.isForcedToVisible,
  });
}

class UploadSynthesePdfWithConfidentialiteChargeeAction {
  final EnsFileContent ensFileContent;
  final DefaultConfidentiality defaultConfidentiality;
  final QuestionnaireCode? questionnaireCode;

  UploadSynthesePdfWithConfidentialiteChargeeAction(
    this.ensFileContent,
    this.defaultConfidentiality,
    this.questionnaireCode,
  );
}

class ExportSyntheseRubriquePmlAction {
  final EnsPmlSection pmlSection;

  ExportSyntheseRubriquePmlAction(this.pmlSection);
}

class DisplayConfidentialiteBottomSheetAction {
  final bool shouldDisplayConfidentialiteBottomSheet;

  DisplayConfidentialiteBottomSheetAction(this.shouldDisplayConfidentialiteBottomSheet);
}

class UpdateSyntheseToDocsStatusAction extends Equatable {
  final AllPurposesStatus status;

  const UpdateSyntheseToDocsStatusAction(this.status);

  @override
  List<Object?> get props => [status];
}
