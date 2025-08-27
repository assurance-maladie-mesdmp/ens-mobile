// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_questionnaire_delete_questionnaire_reponses.query.data.gql.g.dart';

abstract class Gdelete_questionnaire_reponsesData
    implements
        Built<Gdelete_questionnaire_reponsesData,
            Gdelete_questionnaire_reponsesDataBuilder> {
  Gdelete_questionnaire_reponsesData._();

  factory Gdelete_questionnaire_reponsesData(
      [void Function(Gdelete_questionnaire_reponsesDataBuilder b)
          updates]) = _$Gdelete_questionnaire_reponsesData;

  static void _initializeBuilder(Gdelete_questionnaire_reponsesDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses
      get deleteHealthQuizResponses;
  static Serializer<Gdelete_questionnaire_reponsesData> get serializer =>
      _$gdeleteQuestionnaireReponsesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_questionnaire_reponsesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_questionnaire_reponsesData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_questionnaire_reponsesData.serializer,
        json,
      );
}

abstract class Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses
    implements
        Built<Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses,
            Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder> {
  Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses._();

  factory Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses(
          [void Function(
                  Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder
                      b)
              updates]) =
      _$Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses;

  static void _initializeBuilder(
          Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder
              b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<
          Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses>
      get serializer =>
          _$gdeleteQuestionnaireReponsesDataDeleteHealthQuizResponsesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses.serializer,
        json,
      );
}
