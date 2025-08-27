// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_hospitalisations_add.query.var.gql.g.dart';

abstract class Gadd_hospitalisationVars
    implements
        Built<Gadd_hospitalisationVars, Gadd_hospitalisationVarsBuilder> {
  Gadd_hospitalisationVars._();

  factory Gadd_hospitalisationVars(
          [void Function(Gadd_hospitalisationVarsBuilder b) updates]) =
      _$Gadd_hospitalisationVars;

  _i1.GHospitalizationInput get hospitalization;
  static Serializer<Gadd_hospitalisationVars> get serializer =>
      _$gaddHospitalisationVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gadd_hospitalisationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_hospitalisationVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gadd_hospitalisationVars.serializer,
        json,
      );
}
