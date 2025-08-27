// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_aidants_aides_refuse_invitation_from_aide.query.data.gql.g.dart';

abstract class Grefuse_invitation_from_aideData
    implements
        Built<Grefuse_invitation_from_aideData,
            Grefuse_invitation_from_aideDataBuilder> {
  Grefuse_invitation_from_aideData._();

  factory Grefuse_invitation_from_aideData(
          [void Function(Grefuse_invitation_from_aideDataBuilder b) updates]) =
      _$Grefuse_invitation_from_aideData;

  static void _initializeBuilder(Grefuse_invitation_from_aideDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Grefuse_invitation_from_aideData_delegationRefuseInvitation
      get delegationRefuseInvitation;
  static Serializer<Grefuse_invitation_from_aideData> get serializer =>
      _$grefuseInvitationFromAideDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Grefuse_invitation_from_aideData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Grefuse_invitation_from_aideData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Grefuse_invitation_from_aideData.serializer,
        json,
      );
}

abstract class Grefuse_invitation_from_aideData_delegationRefuseInvitation
    implements
        Built<Grefuse_invitation_from_aideData_delegationRefuseInvitation,
            Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder> {
  Grefuse_invitation_from_aideData_delegationRefuseInvitation._();

  factory Grefuse_invitation_from_aideData_delegationRefuseInvitation(
      [void Function(
              Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder
                  b)
          updates]) = _$Grefuse_invitation_from_aideData_delegationRefuseInvitation;

  static void _initializeBuilder(
          Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder
              b) =>
      b..G__typename = 'DelegationRefuseInvitationPayload';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get attestation;
  static Serializer<Grefuse_invitation_from_aideData_delegationRefuseInvitation>
      get serializer =>
          _$grefuseInvitationFromAideDataDelegationRefuseInvitationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Grefuse_invitation_from_aideData_delegationRefuseInvitation.serializer,
        this,
      ) as Map<String, dynamic>);

  static Grefuse_invitation_from_aideData_delegationRefuseInvitation? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Grefuse_invitation_from_aideData_delegationRefuseInvitation.serializer,
        json,
      );
}
