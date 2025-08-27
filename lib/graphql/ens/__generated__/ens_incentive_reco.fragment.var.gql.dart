// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_incentive_reco.fragment.var.gql.g.dart';

abstract class GincentiveRecoVars
    implements Built<GincentiveRecoVars, GincentiveRecoVarsBuilder> {
  GincentiveRecoVars._();

  factory GincentiveRecoVars(
          [void Function(GincentiveRecoVarsBuilder b) updates]) =
      _$GincentiveRecoVars;

  static Serializer<GincentiveRecoVars> get serializer =>
      _$gincentiveRecoVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GincentiveRecoVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GincentiveRecoVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GincentiveRecoVars.serializer,
        json,
      );
}
