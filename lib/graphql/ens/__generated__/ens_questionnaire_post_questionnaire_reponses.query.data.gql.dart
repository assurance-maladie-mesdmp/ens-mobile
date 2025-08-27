// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_questionnaire_post_questionnaire_reponses.query.data.gql.g.dart';

abstract class Gpost_questionnaire_reponsesData
    implements
        Built<Gpost_questionnaire_reponsesData,
            Gpost_questionnaire_reponsesDataBuilder> {
  Gpost_questionnaire_reponsesData._();

  factory Gpost_questionnaire_reponsesData(
          [void Function(Gpost_questionnaire_reponsesDataBuilder b) updates]) =
      _$Gpost_questionnaire_reponsesData;

  static void _initializeBuilder(Gpost_questionnaire_reponsesDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gpost_questionnaire_reponsesData_postHealthQuizResponses
      get postHealthQuizResponses;
  static Serializer<Gpost_questionnaire_reponsesData> get serializer =>
      _$gpostQuestionnaireReponsesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gpost_questionnaire_reponsesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gpost_questionnaire_reponsesData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gpost_questionnaire_reponsesData.serializer,
        json,
      );
}

abstract class Gpost_questionnaire_reponsesData_postHealthQuizResponses
    implements
        Built<Gpost_questionnaire_reponsesData_postHealthQuizResponses,
            Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder> {
  Gpost_questionnaire_reponsesData_postHealthQuizResponses._();

  factory Gpost_questionnaire_reponsesData_postHealthQuizResponses(
      [void Function(
              Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder b)
          updates]) = _$Gpost_questionnaire_reponsesData_postHealthQuizResponses;

  static void _initializeBuilder(
          Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gpost_questionnaire_reponsesData_postHealthQuizResponses>
      get serializer =>
          _$gpostQuestionnaireReponsesDataPostHealthQuizResponsesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gpost_questionnaire_reponsesData_postHealthQuizResponses.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gpost_questionnaire_reponsesData_postHealthQuizResponses? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gpost_questionnaire_reponsesData_postHealthQuizResponses.serializer,
        json,
      );
}
