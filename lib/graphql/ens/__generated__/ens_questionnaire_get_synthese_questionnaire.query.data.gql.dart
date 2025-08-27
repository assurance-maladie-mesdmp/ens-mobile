// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_questionnaire_get_synthese_questionnaire.query.data.gql.g.dart';

abstract class Gget_questionnaire_syntheseData
    implements
        Built<Gget_questionnaire_syntheseData,
            Gget_questionnaire_syntheseDataBuilder> {
  Gget_questionnaire_syntheseData._();

  factory Gget_questionnaire_syntheseData(
          [void Function(Gget_questionnaire_syntheseDataBuilder b) updates]) =
      _$Gget_questionnaire_syntheseData;

  static void _initializeBuilder(Gget_questionnaire_syntheseDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_questionnaire_syntheseData_getHealthQuizPDF get getHealthQuizPDF;
  static Serializer<Gget_questionnaire_syntheseData> get serializer =>
      _$ggetQuestionnaireSyntheseDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaire_syntheseData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaire_syntheseData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_questionnaire_syntheseData.serializer,
        json,
      );
}

abstract class Gget_questionnaire_syntheseData_getHealthQuizPDF
    implements
        Built<Gget_questionnaire_syntheseData_getHealthQuizPDF,
            Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder> {
  Gget_questionnaire_syntheseData_getHealthQuizPDF._();

  factory Gget_questionnaire_syntheseData_getHealthQuizPDF(
      [void Function(Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder b)
          updates]) = _$Gget_questionnaire_syntheseData_getHealthQuizPDF;

  static void _initializeBuilder(
          Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder b) =>
      b..G__typename = 'HealthQuizPDFModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get mimeType;
  String get binary;
  String get lastUpdateUserDate;
  String get responseId;
  static Serializer<Gget_questionnaire_syntheseData_getHealthQuizPDF>
      get serializer =>
          _$ggetQuestionnaireSyntheseDataGetHealthQuizPDFSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaire_syntheseData_getHealthQuizPDF.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaire_syntheseData_getHealthQuizPDF? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_questionnaire_syntheseData_getHealthQuizPDF.serializer,
        json,
      );
}
