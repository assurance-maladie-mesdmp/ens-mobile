// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ajout_ad_active_profils_ads.query.data.gql.g.dart';

abstract class Gactive_profils_adsData
    implements Built<Gactive_profils_adsData, Gactive_profils_adsDataBuilder> {
  Gactive_profils_adsData._();

  factory Gactive_profils_adsData(
          [void Function(Gactive_profils_adsDataBuilder b) updates]) =
      _$Gactive_profils_adsData;

  static void _initializeBuilder(Gactive_profils_adsDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gactive_profils_adsData_activeProfils get activeProfils;
  static Serializer<Gactive_profils_adsData> get serializer =>
      _$gactiveProfilsAdsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gactive_profils_adsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gactive_profils_adsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gactive_profils_adsData.serializer,
        json,
      );
}

abstract class Gactive_profils_adsData_activeProfils
    implements
        Built<Gactive_profils_adsData_activeProfils,
            Gactive_profils_adsData_activeProfilsBuilder> {
  Gactive_profils_adsData_activeProfils._();

  factory Gactive_profils_adsData_activeProfils(
      [void Function(Gactive_profils_adsData_activeProfilsBuilder b)
          updates]) = _$Gactive_profils_adsData_activeProfils;

  static void _initializeBuilder(
          Gactive_profils_adsData_activeProfilsBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gactive_profils_adsData_activeProfils> get serializer =>
      _$gactiveProfilsAdsDataActiveProfilsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gactive_profils_adsData_activeProfils.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gactive_profils_adsData_activeProfils? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gactive_profils_adsData_activeProfils.serializer,
        json,
      );
}
