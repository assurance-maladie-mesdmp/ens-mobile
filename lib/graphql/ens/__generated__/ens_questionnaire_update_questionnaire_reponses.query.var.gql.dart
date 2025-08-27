// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_questionnaire_update_questionnaire_reponses.query.var.gql.g.dart';

abstract class Gupdate_questionnaire_reponsesVars
    implements
        Built<Gupdate_questionnaire_reponsesVars,
            Gupdate_questionnaire_reponsesVarsBuilder> {
  Gupdate_questionnaire_reponsesVars._();

  factory Gupdate_questionnaire_reponsesVars(
      [void Function(Gupdate_questionnaire_reponsesVarsBuilder b)
          updates]) = _$Gupdate_questionnaire_reponsesVars;

  _i1.GHealthQuizResponseInput get healthQuizResponse;
  String get responseId;
  static Serializer<Gupdate_questionnaire_reponsesVars> get serializer =>
      _$gupdateQuestionnaireReponsesVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_questionnaire_reponsesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_questionnaire_reponsesVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_questionnaire_reponsesVars.serializer,
        json,
      );
}
