// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ayants_droits.fragment.data.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_personal_information.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ouvrant_droit_data.query.data.gql.g.dart';

abstract class Gget_ouvrant_droits_dataData
    implements
        Built<Gget_ouvrant_droits_dataData,
            Gget_ouvrant_droits_dataDataBuilder> {
  Gget_ouvrant_droits_dataData._();

  factory Gget_ouvrant_droits_dataData(
          [void Function(Gget_ouvrant_droits_dataDataBuilder b) updates]) =
      _$Gget_ouvrant_droits_dataData;

  static void _initializeBuilder(Gget_ouvrant_droits_dataDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_ouvrant_droits_dataData_getPersonalInformation?
      get getPersonalInformation;
  BuiltList<Gget_ouvrant_droits_dataData_getAyantsDroits>? get getAyantsDroits;
  Gget_ouvrant_droits_dataData_fetchNotificationCenter?
      get fetchNotificationCenter;
  Gget_ouvrant_droits_dataData_getPendingInvitations get getPendingInvitations;
  static Serializer<Gget_ouvrant_droits_dataData> get serializer =>
      _$ggetOuvrantDroitsDataDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ouvrant_droits_dataData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ouvrant_droits_dataData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_ouvrant_droits_dataData.serializer,
        json,
      );
}

abstract class Gget_ouvrant_droits_dataData_getPersonalInformation
    implements
        Built<Gget_ouvrant_droits_dataData_getPersonalInformation,
            Gget_ouvrant_droits_dataData_getPersonalInformationBuilder>,
        _i2.GpersonalInformation {
  Gget_ouvrant_droits_dataData_getPersonalInformation._();

  factory Gget_ouvrant_droits_dataData_getPersonalInformation(
      [void Function(
              Gget_ouvrant_droits_dataData_getPersonalInformationBuilder b)
          updates]) = _$Gget_ouvrant_droits_dataData_getPersonalInformation;

  static void _initializeBuilder(
          Gget_ouvrant_droits_dataData_getPersonalInformationBuilder b) =>
      b..G__typename = 'PersonalInformationModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get lastName;
  @override
  String get firstName;
  @override
  String get birthDate;
  @override
  String get sex;
  @override
  String? get mail;
  @override
  String? get phoneNumber;
  @override
  String get ins;
  @override
  String? get onboarding;
  @override
  String? get inseeCode;
  @override
  String? get cguAcceptedAt;
  @override
  bool get hasConfidentialitySettingsSet;
  @override
  String get ensStatus;
  static Serializer<Gget_ouvrant_droits_dataData_getPersonalInformation>
      get serializer =>
          _$ggetOuvrantDroitsDataDataGetPersonalInformationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ouvrant_droits_dataData_getPersonalInformation.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ouvrant_droits_dataData_getPersonalInformation? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_ouvrant_droits_dataData_getPersonalInformation.serializer,
        json,
      );
}

abstract class Gget_ouvrant_droits_dataData_getAyantsDroits
    implements
        Built<Gget_ouvrant_droits_dataData_getAyantsDroits,
            Gget_ouvrant_droits_dataData_getAyantsDroitsBuilder>,
        _i3.GayantDroits {
  Gget_ouvrant_droits_dataData_getAyantsDroits._();

  factory Gget_ouvrant_droits_dataData_getAyantsDroits(
      [void Function(Gget_ouvrant_droits_dataData_getAyantsDroitsBuilder b)
          updates]) = _$Gget_ouvrant_droits_dataData_getAyantsDroits;

  static void _initializeBuilder(
          Gget_ouvrant_droits_dataData_getAyantsDroitsBuilder b) =>
      b..G__typename = 'AyantsDroitsModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get patientId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  bool get isAide;
  static Serializer<Gget_ouvrant_droits_dataData_getAyantsDroits>
      get serializer => _$ggetOuvrantDroitsDataDataGetAyantsDroitsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ouvrant_droits_dataData_getAyantsDroits.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ouvrant_droits_dataData_getAyantsDroits? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_ouvrant_droits_dataData_getAyantsDroits.serializer,
        json,
      );
}

abstract class Gget_ouvrant_droits_dataData_fetchNotificationCenter
    implements
        Built<Gget_ouvrant_droits_dataData_fetchNotificationCenter,
            Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder> {
  Gget_ouvrant_droits_dataData_fetchNotificationCenter._();

  factory Gget_ouvrant_droits_dataData_fetchNotificationCenter(
      [void Function(
              Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder b)
          updates]) = _$Gget_ouvrant_droits_dataData_fetchNotificationCenter;

  static void _initializeBuilder(
          Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder b) =>
      b..G__typename = 'NotificationCenterViewModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get unreadNotificationsCount;
  static Serializer<Gget_ouvrant_droits_dataData_fetchNotificationCenter>
      get serializer =>
          _$ggetOuvrantDroitsDataDataFetchNotificationCenterSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ouvrant_droits_dataData_fetchNotificationCenter.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ouvrant_droits_dataData_fetchNotificationCenter? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_ouvrant_droits_dataData_fetchNotificationCenter.serializer,
        json,
      );
}

abstract class Gget_ouvrant_droits_dataData_getPendingInvitations
    implements
        Built<Gget_ouvrant_droits_dataData_getPendingInvitations,
            Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder> {
  Gget_ouvrant_droits_dataData_getPendingInvitations._();

  factory Gget_ouvrant_droits_dataData_getPendingInvitations(
      [void Function(
              Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder b)
          updates]) = _$Gget_ouvrant_droits_dataData_getPendingInvitations;

  static void _initializeBuilder(
          Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder b) =>
      b..G__typename = 'PendingInvitationsModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<
          Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations>?
      get pendingInvitations;
  static Serializer<Gget_ouvrant_droits_dataData_getPendingInvitations>
      get serializer =>
          _$ggetOuvrantDroitsDataDataGetPendingInvitationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ouvrant_droits_dataData_getPendingInvitations.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ouvrant_droits_dataData_getPendingInvitations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_ouvrant_droits_dataData_getPendingInvitations.serializer,
        json,
      );
}

abstract class Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations
    implements
        Built<
            Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations,
            Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitationsBuilder> {
  Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations._();

  factory Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations(
          [void Function(
                  Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitationsBuilder
                      b)
              updates]) =
      _$Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations;

  static void _initializeBuilder(
          Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitationsBuilder
              b) =>
      b..G__typename = 'PendingInvitations';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get lastName;
  String get firstName;
  _i4.GDemandeAccesStatutEnum get statut;
  String get idEns;
  String get endDate;
  String get birthDate;
  static Serializer<
          Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations>
      get serializer =>
          _$ggetOuvrantDroitsDataDataGetPendingInvitationsPendingInvitationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations
                .serializer,
            json,
          );
}
