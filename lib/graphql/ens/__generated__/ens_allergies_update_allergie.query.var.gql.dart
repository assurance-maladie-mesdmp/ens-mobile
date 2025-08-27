// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_allergies_update_allergie.query.var.gql.g.dart';

abstract class Gupdate_allergieVars
    implements Built<Gupdate_allergieVars, Gupdate_allergieVarsBuilder> {
  Gupdate_allergieVars._();

  factory Gupdate_allergieVars(
          [void Function(Gupdate_allergieVarsBuilder b) updates]) =
      _$Gupdate_allergieVars;

  _i1.GAllergyUpdateInput get allergy;
  static Serializer<Gupdate_allergieVars> get serializer =>
      _$gupdateAllergieVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_allergieVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_allergieVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_allergieVars.serializer,
        json,
      );
}
