// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_questionnaire_get_reponses_questionnaire.query.var.gql.g.dart';

abstract class Gget_reponses_questionnaireVars
    implements
        Built<Gget_reponses_questionnaireVars,
            Gget_reponses_questionnaireVarsBuilder> {
  Gget_reponses_questionnaireVars._();

  factory Gget_reponses_questionnaireVars(
          [void Function(Gget_reponses_questionnaireVarsBuilder b) updates]) =
      _$Gget_reponses_questionnaireVars;

  String get patientId;
  String get code;
  String get version;
  static Serializer<Gget_reponses_questionnaireVars> get serializer =>
      _$ggetReponsesQuestionnaireVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_reponses_questionnaireVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_reponses_questionnaireVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_reponses_questionnaireVars.serializer,
        json,
      );
}
