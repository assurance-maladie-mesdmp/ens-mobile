// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_acteur.fragment.data.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i3;

part 'ens_aidants_aides_invitation.fragment.data.gql.g.dart';

abstract class Ginvitation {
  String get G__typename;
  String get id;
  Ginvitation_delegate get delegate;
  String get creationDate;
  String get expirationDate;
  Map<String, dynamic> toJson();
}

abstract class Ginvitation_delegate implements _i1.Gacteur {
  @override
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
  _i2.GGender get gender;
  @override
  Map<String, dynamic> toJson();
}

abstract class GinvitationData
    implements Built<GinvitationData, GinvitationDataBuilder>, Ginvitation {
  GinvitationData._();

  factory GinvitationData([void Function(GinvitationDataBuilder b) updates]) =
      _$GinvitationData;

  static void _initializeBuilder(GinvitationDataBuilder b) =>
      b..G__typename = 'DelegationInvitation';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  GinvitationData_delegate get delegate;
  @override
  String get creationDate;
  @override
  String get expirationDate;
  static Serializer<GinvitationData> get serializer =>
      _$ginvitationDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GinvitationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinvitationData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GinvitationData.serializer,
        json,
      );
}

abstract class GinvitationData_delegate
    implements
        Built<GinvitationData_delegate, GinvitationData_delegateBuilder>,
        Ginvitation_delegate,
        _i1.Gacteur {
  GinvitationData_delegate._();

  factory GinvitationData_delegate(
          [void Function(GinvitationData_delegateBuilder b) updates]) =
      _$GinvitationData_delegate;

  static void _initializeBuilder(GinvitationData_delegateBuilder b) =>
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
  _i2.GGender get gender;
  static Serializer<GinvitationData_delegate> get serializer =>
      _$ginvitationDataDelegateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GinvitationData_delegate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinvitationData_delegate? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GinvitationData_delegate.serializer,
        json,
      );
}
