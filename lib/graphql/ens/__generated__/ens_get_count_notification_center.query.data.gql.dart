// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_get_count_notification_center.query.data.gql.g.dart';

abstract class Gget_unread_notification_center_countData
    implements
        Built<Gget_unread_notification_center_countData,
            Gget_unread_notification_center_countDataBuilder> {
  Gget_unread_notification_center_countData._();

  factory Gget_unread_notification_center_countData(
      [void Function(Gget_unread_notification_center_countDataBuilder b)
          updates]) = _$Gget_unread_notification_center_countData;

  static void _initializeBuilder(
          Gget_unread_notification_center_countDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_unread_notification_center_countData_fetchNotificationCenter?
      get fetchNotificationCenter;
  static Serializer<Gget_unread_notification_center_countData> get serializer =>
      _$ggetUnreadNotificationCenterCountDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_unread_notification_center_countData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_unread_notification_center_countData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_unread_notification_center_countData.serializer,
        json,
      );
}

abstract class Gget_unread_notification_center_countData_fetchNotificationCenter
    implements
        Built<Gget_unread_notification_center_countData_fetchNotificationCenter,
            Gget_unread_notification_center_countData_fetchNotificationCenterBuilder> {
  Gget_unread_notification_center_countData_fetchNotificationCenter._();

  factory Gget_unread_notification_center_countData_fetchNotificationCenter(
          [void Function(
                  Gget_unread_notification_center_countData_fetchNotificationCenterBuilder
                      b)
              updates]) =
      _$Gget_unread_notification_center_countData_fetchNotificationCenter;

  static void _initializeBuilder(
          Gget_unread_notification_center_countData_fetchNotificationCenterBuilder
              b) =>
      b..G__typename = 'NotificationCenterViewModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get unreadNotificationsCount;
  static Serializer<
          Gget_unread_notification_center_countData_fetchNotificationCenter>
      get serializer =>
          _$ggetUnreadNotificationCenterCountDataFetchNotificationCenterSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_unread_notification_center_countData_fetchNotificationCenter
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_unread_notification_center_countData_fetchNotificationCenter?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_unread_notification_center_countData_fetchNotificationCenter
                .serializer,
            json,
          );
}
