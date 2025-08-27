// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_questionnaire_get_synthese_questionnaire.query.var.gql.g.dart';

abstract class Gget_questionnaire_syntheseVars
    implements
        Built<Gget_questionnaire_syntheseVars,
            Gget_questionnaire_syntheseVarsBuilder> {
  Gget_questionnaire_syntheseVars._();

  factory Gget_questionnaire_syntheseVars(
          [void Function(Gget_questionnaire_syntheseVarsBuilder b) updates]) =
      _$Gget_questionnaire_syntheseVars;

  String get patientId;
  String get code;
  String get version;
  static Serializer<Gget_questionnaire_syntheseVars> get serializer =>
      _$ggetQuestionnaireSyntheseVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaire_syntheseVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaire_syntheseVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_questionnaire_syntheseVars.serializer,
        json,
      );
}
