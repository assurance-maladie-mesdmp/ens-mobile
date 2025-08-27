// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_groupe_sanguin_update_groupe_sanguin.query.var.gql.g.dart';

abstract class Gupdate_groupe_sanguinVars
    implements
        Built<Gupdate_groupe_sanguinVars, Gupdate_groupe_sanguinVarsBuilder> {
  Gupdate_groupe_sanguinVars._();

  factory Gupdate_groupe_sanguinVars(
          [void Function(Gupdate_groupe_sanguinVarsBuilder b) updates]) =
      _$Gupdate_groupe_sanguinVars;

  _i1.GBloodGroupUpdateInput get bloodGroupUpdateInput;
  static Serializer<Gupdate_groupe_sanguinVars> get serializer =>
      _$gupdateGroupeSanguinVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_groupe_sanguinVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_groupe_sanguinVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_groupe_sanguinVars.serializer,
        json,
      );
}
