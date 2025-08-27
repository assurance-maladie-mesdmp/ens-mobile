// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps.fragment.var.gql.g.dart';

abstract class GpsVars implements Built<GpsVars, GpsVarsBuilder> {
  GpsVars._();

  factory GpsVars([void Function(GpsVarsBuilder b) updates]) = _$GpsVars;

  static Serializer<GpsVars> get serializer => _$gpsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GpsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GpsVars.serializer,
        json,
      );
}
