// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_mesures_targets.fragment.var.gql.g.dart';

abstract class GmesuresTargetsVars
    implements Built<GmesuresTargetsVars, GmesuresTargetsVarsBuilder> {
  GmesuresTargetsVars._();

  factory GmesuresTargetsVars(
          [void Function(GmesuresTargetsVarsBuilder b) updates]) =
      _$GmesuresTargetsVars;

  static Serializer<GmesuresTargetsVars> get serializer =>
      _$gmesuresTargetsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmesuresTargetsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmesuresTargetsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmesuresTargetsVars.serializer,
        json,
      );
}
