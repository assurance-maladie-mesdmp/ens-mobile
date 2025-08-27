// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_update_consent_document_data_auto_fetching.query.data.gql.g.dart';

abstract class Gupdate_finality_consent_statusData
    implements
        Built<Gupdate_finality_consent_statusData,
            Gupdate_finality_consent_statusDataBuilder> {
  Gupdate_finality_consent_statusData._();

  factory Gupdate_finality_consent_statusData(
      [void Function(Gupdate_finality_consent_statusDataBuilder b)
          updates]) = _$Gupdate_finality_consent_statusData;

  static void _initializeBuilder(
          Gupdate_finality_consent_statusDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId
      get updateFinalityConsentByCodeAndPatientId;
  static Serializer<Gupdate_finality_consent_statusData> get serializer =>
      _$gupdateFinalityConsentStatusDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_finality_consent_statusData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_finality_consent_statusData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_finality_consent_statusData.serializer,
        json,
      );
}

abstract class Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId
    implements
        Built<
            Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId,
            Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder> {
  Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId._();

  factory Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId(
          [void Function(
                  Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder
                      b)
              updates]) =
      _$Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId;

  static void _initializeBuilder(
          Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder
              b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<
          Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId>
      get serializer =>
          _$gupdateFinalityConsentStatusDataUpdateFinalityConsentByCodeAndPatientIdSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId
                .serializer,
            json,
          );
}
