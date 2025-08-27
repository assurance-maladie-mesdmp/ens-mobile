// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_aidants_aides_acteur.fragment.var.gql.g.dart';

abstract class GacteurVars implements Built<GacteurVars, GacteurVarsBuilder> {
  GacteurVars._();

  factory GacteurVars([void Function(GacteurVarsBuilder b) updates]) =
      _$GacteurVars;

  static Serializer<GacteurVars> get serializer => _$gacteurVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GacteurVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GacteurVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GacteurVars.serializer,
        json,
      );
}
