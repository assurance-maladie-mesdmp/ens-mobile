// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ayants_droits.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_get_ayants_droits.query.data.gql.g.dart';

abstract class Gget_ayants_droitsData
    implements Built<Gget_ayants_droitsData, Gget_ayants_droitsDataBuilder> {
  Gget_ayants_droitsData._();

  factory Gget_ayants_droitsData(
          [void Function(Gget_ayants_droitsDataBuilder b) updates]) =
      _$Gget_ayants_droitsData;

  static void _initializeBuilder(Gget_ayants_droitsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_ayants_droitsData_getAyantsDroits>? get getAyantsDroits;
  Gget_ayants_droitsData_getPendingInvitations get getPendingInvitations;
  static Serializer<Gget_ayants_droitsData> get serializer =>
      _$ggetAyantsDroitsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ayants_droitsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ayants_droitsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_ayants_droitsData.serializer,
        json,
      );
}

abstract class Gget_ayants_droitsData_getAyantsDroits
    implements
        Built<Gget_ayants_droitsData_getAyantsDroits,
            Gget_ayants_droitsData_getAyantsDroitsBuilder>,
        _i2.GayantDroits {
  Gget_ayants_droitsData_getAyantsDroits._();

  factory Gget_ayants_droitsData_getAyantsDroits(
      [void Function(Gget_ayants_droitsData_getAyantsDroitsBuilder b)
          updates]) = _$Gget_ayants_droitsData_getAyantsDroits;

  static void _initializeBuilder(
          Gget_ayants_droitsData_getAyantsDroitsBuilder b) =>
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
  static Serializer<Gget_ayants_droitsData_getAyantsDroits> get serializer =>
      _$ggetAyantsDroitsDataGetAyantsDroitsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ayants_droitsData_getAyantsDroits.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ayants_droitsData_getAyantsDroits? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_ayants_droitsData_getAyantsDroits.serializer,
        json,
      );
}

abstract class Gget_ayants_droitsData_getPendingInvitations
    implements
        Built<Gget_ayants_droitsData_getPendingInvitations,
            Gget_ayants_droitsData_getPendingInvitationsBuilder> {
  Gget_ayants_droitsData_getPendingInvitations._();

  factory Gget_ayants_droitsData_getPendingInvitations(
      [void Function(Gget_ayants_droitsData_getPendingInvitationsBuilder b)
          updates]) = _$Gget_ayants_droitsData_getPendingInvitations;

  static void _initializeBuilder(
          Gget_ayants_droitsData_getPendingInvitationsBuilder b) =>
      b..G__typename = 'PendingInvitationsModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_ayants_droitsData_getPendingInvitations_pendingInvitations>?
      get pendingInvitations;
  static Serializer<Gget_ayants_droitsData_getPendingInvitations>
      get serializer => _$ggetAyantsDroitsDataGetPendingInvitationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ayants_droitsData_getPendingInvitations.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ayants_droitsData_getPendingInvitations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_ayants_droitsData_getPendingInvitations.serializer,
        json,
      );
}

abstract class Gget_ayants_droitsData_getPendingInvitations_pendingInvitations
    implements
        Built<Gget_ayants_droitsData_getPendingInvitations_pendingInvitations,
            Gget_ayants_droitsData_getPendingInvitations_pendingInvitationsBuilder> {
  Gget_ayants_droitsData_getPendingInvitations_pendingInvitations._();

  factory Gget_ayants_droitsData_getPendingInvitations_pendingInvitations(
          [void Function(
                  Gget_ayants_droitsData_getPendingInvitations_pendingInvitationsBuilder
                      b)
              updates]) =
      _$Gget_ayants_droitsData_getPendingInvitations_pendingInvitations;

  static void _initializeBuilder(
          Gget_ayants_droitsData_getPendingInvitations_pendingInvitationsBuilder
              b) =>
      b..G__typename = 'PendingInvitations';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get lastName;
  String get firstName;
  _i3.GDemandeAccesStatutEnum get statut;
  String get idEns;
  String get endDate;
  String get birthDate;
  static Serializer<
          Gget_ayants_droitsData_getPendingInvitations_pendingInvitations>
      get serializer =>
          _$ggetAyantsDroitsDataGetPendingInvitationsPendingInvitationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ayants_droitsData_getPendingInvitations_pendingInvitations
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ayants_droitsData_getPendingInvitations_pendingInvitations?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_ayants_droitsData_getPendingInvitations_pendingInvitations
                .serializer,
            json,
          );
}
