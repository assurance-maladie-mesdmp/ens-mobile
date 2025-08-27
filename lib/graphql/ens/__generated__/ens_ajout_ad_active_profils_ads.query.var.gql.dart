// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_ajout_ad_active_profils_ads.query.var.gql.g.dart';

abstract class Gactive_profils_adsVars
    implements Built<Gactive_profils_adsVars, Gactive_profils_adsVarsBuilder> {
  Gactive_profils_adsVars._();

  factory Gactive_profils_adsVars(
          [void Function(Gactive_profils_adsVarsBuilder b) updates]) =
      _$Gactive_profils_adsVars;

  _i1.GAccountActiveProfilsInput get accountActiveProfilsInput;
  static Serializer<Gactive_profils_adsVars> get serializer =>
      _$gactiveProfilsAdsVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gactive_profils_adsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gactive_profils_adsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gactive_profils_adsVars.serializer,
        json,
      );
}
