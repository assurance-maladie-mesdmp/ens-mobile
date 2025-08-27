// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ayants_droits.fragment.var.gql.g.dart';

abstract class GayantDroitsVars
    implements Built<GayantDroitsVars, GayantDroitsVarsBuilder> {
  GayantDroitsVars._();

  factory GayantDroitsVars([void Function(GayantDroitsVarsBuilder b) updates]) =
      _$GayantDroitsVars;

  static Serializer<GayantDroitsVars> get serializer =>
      _$gayantDroitsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GayantDroitsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GayantDroitsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GayantDroitsVars.serializer,
        json,
      );
}
