// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_questionnaire_get_version.query.data.gql.g.dart';

abstract class Gget_version_questionnaireData
    implements
        Built<Gget_version_questionnaireData,
            Gget_version_questionnaireDataBuilder> {
  Gget_version_questionnaireData._();

  factory Gget_version_questionnaireData(
          [void Function(Gget_version_questionnaireDataBuilder b) updates]) =
      _$Gget_version_questionnaireData;

  static void _initializeBuilder(Gget_version_questionnaireDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_version_questionnaireData_getHealthQuizCodeVersion?
      get getHealthQuizCodeVersion;
  static Serializer<Gget_version_questionnaireData> get serializer =>
      _$ggetVersionQuestionnaireDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_version_questionnaireData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_version_questionnaireData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_version_questionnaireData.serializer,
        json,
      );
}

abstract class Gget_version_questionnaireData_getHealthQuizCodeVersion
    implements
        Built<Gget_version_questionnaireData_getHealthQuizCodeVersion,
            Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder> {
  Gget_version_questionnaireData_getHealthQuizCodeVersion._();

  factory Gget_version_questionnaireData_getHealthQuizCodeVersion(
      [void Function(
              Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder b)
          updates]) = _$Gget_version_questionnaireData_getHealthQuizCodeVersion;

  static void _initializeBuilder(
          Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder b) =>
      b..G__typename = 'HealthQuizCodeVersionModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get code;
  String? get savedVersion;
  String? get newVersion;
  String? get responseId;
  static Serializer<Gget_version_questionnaireData_getHealthQuizCodeVersion>
      get serializer =>
          _$ggetVersionQuestionnaireDataGetHealthQuizCodeVersionSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_version_questionnaireData_getHealthQuizCodeVersion.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_version_questionnaireData_getHealthQuizCodeVersion? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_version_questionnaireData_getHealthQuizCodeVersion.serializer,
        json,
      );
}
