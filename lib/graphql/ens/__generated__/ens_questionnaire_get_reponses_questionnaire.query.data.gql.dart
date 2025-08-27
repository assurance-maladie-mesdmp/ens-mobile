// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_questionnaire_get_reponses_questionnaire.query.data.gql.g.dart';

abstract class Gget_reponses_questionnaireData
    implements
        Built<Gget_reponses_questionnaireData,
            Gget_reponses_questionnaireDataBuilder> {
  Gget_reponses_questionnaireData._();

  factory Gget_reponses_questionnaireData(
          [void Function(Gget_reponses_questionnaireDataBuilder b) updates]) =
      _$Gget_reponses_questionnaireData;

  static void _initializeBuilder(Gget_reponses_questionnaireDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_reponses_questionnaireData_getHealthQuizResponses?
      get getHealthQuizResponses;
  static Serializer<Gget_reponses_questionnaireData> get serializer =>
      _$ggetReponsesQuestionnaireDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_reponses_questionnaireData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_reponses_questionnaireData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_reponses_questionnaireData.serializer,
        json,
      );
}

abstract class Gget_reponses_questionnaireData_getHealthQuizResponses
    implements
        Built<Gget_reponses_questionnaireData_getHealthQuizResponses,
            Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder> {
  Gget_reponses_questionnaireData_getHealthQuizResponses._();

  factory Gget_reponses_questionnaireData_getHealthQuizResponses(
      [void Function(
              Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder b)
          updates]) = _$Gget_reponses_questionnaireData_getHealthQuizResponses;

  static void _initializeBuilder(
          Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder b) =>
      b..G__typename = 'HealthQuizResponsesModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GHealthQuizCompletionStatus get status;
  String? get responseId;
  double? get questionToDisplay;
  String get lastUpdateUserDate;
  BuiltList<Gget_reponses_questionnaireData_getHealthQuizResponses_details>
      get details;
  static Serializer<Gget_reponses_questionnaireData_getHealthQuizResponses>
      get serializer =>
          _$ggetReponsesQuestionnaireDataGetHealthQuizResponsesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_reponses_questionnaireData_getHealthQuizResponses.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_reponses_questionnaireData_getHealthQuizResponses? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_reponses_questionnaireData_getHealthQuizResponses.serializer,
        json,
      );
}

abstract class Gget_reponses_questionnaireData_getHealthQuizResponses_details
    implements
        Built<Gget_reponses_questionnaireData_getHealthQuizResponses_details,
            Gget_reponses_questionnaireData_getHealthQuizResponses_detailsBuilder> {
  Gget_reponses_questionnaireData_getHealthQuizResponses_details._();

  factory Gget_reponses_questionnaireData_getHealthQuizResponses_details(
          [void Function(
                  Gget_reponses_questionnaireData_getHealthQuizResponses_detailsBuilder
                      b)
              updates]) =
      _$Gget_reponses_questionnaireData_getHealthQuizResponses_details;

  static void _initializeBuilder(
          Gget_reponses_questionnaireData_getHealthQuizResponses_detailsBuilder
              b) =>
      b..G__typename = 'ResponseModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get questionCode;
  BuiltList<String> get value;
  static Serializer<
          Gget_reponses_questionnaireData_getHealthQuizResponses_details>
      get serializer =>
          _$ggetReponsesQuestionnaireDataGetHealthQuizResponsesDetailsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_reponses_questionnaireData_getHealthQuizResponses_details
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_reponses_questionnaireData_getHealthQuizResponses_details?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_reponses_questionnaireData_getHealthQuizResponses_details
                .serializer,
            json,
          );
}
