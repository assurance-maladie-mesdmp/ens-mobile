// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_acteur.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_aidants_aides_get_invitations_from_aides.query.data.gql.g.dart';

abstract class Gget_invitations_from_aidesData
    implements
        Built<Gget_invitations_from_aidesData,
            Gget_invitations_from_aidesDataBuilder> {
  Gget_invitations_from_aidesData._();

  factory Gget_invitations_from_aidesData(
          [void Function(Gget_invitations_from_aidesDataBuilder b) updates]) =
      _$Gget_invitations_from_aidesData;

  static void _initializeBuilder(Gget_invitations_from_aidesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_invitations_from_aidesData_delegationInvitations>
      get delegationInvitations;
  static Serializer<Gget_invitations_from_aidesData> get serializer =>
      _$ggetInvitationsFromAidesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_invitations_from_aidesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_invitations_from_aidesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_invitations_from_aidesData.serializer,
        json,
      );
}

abstract class Gget_invitations_from_aidesData_delegationInvitations
    implements
        Built<Gget_invitations_from_aidesData_delegationInvitations,
            Gget_invitations_from_aidesData_delegationInvitationsBuilder> {
  Gget_invitations_from_aidesData_delegationInvitations._();

  factory Gget_invitations_from_aidesData_delegationInvitations(
      [void Function(
              Gget_invitations_from_aidesData_delegationInvitationsBuilder b)
          updates]) = _$Gget_invitations_from_aidesData_delegationInvitations;

  static void _initializeBuilder(
          Gget_invitations_from_aidesData_delegationInvitationsBuilder b) =>
      b..G__typename = 'DelegationInvitation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  Gget_invitations_from_aidesData_delegationInvitations_delegator get delegator;
  String get creationDate;
  String get expirationDate;
  static Serializer<Gget_invitations_from_aidesData_delegationInvitations>
      get serializer =>
          _$ggetInvitationsFromAidesDataDelegationInvitationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_invitations_from_aidesData_delegationInvitations.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_invitations_from_aidesData_delegationInvitations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_invitations_from_aidesData_delegationInvitations.serializer,
        json,
      );
}

abstract class Gget_invitations_from_aidesData_delegationInvitations_delegator
    implements
        Built<Gget_invitations_from_aidesData_delegationInvitations_delegator,
            Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder>,
        _i2.Gacteur {
  Gget_invitations_from_aidesData_delegationInvitations_delegator._();

  factory Gget_invitations_from_aidesData_delegationInvitations_delegator(
          [void Function(
                  Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder
                      b)
              updates]) =
      _$Gget_invitations_from_aidesData_delegationInvitations_delegator;

  static void _initializeBuilder(
          Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder
              b) =>
      b..G__typename = 'DelegationActor';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get idp;
  @override
  String get givenNames;
  @override
  String get familyName;
  @override
  String get birthDate;
  @override
  _i3.GGender get gender;
  static Serializer<
          Gget_invitations_from_aidesData_delegationInvitations_delegator>
      get serializer =>
          _$ggetInvitationsFromAidesDataDelegationInvitationsDelegatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_invitations_from_aidesData_delegationInvitations_delegator
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_invitations_from_aidesData_delegationInvitations_delegator?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_invitations_from_aidesData_delegationInvitations_delegator
                .serializer,
            json,
          );
}
