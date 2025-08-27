// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_notification_center.fragment.data.gql.g.dart';

abstract class GnotificationCenter {
  String get G__typename;
  BuiltList<GnotificationCenter_profiles> get profiles;
  Map<String, dynamic> toJson();
}

abstract class GnotificationCenter_profiles {
  String get G__typename;
  int get unreadNotificationsCount;
  GnotificationCenter_profiles_ensProfil get ensProfil;
  BuiltList<GnotificationCenter_profiles_notifications> get notifications;
  Map<String, dynamic> toJson();
}

abstract class GnotificationCenter_profiles_ensProfil {
  String get G__typename;
  String get patientId;
  String get firstname;
  String get lastname;
  _i1.GProfileType get profileType;
  Map<String, dynamic> toJson();
}

abstract class GnotificationCenter_profiles_notifications {
  String get G__typename;
  String get id;
  String get date;
  String get elapsedTime;
  String get label;
  bool get read;
  String get code;
  GnotificationCenter_profiles_notifications_actor get actor;
  GnotificationCenter_profiles_notifications_resource? get resource;
  String? get urn;
  String? get redirectionLabel;
  Map<String, dynamic> toJson();
}

abstract class GnotificationCenter_profiles_notifications_actor {
  String get G__typename;
  String? get id;
  _i1.GActorType? get type;
  String? get fullname;
  Map<String, dynamic> toJson();
}

abstract class GnotificationCenter_profiles_notifications_resource {
  String get G__typename;
  _i1.GResourceType? get type;
  String? get id;
  String? get title;
  String? get date;
  Map<String, dynamic> toJson();
}

abstract class GnotificationCenterData
    implements
        Built<GnotificationCenterData, GnotificationCenterDataBuilder>,
        GnotificationCenter {
  GnotificationCenterData._();

  factory GnotificationCenterData(
          [void Function(GnotificationCenterDataBuilder b) updates]) =
      _$GnotificationCenterData;

  static void _initializeBuilder(GnotificationCenterDataBuilder b) =>
      b..G__typename = 'NotificationCenterViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GnotificationCenterData_profiles> get profiles;
  static Serializer<GnotificationCenterData> get serializer =>
      _$gnotificationCenterDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GnotificationCenterData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GnotificationCenterData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GnotificationCenterData.serializer,
        json,
      );
}

abstract class GnotificationCenterData_profiles
    implements
        Built<GnotificationCenterData_profiles,
            GnotificationCenterData_profilesBuilder>,
        GnotificationCenter_profiles {
  GnotificationCenterData_profiles._();

  factory GnotificationCenterData_profiles(
          [void Function(GnotificationCenterData_profilesBuilder b) updates]) =
      _$GnotificationCenterData_profiles;

  static void _initializeBuilder(GnotificationCenterData_profilesBuilder b) =>
      b..G__typename = 'NotificationProfileViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get unreadNotificationsCount;
  @override
  GnotificationCenterData_profiles_ensProfil get ensProfil;
  @override
  BuiltList<GnotificationCenterData_profiles_notifications> get notifications;
  static Serializer<GnotificationCenterData_profiles> get serializer =>
      _$gnotificationCenterDataProfilesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GnotificationCenterData_profiles.serializer,
        this,
      ) as Map<String, dynamic>);

  static GnotificationCenterData_profiles? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GnotificationCenterData_profiles.serializer,
        json,
      );
}

abstract class GnotificationCenterData_profiles_ensProfil
    implements
        Built<GnotificationCenterData_profiles_ensProfil,
            GnotificationCenterData_profiles_ensProfilBuilder>,
        GnotificationCenter_profiles_ensProfil {
  GnotificationCenterData_profiles_ensProfil._();

  factory GnotificationCenterData_profiles_ensProfil(
      [void Function(GnotificationCenterData_profiles_ensProfilBuilder b)
          updates]) = _$GnotificationCenterData_profiles_ensProfil;

  static void _initializeBuilder(
          GnotificationCenterData_profiles_ensProfilBuilder b) =>
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
  _i1.GProfileType get profileType;
  static Serializer<GnotificationCenterData_profiles_ensProfil>
      get serializer => _$gnotificationCenterDataProfilesEnsProfilSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GnotificationCenterData_profiles_ensProfil.serializer,
        this,
      ) as Map<String, dynamic>);

  static GnotificationCenterData_profiles_ensProfil? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GnotificationCenterData_profiles_ensProfil.serializer,
        json,
      );
}

abstract class GnotificationCenterData_profiles_notifications
    implements
        Built<GnotificationCenterData_profiles_notifications,
            GnotificationCenterData_profiles_notificationsBuilder>,
        GnotificationCenter_profiles_notifications {
  GnotificationCenterData_profiles_notifications._();

  factory GnotificationCenterData_profiles_notifications(
      [void Function(GnotificationCenterData_profiles_notificationsBuilder b)
          updates]) = _$GnotificationCenterData_profiles_notifications;

  static void _initializeBuilder(
          GnotificationCenterData_profiles_notificationsBuilder b) =>
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
  GnotificationCenterData_profiles_notifications_actor get actor;
  @override
  GnotificationCenterData_profiles_notifications_resource? get resource;
  @override
  String? get urn;
  @override
  String? get redirectionLabel;
  static Serializer<GnotificationCenterData_profiles_notifications>
      get serializer =>
          _$gnotificationCenterDataProfilesNotificationsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GnotificationCenterData_profiles_notifications.serializer,
        this,
      ) as Map<String, dynamic>);

  static GnotificationCenterData_profiles_notifications? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GnotificationCenterData_profiles_notifications.serializer,
        json,
      );
}

abstract class GnotificationCenterData_profiles_notifications_actor
    implements
        Built<GnotificationCenterData_profiles_notifications_actor,
            GnotificationCenterData_profiles_notifications_actorBuilder>,
        GnotificationCenter_profiles_notifications_actor {
  GnotificationCenterData_profiles_notifications_actor._();

  factory GnotificationCenterData_profiles_notifications_actor(
      [void Function(
              GnotificationCenterData_profiles_notifications_actorBuilder b)
          updates]) = _$GnotificationCenterData_profiles_notifications_actor;

  static void _initializeBuilder(
          GnotificationCenterData_profiles_notifications_actorBuilder b) =>
      b..G__typename = 'ActorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  _i1.GActorType? get type;
  @override
  String? get fullname;
  static Serializer<GnotificationCenterData_profiles_notifications_actor>
      get serializer =>
          _$gnotificationCenterDataProfilesNotificationsActorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GnotificationCenterData_profiles_notifications_actor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GnotificationCenterData_profiles_notifications_actor? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GnotificationCenterData_profiles_notifications_actor.serializer,
        json,
      );
}

abstract class GnotificationCenterData_profiles_notifications_resource
    implements
        Built<GnotificationCenterData_profiles_notifications_resource,
            GnotificationCenterData_profiles_notifications_resourceBuilder>,
        GnotificationCenter_profiles_notifications_resource {
  GnotificationCenterData_profiles_notifications_resource._();

  factory GnotificationCenterData_profiles_notifications_resource(
      [void Function(
              GnotificationCenterData_profiles_notifications_resourceBuilder b)
          updates]) = _$GnotificationCenterData_profiles_notifications_resource;

  static void _initializeBuilder(
          GnotificationCenterData_profiles_notifications_resourceBuilder b) =>
      b..G__typename = 'ResourceViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i1.GResourceType? get type;
  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get date;
  static Serializer<GnotificationCenterData_profiles_notifications_resource>
      get serializer =>
          _$gnotificationCenterDataProfilesNotificationsResourceSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GnotificationCenterData_profiles_notifications_resource.serializer,
        this,
      ) as Map<String, dynamic>);

  static GnotificationCenterData_profiles_notifications_resource? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GnotificationCenterData_profiles_notifications_resource.serializer,
        json,
      );
}
