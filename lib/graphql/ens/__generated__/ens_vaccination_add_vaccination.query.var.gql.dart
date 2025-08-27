// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_vaccination_add_vaccination.query.var.gql.g.dart';

abstract class Gadd_vaccinationVars
    implements Built<Gadd_vaccinationVars, Gadd_vaccinationVarsBuilder> {
  Gadd_vaccinationVars._();

  factory Gadd_vaccinationVars(
          [void Function(Gadd_vaccinationVarsBuilder b) updates]) =
      _$Gadd_vaccinationVars;

  _i1.GVaccineInput get vaccine;
  static Serializer<Gadd_vaccinationVars> get serializer =>
      _$gaddVaccinationVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gadd_vaccinationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_vaccinationVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gadd_vaccinationVars.serializer,
        json,
      );
}
