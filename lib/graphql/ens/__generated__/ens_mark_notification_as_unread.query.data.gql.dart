// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mark_notification_as_unread.query.data.gql.g.dart';

abstract class Gmark_notification_as_unreadData
    implements
        Built<Gmark_notification_as_unreadData,
            Gmark_notification_as_unreadDataBuilder> {
  Gmark_notification_as_unreadData._();

  factory Gmark_notification_as_unreadData(
          [void Function(Gmark_notification_as_unreadDataBuilder b) updates]) =
      _$Gmark_notification_as_unreadData;

  static void _initializeBuilder(Gmark_notification_as_unreadDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gmark_notification_as_unreadData_markNotificationAsUnread
      get markNotificationAsUnread;
  static Serializer<Gmark_notification_as_unreadData> get serializer =>
      _$gmarkNotificationAsUnreadDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gmark_notification_as_unreadData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmark_notification_as_unreadData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gmark_notification_as_unreadData.serializer,
        json,
      );
}

abstract class Gmark_notification_as_unreadData_markNotificationAsUnread
    implements
        Built<Gmark_notification_as_unreadData_markNotificationAsUnread,
            Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder> {
  Gmark_notification_as_unreadData_markNotificationAsUnread._();

  factory Gmark_notification_as_unreadData_markNotificationAsUnread(
      [void Function(
              Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder
                  b)
          updates]) = _$Gmark_notification_as_unreadData_markNotificationAsUnread;

  static void _initializeBuilder(
          Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gmark_notification_as_unreadData_markNotificationAsUnread>
      get serializer =>
          _$gmarkNotificationAsUnreadDataMarkNotificationAsUnreadSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gmark_notification_as_unreadData_markNotificationAsUnread.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmark_notification_as_unreadData_markNotificationAsUnread? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gmark_notification_as_unreadData_markNotificationAsUnread.serializer,
        json,
      );
}
