// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_notification_get_preference_notification.query.data.gql.g.dart';

abstract class Gget_preference_notificationData
    implements
        Built<Gget_preference_notificationData,
            Gget_preference_notificationDataBuilder> {
  Gget_preference_notificationData._();

  factory Gget_preference_notificationData(
          [void Function(Gget_preference_notificationDataBuilder b) updates]) =
      _$Gget_preference_notificationData;

  static void _initializeBuilder(Gget_preference_notificationDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_preference_notificationData_getPreferenceNotification
      get getPreferenceNotification;
  static Serializer<Gget_preference_notificationData> get serializer =>
      _$ggetPreferenceNotificationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_preference_notificationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_preference_notificationData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_preference_notificationData.serializer,
        json,
      );
}

abstract class Gget_preference_notificationData_getPreferenceNotification
    implements
        Built<Gget_preference_notificationData_getPreferenceNotification,
            Gget_preference_notificationData_getPreferenceNotificationBuilder> {
  Gget_preference_notificationData_getPreferenceNotification._();

  factory Gget_preference_notificationData_getPreferenceNotification(
      [void Function(
              Gget_preference_notificationData_getPreferenceNotificationBuilder
                  b)
          updates]) = _$Gget_preference_notificationData_getPreferenceNotification;

  static void _initializeBuilder(
          Gget_preference_notificationData_getPreferenceNotificationBuilder
              b) =>
      b..G__typename = 'PreferenceListNotificationModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<
          Gget_preference_notificationData_getPreferenceNotification_preferenceNotification>?
      get preferenceNotification;
  static Serializer<Gget_preference_notificationData_getPreferenceNotification>
      get serializer =>
          _$ggetPreferenceNotificationDataGetPreferenceNotificationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_preference_notificationData_getPreferenceNotification.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_preference_notificationData_getPreferenceNotification? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_preference_notificationData_getPreferenceNotification.serializer,
        json,
      );
}

abstract class Gget_preference_notificationData_getPreferenceNotification_preferenceNotification
    implements
        Built<
            Gget_preference_notificationData_getPreferenceNotification_preferenceNotification,
            Gget_preference_notificationData_getPreferenceNotification_preferenceNotificationBuilder> {
  Gget_preference_notificationData_getPreferenceNotification_preferenceNotification._();

  factory Gget_preference_notificationData_getPreferenceNotification_preferenceNotification(
          [void Function(
                  Gget_preference_notificationData_getPreferenceNotification_preferenceNotificationBuilder
                      b)
              updates]) =
      _$Gget_preference_notificationData_getPreferenceNotification_preferenceNotification;

  static void _initializeBuilder(
          Gget_preference_notificationData_getPreferenceNotification_preferenceNotificationBuilder
              b) =>
      b..G__typename = 'PreferenceNotificationModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GPreferenceNotificationEnum get typeNotification;
  bool get isActive;
  static Serializer<
          Gget_preference_notificationData_getPreferenceNotification_preferenceNotification>
      get serializer =>
          _$ggetPreferenceNotificationDataGetPreferenceNotificationPreferenceNotificationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_preference_notificationData_getPreferenceNotification_preferenceNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_preference_notificationData_getPreferenceNotification_preferenceNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_preference_notificationData_getPreferenceNotification_preferenceNotification
                .serializer,
            json,
          );
}
