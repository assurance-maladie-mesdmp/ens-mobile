// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_questionnaire_get_questionnaire.query.var.gql.g.dart';

abstract class Gget_questionnaireVars
    implements Built<Gget_questionnaireVars, Gget_questionnaireVarsBuilder> {
  Gget_questionnaireVars._();

  factory Gget_questionnaireVars(
          [void Function(Gget_questionnaireVarsBuilder b) updates]) =
      _$Gget_questionnaireVars;

  String get patientId;
  String get code;
  String get version;
  static Serializer<Gget_questionnaireVars> get serializer =>
      _$ggetQuestionnaireVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_questionnaireVars.serializer,
        json,
      );
}
