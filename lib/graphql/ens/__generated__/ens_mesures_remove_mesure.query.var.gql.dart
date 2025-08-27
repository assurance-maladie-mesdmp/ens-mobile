// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_mesures_remove_mesure.query.var.gql.g.dart';

abstract class Gremove_mesureVars
    implements Built<Gremove_mesureVars, Gremove_mesureVarsBuilder> {
  Gremove_mesureVars._();

  factory Gremove_mesureVars(
          [void Function(Gremove_mesureVarsBuilder b) updates]) =
      _$Gremove_mesureVars;

  _i1.GDeleteMeasureModel get deleteMesure;
  static Serializer<Gremove_mesureVars> get serializer =>
      _$gremoveMesureVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gremove_mesureVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gremove_mesureVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gremove_mesureVars.serializer,
        json,
      );
}
