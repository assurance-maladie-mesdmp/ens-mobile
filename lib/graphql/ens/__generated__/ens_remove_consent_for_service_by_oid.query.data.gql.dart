// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_remove_consent_for_service_by_oid.query.data.gql.g.dart';

abstract class Gremove_consent_for_service_by_oidData
    implements
        Built<Gremove_consent_for_service_by_oidData,
            Gremove_consent_for_service_by_oidDataBuilder> {
  Gremove_consent_for_service_by_oidData._();

  factory Gremove_consent_for_service_by_oidData(
      [void Function(Gremove_consent_for_service_by_oidDataBuilder b)
          updates]) = _$Gremove_consent_for_service_by_oidData;

  static void _initializeBuilder(
          Gremove_consent_for_service_by_oidDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid
      get removeFinalityConsentByServiceOid;
  static Serializer<Gremove_consent_for_service_by_oidData> get serializer =>
      _$gremoveConsentForServiceByOidDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gremove_consent_for_service_by_oidData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gremove_consent_for_service_by_oidData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gremove_consent_for_service_by_oidData.serializer,
        json,
      );
}

abstract class Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid
    implements
        Built<
            Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid,
            Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder> {
  Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid._();

  factory Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid(
          [void Function(
                  Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder
                      b)
              updates]) =
      _$Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid;

  static void _initializeBuilder(
          Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder
              b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<
          Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid>
      get serializer =>
          _$gremoveConsentForServiceByOidDataRemoveFinalityConsentByServiceOidSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid
                .serializer,
            json,
          );
}
