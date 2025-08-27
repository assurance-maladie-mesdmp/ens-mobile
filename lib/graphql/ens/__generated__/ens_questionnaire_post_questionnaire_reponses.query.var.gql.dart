// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_questionnaire_post_questionnaire_reponses.query.var.gql.g.dart';

abstract class Gpost_questionnaire_reponsesVars
    implements
        Built<Gpost_questionnaire_reponsesVars,
            Gpost_questionnaire_reponsesVarsBuilder> {
  Gpost_questionnaire_reponsesVars._();

  factory Gpost_questionnaire_reponsesVars(
          [void Function(Gpost_questionnaire_reponsesVarsBuilder b) updates]) =
      _$Gpost_questionnaire_reponsesVars;

  _i1.GHealthQuizResponseInput get healthQuizResponse;
  static Serializer<Gpost_questionnaire_reponsesVars> get serializer =>
      _$gpostQuestionnaireReponsesVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gpost_questionnaire_reponsesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gpost_questionnaire_reponsesVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gpost_questionnaire_reponsesVars.serializer,
        json,
      );
}
