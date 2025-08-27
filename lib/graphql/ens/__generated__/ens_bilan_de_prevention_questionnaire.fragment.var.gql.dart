// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_bilan_de_prevention_questionnaire.fragment.var.gql.g.dart';

abstract class GquestionnaireVars
    implements Built<GquestionnaireVars, GquestionnaireVarsBuilder> {
  GquestionnaireVars._();

  factory GquestionnaireVars(
          [void Function(GquestionnaireVarsBuilder b) updates]) =
      _$GquestionnaireVars;

  static Serializer<GquestionnaireVars> get serializer =>
      _$gquestionnaireVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GquestionnaireVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GquestionnaireVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GquestionnaireVars.serializer,
        json,
      );
}
