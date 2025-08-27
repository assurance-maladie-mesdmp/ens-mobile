// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_add_consent_for_service_by_oid.query.data.gql.g.dart';

abstract class Gadd_consent_for_service_by_oidData
    implements
        Built<Gadd_consent_for_service_by_oidData,
            Gadd_consent_for_service_by_oidDataBuilder> {
  Gadd_consent_for_service_by_oidData._();

  factory Gadd_consent_for_service_by_oidData(
      [void Function(Gadd_consent_for_service_by_oidDataBuilder b)
          updates]) = _$Gadd_consent_for_service_by_oidData;

  static void _initializeBuilder(
          Gadd_consent_for_service_by_oidDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid
      get addFinalityConsentByServiceOid;
  static Serializer<Gadd_consent_for_service_by_oidData> get serializer =>
      _$gaddConsentForServiceByOidDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_consent_for_service_by_oidData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_consent_for_service_by_oidData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_consent_for_service_by_oidData.serializer,
        json,
      );
}

abstract class Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid
    implements
        Built<
            Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid,
            Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder> {
  Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid._();

  factory Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid(
          [void Function(
                  Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder
                      b)
              updates]) =
      _$Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid;

  static void _initializeBuilder(
          Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder
              b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<
          Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid>
      get serializer =>
          _$gaddConsentForServiceByOidDataAddFinalityConsentByServiceOidSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid
                .serializer,
            json,
          );
}
