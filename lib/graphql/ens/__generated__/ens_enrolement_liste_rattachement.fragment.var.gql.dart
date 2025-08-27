// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_enrolement_liste_rattachement.fragment.var.gql.g.dart';

abstract class GprofilRattacheVars
    implements Built<GprofilRattacheVars, GprofilRattacheVarsBuilder> {
  GprofilRattacheVars._();

  factory GprofilRattacheVars(
          [void Function(GprofilRattacheVarsBuilder b) updates]) =
      _$GprofilRattacheVars;

  static Serializer<GprofilRattacheVars> get serializer =>
      _$gprofilRattacheVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GprofilRattacheVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GprofilRattacheVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GprofilRattacheVars.serializer,
        json,
      );
}
