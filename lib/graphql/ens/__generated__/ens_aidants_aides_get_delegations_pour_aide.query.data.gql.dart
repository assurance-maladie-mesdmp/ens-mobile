// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_acteur.fragment.data.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_delegation.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_invitation.fragment.data.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_aidants_aides_get_delegations_pour_aide.query.data.gql.g.dart';

abstract class Gget_delegations_pour_aideData
    implements
        Built<Gget_delegations_pour_aideData,
            Gget_delegations_pour_aideDataBuilder> {
  Gget_delegations_pour_aideData._();

  factory Gget_delegations_pour_aideData(
          [void Function(Gget_delegations_pour_aideDataBuilder b) updates]) =
      _$Gget_delegations_pour_aideData;

  static void _initializeBuilder(Gget_delegations_pour_aideDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_delegations_pour_aideData_delegations> get delegations;
  BuiltList<Gget_delegations_pour_aideData_delegationInvitations>
      get delegationInvitations;
  static Serializer<Gget_delegations_pour_aideData> get serializer =>
      _$ggetDelegationsPourAideDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delegations_pour_aideData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delegations_pour_aideData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_delegations_pour_aideData.serializer,
        json,
      );
}

abstract class Gget_delegations_pour_aideData_delegations
    implements
        Built<Gget_delegations_pour_aideData_delegations,
            Gget_delegations_pour_aideData_delegationsBuilder>,
        _i2.Gdelegation {
  Gget_delegations_pour_aideData_delegations._();

  factory Gget_delegations_pour_aideData_delegations(
      [void Function(Gget_delegations_pour_aideData_delegationsBuilder b)
          updates]) = _$Gget_delegations_pour_aideData_delegations;

  static void _initializeBuilder(
          Gget_delegations_pour_aideData_delegationsBuilder b) =>
      b..G__typename = 'Delegation';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  Gget_delegations_pour_aideData_delegations_delegate? get delegate;
  @override
  Gget_delegations_pour_aideData_delegations_delegator? get delegator;
  @override
  String get startDate;
  @override
  String get endDate;
  static Serializer<Gget_delegations_pour_aideData_delegations>
      get serializer => _$ggetDelegationsPourAideDataDelegationsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delegations_pour_aideData_delegations.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delegations_pour_aideData_delegations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_delegations_pour_aideData_delegations.serializer,
        json,
      );
}

abstract class Gget_delegations_pour_aideData_delegations_delegate
    implements
        Built<Gget_delegations_pour_aideData_delegations_delegate,
            Gget_delegations_pour_aideData_delegations_delegateBuilder>,
        _i2.Gdelegation_delegate,
        _i3.Gacteur {
  Gget_delegations_pour_aideData_delegations_delegate._();

  factory Gget_delegations_pour_aideData_delegations_delegate(
      [void Function(
              Gget_delegations_pour_aideData_delegations_delegateBuilder b)
          updates]) = _$Gget_delegations_pour_aideData_delegations_delegate;

  static void _initializeBuilder(
          Gget_delegations_pour_aideData_delegations_delegateBuilder b) =>
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
  _i4.GGender get gender;
  static Serializer<Gget_delegations_pour_aideData_delegations_delegate>
      get serializer =>
          _$ggetDelegationsPourAideDataDelegationsDelegateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delegations_pour_aideData_delegations_delegate.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delegations_pour_aideData_delegations_delegate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_delegations_pour_aideData_delegations_delegate.serializer,
        json,
      );
}

abstract class Gget_delegations_pour_aideData_delegations_delegator
    implements
        Built<Gget_delegations_pour_aideData_delegations_delegator,
            Gget_delegations_pour_aideData_delegations_delegatorBuilder>,
        _i2.Gdelegation_delegator,
        _i3.Gacteur {
  Gget_delegations_pour_aideData_delegations_delegator._();

  factory Gget_delegations_pour_aideData_delegations_delegator(
      [void Function(
              Gget_delegations_pour_aideData_delegations_delegatorBuilder b)
          updates]) = _$Gget_delegations_pour_aideData_delegations_delegator;

  static void _initializeBuilder(
          Gget_delegations_pour_aideData_delegations_delegatorBuilder b) =>
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
  _i4.GGender get gender;
  static Serializer<Gget_delegations_pour_aideData_delegations_delegator>
      get serializer =>
          _$ggetDelegationsPourAideDataDelegationsDelegatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delegations_pour_aideData_delegations_delegator.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delegations_pour_aideData_delegations_delegator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_delegations_pour_aideData_delegations_delegator.serializer,
        json,
      );
}

abstract class Gget_delegations_pour_aideData_delegationInvitations
    implements
        Built<Gget_delegations_pour_aideData_delegationInvitations,
            Gget_delegations_pour_aideData_delegationInvitationsBuilder>,
        _i5.Ginvitation {
  Gget_delegations_pour_aideData_delegationInvitations._();

  factory Gget_delegations_pour_aideData_delegationInvitations(
      [void Function(
              Gget_delegations_pour_aideData_delegationInvitationsBuilder b)
          updates]) = _$Gget_delegations_pour_aideData_delegationInvitations;

  static void _initializeBuilder(
          Gget_delegations_pour_aideData_delegationInvitationsBuilder b) =>
      b..G__typename = 'DelegationInvitation';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  Gget_delegations_pour_aideData_delegationInvitations_delegate get delegate;
  @override
  String get creationDate;
  @override
  String get expirationDate;
  static Serializer<Gget_delegations_pour_aideData_delegationInvitations>
      get serializer =>
          _$ggetDelegationsPourAideDataDelegationInvitationsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delegations_pour_aideData_delegationInvitations.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delegations_pour_aideData_delegationInvitations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_delegations_pour_aideData_delegationInvitations.serializer,
        json,
      );
}

abstract class Gget_delegations_pour_aideData_delegationInvitations_delegate
    implements
        Built<Gget_delegations_pour_aideData_delegationInvitations_delegate,
            Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder>,
        _i5.Ginvitation_delegate,
        _i3.Gacteur {
  Gget_delegations_pour_aideData_delegationInvitations_delegate._();

  factory Gget_delegations_pour_aideData_delegationInvitations_delegate(
          [void Function(
                  Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder
                      b)
              updates]) =
      _$Gget_delegations_pour_aideData_delegationInvitations_delegate;

  static void _initializeBuilder(
          Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder
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
  _i4.GGender get gender;
  static Serializer<
          Gget_delegations_pour_aideData_delegationInvitations_delegate>
      get serializer =>
          _$ggetDelegationsPourAideDataDelegationInvitationsDelegateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delegations_pour_aideData_delegationInvitations_delegate
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delegations_pour_aideData_delegationInvitations_delegate?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_delegations_pour_aideData_delegationInvitations_delegate
                .serializer,
            json,
          );
}
