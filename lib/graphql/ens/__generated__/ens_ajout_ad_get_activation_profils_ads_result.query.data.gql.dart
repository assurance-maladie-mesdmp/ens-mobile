// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ajout_ad_result.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ajout_ad_get_activation_profils_ads_result.query.data.gql.g.dart';

abstract class Gget_activation_profils_ads_resultData
    implements
        Built<Gget_activation_profils_ads_resultData,
            Gget_activation_profils_ads_resultDataBuilder> {
  Gget_activation_profils_ads_resultData._();

  factory Gget_activation_profils_ads_resultData(
      [void Function(Gget_activation_profils_ads_resultDataBuilder b)
          updates]) = _$Gget_activation_profils_ads_resultData;

  static void _initializeBuilder(
          Gget_activation_profils_ads_resultDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_activation_profils_ads_resultData_getAccountFamily get getAccountFamily;
  static Serializer<Gget_activation_profils_ads_resultData> get serializer =>
      _$ggetActivationProfilsAdsResultDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_activation_profils_ads_resultData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_activation_profils_ads_resultData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_activation_profils_ads_resultData.serializer,
        json,
      );
}

abstract class Gget_activation_profils_ads_resultData_getAccountFamily
    implements
        Built<Gget_activation_profils_ads_resultData_getAccountFamily,
            Gget_activation_profils_ads_resultData_getAccountFamilyBuilder> {
  Gget_activation_profils_ads_resultData_getAccountFamily._();

  factory Gget_activation_profils_ads_resultData_getAccountFamily(
      [void Function(
              Gget_activation_profils_ads_resultData_getAccountFamilyBuilder b)
          updates]) = _$Gget_activation_profils_ads_resultData_getAccountFamily;

  static void _initializeBuilder(
          Gget_activation_profils_ads_resultData_getAccountFamilyBuilder b) =>
      b..G__typename = 'AccountInfoFamilleDeDroitEnrichiModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<
          Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed>?
      get profilsActivationSucceed;
  BuiltList<
          Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed>?
      get profilsActivationFailed;
  static Serializer<Gget_activation_profils_ads_resultData_getAccountFamily>
      get serializer =>
          _$ggetActivationProfilsAdsResultDataGetAccountFamilySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_activation_profils_ads_resultData_getAccountFamily.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_activation_profils_ads_resultData_getAccountFamily? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_activation_profils_ads_resultData_getAccountFamily.serializer,
        json,
      );
}

abstract class Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed
    implements
        Built<
            Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed,
            Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceedBuilder>,
        _i2.GactivationProfilResult {
  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed._();

  factory Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed(
          [void Function(
                  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceedBuilder
                      b)
              updates]) =
      _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed;

  static void _initializeBuilder(
          Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceedBuilder
              b) =>
      b..G__typename = 'AccountProfil';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double get index;
  @override
  double? get idEns;
  @override
  String get firstName;
  @override
  String get lastName;
  static Serializer<
          Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed>
      get serializer =>
          _$ggetActivationProfilsAdsResultDataGetAccountFamilyProfilsActivationSucceedSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed
                .serializer,
            json,
          );
}

abstract class Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed
    implements
        Built<
            Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed,
            Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailedBuilder>,
        _i2.GactivationProfilResult {
  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed._();

  factory Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed(
          [void Function(
                  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailedBuilder
                      b)
              updates]) =
      _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed;

  static void _initializeBuilder(
          Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailedBuilder
              b) =>
      b..G__typename = 'AccountProfil';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double get index;
  @override
  double? get idEns;
  @override
  String get firstName;
  @override
  String get lastName;
  static Serializer<
          Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed>
      get serializer =>
          _$ggetActivationProfilsAdsResultDataGetAccountFamilyProfilsActivationFailedSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed
                .serializer,
            json,
          );
}
