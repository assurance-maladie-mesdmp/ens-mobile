// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_last_mesure.fragment.var.gql.g.dart';

abstract class GlastMesureVars
    implements Built<GlastMesureVars, GlastMesureVarsBuilder> {
  GlastMesureVars._();

  factory GlastMesureVars([void Function(GlastMesureVarsBuilder b) updates]) =
      _$GlastMesureVars;

  static Serializer<GlastMesureVars> get serializer =>
      _$glastMesureVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlastMesureVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlastMesureVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlastMesureVars.serializer,
        json,
      );
}
