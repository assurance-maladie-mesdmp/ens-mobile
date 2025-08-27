// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesure_extract_mesure.fragment.var.gql.g.dart';

abstract class GextractMesureVars
    implements Built<GextractMesureVars, GextractMesureVarsBuilder> {
  GextractMesureVars._();

  factory GextractMesureVars(
          [void Function(GextractMesureVarsBuilder b) updates]) =
      _$GextractMesureVars;

  static Serializer<GextractMesureVars> get serializer =>
      _$gextractMesureVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GextractMesureVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GextractMesureVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GextractMesureVars.serializer,
        json,
      );
}
