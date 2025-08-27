// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_questionnaire_update_questionnaire_reponses.query.data.gql.g.dart';

abstract class Gupdate_questionnaire_reponsesData
    implements
        Built<Gupdate_questionnaire_reponsesData,
            Gupdate_questionnaire_reponsesDataBuilder> {
  Gupdate_questionnaire_reponsesData._();

  factory Gupdate_questionnaire_reponsesData(
      [void Function(Gupdate_questionnaire_reponsesDataBuilder b)
          updates]) = _$Gupdate_questionnaire_reponsesData;

  static void _initializeBuilder(Gupdate_questionnaire_reponsesDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_questionnaire_reponsesData_updateHealthQuizResponses
      get updateHealthQuizResponses;
  static Serializer<Gupdate_questionnaire_reponsesData> get serializer =>
      _$gupdateQuestionnaireReponsesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_questionnaire_reponsesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_questionnaire_reponsesData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_questionnaire_reponsesData.serializer,
        json,
      );
}

abstract class Gupdate_questionnaire_reponsesData_updateHealthQuizResponses
    implements
        Built<Gupdate_questionnaire_reponsesData_updateHealthQuizResponses,
            Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder> {
  Gupdate_questionnaire_reponsesData_updateHealthQuizResponses._();

  factory Gupdate_questionnaire_reponsesData_updateHealthQuizResponses(
          [void Function(
                  Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder
                      b)
              updates]) =
      _$Gupdate_questionnaire_reponsesData_updateHealthQuizResponses;

  static void _initializeBuilder(
          Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder
              b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<
          Gupdate_questionnaire_reponsesData_updateHealthQuizResponses>
      get serializer =>
          _$gupdateQuestionnaireReponsesDataUpdateHealthQuizResponsesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_questionnaire_reponsesData_updateHealthQuizResponses.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_questionnaire_reponsesData_updateHealthQuizResponses? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_questionnaire_reponsesData_updateHealthQuizResponses.serializer,
        json,
      );
}
