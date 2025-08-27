// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_vaccination_get_vaccinations.query.var.gql.g.dart';

abstract class Gget_vaccinationsVars
    implements Built<Gget_vaccinationsVars, Gget_vaccinationsVarsBuilder> {
  Gget_vaccinationsVars._();

  factory Gget_vaccinationsVars(
          [void Function(Gget_vaccinationsVarsBuilder b) updates]) =
      _$Gget_vaccinationsVars;

  String get patientId;
  static Serializer<Gget_vaccinationsVars> get serializer =>
      _$ggetVaccinationsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_vaccinationsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_vaccinationsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_vaccinationsVars.serializer,
        json,
      );
}
