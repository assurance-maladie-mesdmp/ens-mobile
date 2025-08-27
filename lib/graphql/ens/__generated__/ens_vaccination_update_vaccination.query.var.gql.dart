// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_vaccination_update_vaccination.query.var.gql.g.dart';

abstract class Gupdate_vaccinationVars
    implements Built<Gupdate_vaccinationVars, Gupdate_vaccinationVarsBuilder> {
  Gupdate_vaccinationVars._();

  factory Gupdate_vaccinationVars(
          [void Function(Gupdate_vaccinationVarsBuilder b) updates]) =
      _$Gupdate_vaccinationVars;

  _i1.GVaccineUpdateInput get vaccine;
  static Serializer<Gupdate_vaccinationVars> get serializer =>
      _$gupdateVaccinationVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_vaccinationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_vaccinationVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_vaccinationVars.serializer,
        json,
      );
}
