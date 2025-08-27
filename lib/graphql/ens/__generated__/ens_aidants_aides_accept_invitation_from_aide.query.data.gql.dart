// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_aidants_aides_accept_invitation_from_aide.query.data.gql.g.dart';

abstract class Gaccept_invitation_from_aideData
    implements
        Built<Gaccept_invitation_from_aideData,
            Gaccept_invitation_from_aideDataBuilder> {
  Gaccept_invitation_from_aideData._();

  factory Gaccept_invitation_from_aideData(
          [void Function(Gaccept_invitation_from_aideDataBuilder b) updates]) =
      _$Gaccept_invitation_from_aideData;

  static void _initializeBuilder(Gaccept_invitation_from_aideDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gaccept_invitation_from_aideData_delegationAcceptInvitation
      get delegationAcceptInvitation;
  static Serializer<Gaccept_invitation_from_aideData> get serializer =>
      _$gacceptInvitationFromAideDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gaccept_invitation_from_aideData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gaccept_invitation_from_aideData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gaccept_invitation_from_aideData.serializer,
        json,
      );
}

abstract class Gaccept_invitation_from_aideData_delegationAcceptInvitation
    implements
        Built<Gaccept_invitation_from_aideData_delegationAcceptInvitation,
            Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder> {
  Gaccept_invitation_from_aideData_delegationAcceptInvitation._();

  factory Gaccept_invitation_from_aideData_delegationAcceptInvitation(
      [void Function(
              Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder
                  b)
          updates]) = _$Gaccept_invitation_from_aideData_delegationAcceptInvitation;

  static void _initializeBuilder(
          Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder
              b) =>
      b..G__typename = 'DelegationAcceptInvitationPayload';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get attestation;
  static Serializer<Gaccept_invitation_from_aideData_delegationAcceptInvitation>
      get serializer =>
          _$gacceptInvitationFromAideDataDelegationAcceptInvitationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gaccept_invitation_from_aideData_delegationAcceptInvitation.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gaccept_invitation_from_aideData_delegationAcceptInvitation? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gaccept_invitation_from_aideData_delegationAcceptInvitation.serializer,
        json,
      );
}
