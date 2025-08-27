// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_ajout_ad_get_activation_profils_ads_result.query.var.gql.g.dart';

abstract class Gget_activation_profils_ads_resultVars
    implements
        Built<Gget_activation_profils_ads_resultVars,
            Gget_activation_profils_ads_resultVarsBuilder> {
  Gget_activation_profils_ads_resultVars._();

  factory Gget_activation_profils_ads_resultVars(
      [void Function(Gget_activation_profils_ads_resultVarsBuilder b)
          updates]) = _$Gget_activation_profils_ads_resultVars;

  _i1.GAccountGetAccountFamilyInput get accountGetAccountFamilyInput;
  static Serializer<Gget_activation_profils_ads_resultVars> get serializer =>
      _$ggetActivationProfilsAdsResultVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_activation_profils_ads_resultVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_activation_profils_ads_resultVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_activation_profils_ads_resultVars.serializer,
        json,
      );
}
