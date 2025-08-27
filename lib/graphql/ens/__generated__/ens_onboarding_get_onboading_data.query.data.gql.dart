// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_dmp_consentement.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_onboarding_get_onboading_data.query.data.gql.g.dart';

abstract class Gget_onboarding_dataData
    implements
        Built<Gget_onboarding_dataData, Gget_onboarding_dataDataBuilder> {
  Gget_onboarding_dataData._();

  factory Gget_onboarding_dataData(
          [void Function(Gget_onboarding_dataDataBuilder b) updates]) =
      _$Gget_onboarding_dataData;

  static void _initializeBuilder(Gget_onboarding_dataDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_onboarding_dataData_getDmpConsentement> get getDmpConsentement;
  Gget_onboarding_dataData_getDefaultConfidentiality?
      get getDefaultConfidentiality;
  static Serializer<Gget_onboarding_dataData> get serializer =>
      _$ggetOnboardingDataDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_onboarding_dataData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_onboarding_dataData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_onboarding_dataData.serializer,
        json,
      );
}

abstract class Gget_onboarding_dataData_getDmpConsentement
    implements
        Built<Gget_onboarding_dataData_getDmpConsentement,
            Gget_onboarding_dataData_getDmpConsentementBuilder>,
        _i2.GdmpConsentement {
  Gget_onboarding_dataData_getDmpConsentement._();

  factory Gget_onboarding_dataData_getDmpConsentement(
      [void Function(Gget_onboarding_dataData_getDmpConsentementBuilder b)
          updates]) = _$Gget_onboarding_dataData_getDmpConsentement;

  static void _initializeBuilder(
          Gget_onboarding_dataData_getDmpConsentementBuilder b) =>
      b..G__typename = 'DmpConsentementModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get identifier;
  @override
  String get purpose;
  @override
  String get type;
  static Serializer<Gget_onboarding_dataData_getDmpConsentement>
      get serializer => _$ggetOnboardingDataDataGetDmpConsentementSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_onboarding_dataData_getDmpConsentement.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_onboarding_dataData_getDmpConsentement? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_onboarding_dataData_getDmpConsentement.serializer,
        json,
      );
}

abstract class Gget_onboarding_dataData_getDefaultConfidentiality
    implements
        Built<Gget_onboarding_dataData_getDefaultConfidentiality,
            Gget_onboarding_dataData_getDefaultConfidentialityBuilder> {
  Gget_onboarding_dataData_getDefaultConfidentiality._();

  factory Gget_onboarding_dataData_getDefaultConfidentiality(
      [void Function(
              Gget_onboarding_dataData_getDefaultConfidentialityBuilder b)
          updates]) = _$Gget_onboarding_dataData_getDefaultConfidentiality;

  static void _initializeBuilder(
          Gget_onboarding_dataData_getDefaultConfidentialityBuilder b) =>
      b..G__typename = 'DefaultConfidentialityModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get masked;
  static Serializer<Gget_onboarding_dataData_getDefaultConfidentiality>
      get serializer =>
          _$ggetOnboardingDataDataGetDefaultConfidentialitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_onboarding_dataData_getDefaultConfidentiality.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_onboarding_dataData_getDefaultConfidentiality? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_onboarding_dataData_getDefaultConfidentiality.serializer,
        json,
      );
}
