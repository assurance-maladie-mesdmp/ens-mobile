// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_metadata_fields.fragment.var.gql.g.dart';

abstract class GmetadataFieldsVars
    implements Built<GmetadataFieldsVars, GmetadataFieldsVarsBuilder> {
  GmetadataFieldsVars._();

  factory GmetadataFieldsVars(
          [void Function(GmetadataFieldsVarsBuilder b) updates]) =
      _$GmetadataFieldsVars;

  static Serializer<GmetadataFieldsVars> get serializer =>
      _$gmetadataFieldsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmetadataFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmetadataFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmetadataFieldsVars.serializer,
        json,
      );
}
