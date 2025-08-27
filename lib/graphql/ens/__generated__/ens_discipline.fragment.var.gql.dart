// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_discipline.fragment.var.gql.g.dart';

abstract class GdisciplineResponseVars
    implements Built<GdisciplineResponseVars, GdisciplineResponseVarsBuilder> {
  GdisciplineResponseVars._();

  factory GdisciplineResponseVars(
          [void Function(GdisciplineResponseVarsBuilder b) updates]) =
      _$GdisciplineResponseVars;

  static Serializer<GdisciplineResponseVars> get serializer =>
      _$gdisciplineResponseVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdisciplineResponseVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdisciplineResponseVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdisciplineResponseVars.serializer,
        json,
      );
}
