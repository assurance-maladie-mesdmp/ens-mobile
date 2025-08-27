// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ajout_ad.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ajout_ad_get_ads_a_ajouter.query.data.gql.g.dart';

abstract class Gget_ads_a_ajouterData
    implements Built<Gget_ads_a_ajouterData, Gget_ads_a_ajouterDataBuilder> {
  Gget_ads_a_ajouterData._();

  factory Gget_ads_a_ajouterData(
          [void Function(Gget_ads_a_ajouterDataBuilder b) updates]) =
      _$Gget_ads_a_ajouterData;

  static void _initializeBuilder(Gget_ads_a_ajouterDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_ads_a_ajouterData_getAccountFamily get getAccountFamily;
  static Serializer<Gget_ads_a_ajouterData> get serializer =>
      _$ggetAdsAAjouterDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ads_a_ajouterData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ads_a_ajouterData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_ads_a_ajouterData.serializer,
        json,
      );
}

abstract class Gget_ads_a_ajouterData_getAccountFamily
    implements
        Built<Gget_ads_a_ajouterData_getAccountFamily,
            Gget_ads_a_ajouterData_getAccountFamilyBuilder> {
  Gget_ads_a_ajouterData_getAccountFamily._();

  factory Gget_ads_a_ajouterData_getAccountFamily(
      [void Function(Gget_ads_a_ajouterData_getAccountFamilyBuilder b)
          updates]) = _$Gget_ads_a_ajouterData_getAccountFamily;

  static void _initializeBuilder(
          Gget_ads_a_ajouterData_getAccountFamilyBuilder b) =>
      b..G__typename = 'AccountInfoFamilleDeDroitEnrichiModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate>?
      get profilsToActivate;
  BuiltList<Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable>?
      get profilsNonActivable;
  static Serializer<Gget_ads_a_ajouterData_getAccountFamily> get serializer =>
      _$ggetAdsAAjouterDataGetAccountFamilySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ads_a_ajouterData_getAccountFamily.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ads_a_ajouterData_getAccountFamily? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_ads_a_ajouterData_getAccountFamily.serializer,
        json,
      );
}

abstract class Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate
    implements
        Built<Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate,
            Gget_ads_a_ajouterData_getAccountFamily_profilsToActivateBuilder>,
        _i2.GprofilMobile {
  Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate._();

  factory Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate(
      [void Function(
              Gget_ads_a_ajouterData_getAccountFamily_profilsToActivateBuilder
                  b)
          updates]) = _$Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate;

  static void _initializeBuilder(
          Gget_ads_a_ajouterData_getAccountFamily_profilsToActivateBuilder b) =>
      b..G__typename = 'AccountProfil';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double get index;
  @override
  String get lastName;
  @override
  String get firstName;
  @override
  String get statutProfile;
  @override
  bool get hasDeleteRequest;
  static Serializer<Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate>
      get serializer =>
          _$ggetAdsAAjouterDataGetAccountFamilyProfilsToActivateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate.serializer,
        json,
      );
}

abstract class Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable
    implements
        Built<Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable,
            Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivableBuilder>,
        _i2.GprofilMobile {
  Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable._();

  factory Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable(
      [void Function(
              Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivableBuilder
                  b)
          updates]) = _$Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable;

  static void _initializeBuilder(
          Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivableBuilder
              b) =>
      b..G__typename = 'AccountProfil';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double get index;
  @override
  String get lastName;
  @override
  String get firstName;
  @override
  String get statutProfile;
  @override
  bool get hasDeleteRequest;
  static Serializer<Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable>
      get serializer =>
          _$ggetAdsAAjouterDataGetAccountFamilyProfilsNonActivableSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable.serializer,
        json,
      );
}
