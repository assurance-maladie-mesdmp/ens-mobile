// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ajout_ad.fragment.var.gql.g.dart';

abstract class GprofilMobileVars
    implements Built<GprofilMobileVars, GprofilMobileVarsBuilder> {
  GprofilMobileVars._();

  factory GprofilMobileVars(
          [void Function(GprofilMobileVarsBuilder b) updates]) =
      _$GprofilMobileVars;

  static Serializer<GprofilMobileVars> get serializer =>
      _$gprofilMobileVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GprofilMobileVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GprofilMobileVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GprofilMobileVars.serializer,
        json,
      );
}
