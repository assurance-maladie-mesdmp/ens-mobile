// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_questionnaire_delete_questionnaire_reponses.query.var.gql.g.dart';

abstract class Gdelete_questionnaire_reponsesVars
    implements
        Built<Gdelete_questionnaire_reponsesVars,
            Gdelete_questionnaire_reponsesVarsBuilder> {
  Gdelete_questionnaire_reponsesVars._();

  factory Gdelete_questionnaire_reponsesVars(
      [void Function(Gdelete_questionnaire_reponsesVarsBuilder b)
          updates]) = _$Gdelete_questionnaire_reponsesVars;

  String get responseId;
  String get patientId;
  static Serializer<Gdelete_questionnaire_reponsesVars> get serializer =>
      _$gdeleteQuestionnaireReponsesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_questionnaire_reponsesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_questionnaire_reponsesVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_questionnaire_reponsesVars.serializer,
        json,
      );
}
