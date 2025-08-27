// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_aidants_aides_delegation.fragment.var.gql.g.dart';

abstract class GdelegationVars
    implements Built<GdelegationVars, GdelegationVarsBuilder> {
  GdelegationVars._();

  factory GdelegationVars([void Function(GdelegationVarsBuilder b) updates]) =
      _$GdelegationVars;

  static Serializer<GdelegationVars> get serializer =>
      _$gdelegationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdelegationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdelegationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdelegationVars.serializer,
        json,
      );
}
