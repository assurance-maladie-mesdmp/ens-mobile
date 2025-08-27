// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_mesures_update_mesure.query.var.gql.g.dart';

abstract class Gupdate_mesureVars
    implements Built<Gupdate_mesureVars, Gupdate_mesureVarsBuilder> {
  Gupdate_mesureVars._();

  factory Gupdate_mesureVars(
          [void Function(Gupdate_mesureVarsBuilder b) updates]) =
      _$Gupdate_mesureVars;

  _i1.GMeasureInput get mesure;
  static Serializer<Gupdate_mesureVars> get serializer =>
      _$gupdateMesureVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_mesureVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_mesureVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_mesureVars.serializer,
        json,
      );
}
