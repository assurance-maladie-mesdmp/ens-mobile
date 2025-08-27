// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_allergies_add_allergie.query.var.gql.g.dart';

abstract class Gadd_allergieVars
    implements Built<Gadd_allergieVars, Gadd_allergieVarsBuilder> {
  Gadd_allergieVars._();

  factory Gadd_allergieVars(
          [void Function(Gadd_allergieVarsBuilder b) updates]) =
      _$Gadd_allergieVars;

  _i1.GAllergyInput get allergy;
  static Serializer<Gadd_allergieVars> get serializer =>
      _$gaddAllergieVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gadd_allergieVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_allergieVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gadd_allergieVars.serializer,
        json,
      );
}
