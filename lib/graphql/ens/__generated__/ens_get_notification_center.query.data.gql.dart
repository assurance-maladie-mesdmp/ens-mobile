// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_notification_center.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_get_notification_center.query.data.gql.g.dart';

abstract class Gget_notification_centerData
    implements
        Built<Gget_notification_centerData,
            Gget_notification_centerDataBuilder> {
  Gget_notification_centerData._();

  factory Gget_notification_centerData(
          [void Function(Gget_notification_centerDataBuilder b) updates]) =
      _$Gget_notification_centerData;

  static void _initializeBuilder(Gget_notification_centerDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_notification_centerData_fetchNotificationCenter?
      get fetchNotificationCenter;
  static Serializer<Gget_notification_centerData> get serializer =>
      _$ggetNotificationCenterDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_notification_centerData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_notification_centerData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_notification_centerData.serializer,
        json,
      );
}

abstract class Gget_notification_centerData_fetchNotificationCenter
    implements
        Built<Gget_notification_centerData_fetchNotificationCenter,
            Gget_notification_centerData_fetchNotificationCenterBuilder>,
        _i2.GnotificationCenter {
  Gget_notification_centerData_fetchNotificationCenter._();

  factory Gget_notification_centerData_fetchNotificationCenter(
      [void Function(
              Gget_notification_centerData_fetchNotificationCenterBuilder b)
          updates]) = _$Gget_notification_centerData_fetchNotificationCenter;

  static void _initializeBuilder(
          Gget_notification_centerData_fetchNotificationCenterBuilder b) =>
      b..G__typename = 'NotificationCenterViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<Gget_notification_centerData_fetchNotificationCenter_profiles>
      get profiles;
  static Serializer<Gget_notification_centerData_fetchNotificationCenter>
      get serializer =>
          _$ggetNotificationCenterDataFetchNotificationCenterSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_notification_centerData_fetchNotificationCenter.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_notification_centerData_fetchNotificationCenter? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_notification_centerData_fetchNotificationCenter.serializer,
        json,
      );
}

abstract class Gget_notification_centerData_fetchNotificationCenter_profiles
    implements
        Built<Gget_notification_centerData_fetchNotificationCenter_profiles,
            Gget_notification_centerData_fetchNotificationCenter_profilesBuilder>,
        _i2.GnotificationCenter_profiles {
  Gget_notification_centerData_fetchNotificationCenter_profiles._();

  factory Gget_notification_centerData_fetchNotificationCenter_profiles(
          [void Function(
                  Gget_notification_centerData_fetchNotificationCenter_profilesBuilder
                      b)
              updates]) =
      _$Gget_notification_centerData_fetchNotificationCenter_profiles;

  static void _initializeBuilder(
          Gget_notification_centerData_fetchNotificationCenter_profilesBuilder
              b) =>
      b..G__typename = 'NotificationProfileViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get unreadNotificationsCount;
  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil
      get ensProfil;
  @override
  BuiltList<
          Gget_notification_centerData_fetchNotificationCenter_profiles_notifications>
      get notifications;
  static Serializer<
          Gget_notification_centerData_fetchNotificationCenter_profiles>
      get serializer =>
          _$ggetNotificationCenterDataFetchNotificationCenterProfilesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_notification_centerData_fetchNotificationCenter_profiles
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_notification_centerData_fetchNotificationCenter_profiles?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_notification_centerData_fetchNotificationCenter_profiles
                .serializer,
            json,
          );
}

abstract class Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil
    implements
        Built<
            Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil,
            Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder>,
        _i2.GnotificationCenter_profiles_ensProfil {
  Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil._();

  factory Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil(
          [void Function(
                  Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder
                      b)
              updates]) =
      _$Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil;

  static void _initializeBuilder(
          Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder
              b) =>
      b..G__typename = 'EnsProfileViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get patientId;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  _i3.GProfileType get profileType;
  static Serializer<
          Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil>
      get serializer =>
          _$ggetNotificationCenterDataFetchNotificationCenterProfilesEnsProfilSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil
                .serializer,
            json,
          );
}

abstract class Gget_notification_centerData_fetchNotificationCenter_profiles_notifications
    implements
        Built<
            Gget_notification_centerData_fetchNotificationCenter_profiles_notifications,
            Gget_notification_centerData_fetchNotificationCenter_profiles_notificationsBuilder>,
        _i2.GnotificationCenter_profiles_notifications {
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications._();

  factory Gget_notification_centerData_fetchNotificationCenter_profiles_notifications(
          [void Function(
                  Gget_notification_centerData_fetchNotificationCenter_profiles_notificationsBuilder
                      b)
              updates]) =
      _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications;

  static void _initializeBuilder(
          Gget_notification_centerData_fetchNotificationCenter_profiles_notificationsBuilder
              b) =>
      b..G__typename = 'NotificationViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get date;
  @override
  String get elapsedTime;
  @override
  String get label;
  @override
  bool get read;
  @override
  String get code;
  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor
      get actor;
  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource?
      get resource;
  @override
  String? get urn;
  @override
  String? get redirectionLabel;
  static Serializer<
          Gget_notification_centerData_fetchNotificationCenter_profiles_notifications>
      get serializer =>
          _$ggetNotificationCenterDataFetchNotificationCenterProfilesNotificationsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_notification_centerData_fetchNotificationCenter_profiles_notifications
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_notification_centerData_fetchNotificationCenter_profiles_notifications?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_notification_centerData_fetchNotificationCenter_profiles_notifications
                .serializer,
            json,
          );
}

abstract class Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor
    implements
        Built<
            Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor,
            Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder>,
        _i2.GnotificationCenter_profiles_notifications_actor {
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor._();

  factory Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor(
          [void Function(
                  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder
                      b)
              updates]) =
      _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor;

  static void _initializeBuilder(
          Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder
              b) =>
      b..G__typename = 'ActorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  _i3.GActorType? get type;
  @override
  String? get fullname;
  static Serializer<
          Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor>
      get serializer =>
          _$ggetNotificationCenterDataFetchNotificationCenterProfilesNotificationsActorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor
                .serializer,
            json,
          );
}

abstract class Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource
    implements
        Built<
            Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource,
            Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder>,
        _i2.GnotificationCenter_profiles_notifications_resource {
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource._();

  factory Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource(
          [void Function(
                  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder
                      b)
              updates]) =
      _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource;

  static void _initializeBuilder(
          Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder
              b) =>
      b..G__typename = 'ResourceViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i3.GResourceType? get type;
  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get date;
  static Serializer<
          Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource>
      get serializer =>
          _$ggetNotificationCenterDataFetchNotificationCenterProfilesNotificationsResourceSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource
                .serializer,
            json,
          );
}
