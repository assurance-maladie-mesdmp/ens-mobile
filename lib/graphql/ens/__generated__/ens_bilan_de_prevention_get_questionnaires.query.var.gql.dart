// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_bilan_de_prevention_get_questionnaires.query.var.gql.g.dart';

abstract class Gget_questionnairesVars
    implements Built<Gget_questionnairesVars, Gget_questionnairesVarsBuilder> {
  Gget_questionnairesVars._();

  factory Gget_questionnairesVars(
          [void Function(Gget_questionnairesVarsBuilder b) updates]) =
      _$Gget_questionnairesVars;

  String get patientId;
  static Serializer<Gget_questionnairesVars> get serializer =>
      _$ggetQuestionnairesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnairesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnairesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_questionnairesVars.serializer,
        json,
      );
}
