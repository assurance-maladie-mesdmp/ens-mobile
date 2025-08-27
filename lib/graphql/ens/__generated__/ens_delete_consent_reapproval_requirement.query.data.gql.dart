// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_delete_consent_reapproval_requirement.query.data.gql.g.dart';

abstract class Gupdate_consentement_after_majoriteData
    implements
        Built<Gupdate_consentement_after_majoriteData,
            Gupdate_consentement_after_majoriteDataBuilder> {
  Gupdate_consentement_after_majoriteData._();

  factory Gupdate_consentement_after_majoriteData(
      [void Function(Gupdate_consentement_after_majoriteDataBuilder b)
          updates]) = _$Gupdate_consentement_after_majoriteData;

  static void _initializeBuilder(
          Gupdate_consentement_after_majoriteDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement
      get deleteConsentReapprovalRequirement;
  static Serializer<Gupdate_consentement_after_majoriteData> get serializer =>
      _$gupdateConsentementAfterMajoriteDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_consentement_after_majoriteData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_consentement_after_majoriteData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_consentement_after_majoriteData.serializer,
        json,
      );
}

abstract class Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement
    implements
        Built<
            Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement,
            Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder> {
  Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement._();

  factory Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement(
          [void Function(
                  Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder
                      b)
              updates]) =
      _$Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement;

  static void _initializeBuilder(
          Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder
              b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<
          Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement>
      get serializer =>
          _$gupdateConsentementAfterMajoriteDataDeleteConsentReapprovalRequirementSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement
                .serializer,
            json,
          );
}
