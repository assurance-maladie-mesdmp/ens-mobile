// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_mesure_fields.fragment.var.gql.g.dart';

abstract class GmesureFieldsVars
    implements Built<GmesureFieldsVars, GmesureFieldsVarsBuilder> {
  GmesureFieldsVars._();

  factory GmesureFieldsVars(
          [void Function(GmesureFieldsVarsBuilder b) updates]) =
      _$GmesureFieldsVars;

  static Serializer<GmesureFieldsVars> get serializer =>
      _$gmesureFieldsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmesureFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmesureFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmesureFieldsVars.serializer,
        json,
      );
}
