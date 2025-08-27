// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_delete_notification.query.data.gql.g.dart';

abstract class Gdelete_notificationData
    implements
        Built<Gdelete_notificationData, Gdelete_notificationDataBuilder> {
  Gdelete_notificationData._();

  factory Gdelete_notificationData(
          [void Function(Gdelete_notificationDataBuilder b) updates]) =
      _$Gdelete_notificationData;

  static void _initializeBuilder(Gdelete_notificationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_notificationData_deleteNotification get deleteNotification;
  static Serializer<Gdelete_notificationData> get serializer =>
      _$gdeleteNotificationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_notificationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_notificationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_notificationData.serializer,
        json,
      );
}

abstract class Gdelete_notificationData_deleteNotification
    implements
        Built<Gdelete_notificationData_deleteNotification,
            Gdelete_notificationData_deleteNotificationBuilder> {
  Gdelete_notificationData_deleteNotification._();

  factory Gdelete_notificationData_deleteNotification(
      [void Function(Gdelete_notificationData_deleteNotificationBuilder b)
          updates]) = _$Gdelete_notificationData_deleteNotification;

  static void _initializeBuilder(
          Gdelete_notificationData_deleteNotificationBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_notificationData_deleteNotification>
      get serializer => _$gdeleteNotificationDataDeleteNotificationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_notificationData_deleteNotification.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_notificationData_deleteNotification? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_notificationData_deleteNotification.serializer,
        json,
      );
}
