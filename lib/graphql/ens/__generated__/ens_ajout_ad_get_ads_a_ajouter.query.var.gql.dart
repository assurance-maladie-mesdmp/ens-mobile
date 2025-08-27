// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_ajout_ad_get_ads_a_ajouter.query.var.gql.g.dart';

abstract class Gget_ads_a_ajouterVars
    implements Built<Gget_ads_a_ajouterVars, Gget_ads_a_ajouterVarsBuilder> {
  Gget_ads_a_ajouterVars._();

  factory Gget_ads_a_ajouterVars(
          [void Function(Gget_ads_a_ajouterVarsBuilder b) updates]) =
      _$Gget_ads_a_ajouterVars;

  _i1.GAccountGetAccountFamilyInput get accountGetAccountFamilyInput;
  static Serializer<Gget_ads_a_ajouterVars> get serializer =>
      _$ggetAdsAAjouterVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_ads_a_ajouterVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ads_a_ajouterVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_ads_a_ajouterVars.serializer,
        json,
      );
}
