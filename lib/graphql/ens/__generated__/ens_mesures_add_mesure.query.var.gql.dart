// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_mesures_add_mesure.query.var.gql.g.dart';

abstract class Gadd_mesureVars
    implements Built<Gadd_mesureVars, Gadd_mesureVarsBuilder> {
  Gadd_mesureVars._();

  factory Gadd_mesureVars([void Function(Gadd_mesureVarsBuilder b) updates]) =
      _$Gadd_mesureVars;

  _i1.GMeasureInput get mesure;
  static Serializer<Gadd_mesureVars> get serializer =>
      _$gaddMesureVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gadd_mesureVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_mesureVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gadd_mesureVars.serializer,
        json,
      );
}
