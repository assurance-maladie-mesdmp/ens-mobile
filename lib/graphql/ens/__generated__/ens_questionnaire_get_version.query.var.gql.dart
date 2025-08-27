// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_questionnaire_get_version.query.var.gql.g.dart';

abstract class Gget_version_questionnaireVars
    implements
        Built<Gget_version_questionnaireVars,
            Gget_version_questionnaireVarsBuilder> {
  Gget_version_questionnaireVars._();

  factory Gget_version_questionnaireVars(
          [void Function(Gget_version_questionnaireVarsBuilder b) updates]) =
      _$Gget_version_questionnaireVars;

  String get patientId;
  String get fileNamePrefix;
  static Serializer<Gget_version_questionnaireVars> get serializer =>
      _$ggetVersionQuestionnaireVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_version_questionnaireVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_version_questionnaireVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_version_questionnaireVars.serializer,
        json,
      );
}
