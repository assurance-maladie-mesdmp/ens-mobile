// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_mesures_tiles.fragment.var.gql.g.dart';

abstract class GmesuresTilesVars
    implements Built<GmesuresTilesVars, GmesuresTilesVarsBuilder> {
  GmesuresTilesVars._();

  factory GmesuresTilesVars(
          [void Function(GmesuresTilesVarsBuilder b) updates]) =
      _$GmesuresTilesVars;

  static Serializer<GmesuresTilesVars> get serializer =>
      _$gmesuresTilesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmesuresTilesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmesuresTilesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmesuresTilesVars.serializer,
        json,
      );
}
