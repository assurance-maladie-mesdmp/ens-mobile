// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mark_notifications_as_read.query.data.gql.g.dart';

abstract class Gmark_all_notifications_as_readData
    implements
        Built<Gmark_all_notifications_as_readData,
            Gmark_all_notifications_as_readDataBuilder> {
  Gmark_all_notifications_as_readData._();

  factory Gmark_all_notifications_as_readData(
      [void Function(Gmark_all_notifications_as_readDataBuilder b)
          updates]) = _$Gmark_all_notifications_as_readData;

  static void _initializeBuilder(
          Gmark_all_notifications_as_readDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gmark_all_notifications_as_readData_markAllNotificationsAsRead
      get markAllNotificationsAsRead;
  static Serializer<Gmark_all_notifications_as_readData> get serializer =>
      _$gmarkAllNotificationsAsReadDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gmark_all_notifications_as_readData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmark_all_notifications_as_readData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gmark_all_notifications_as_readData.serializer,
        json,
      );
}

abstract class Gmark_all_notifications_as_readData_markAllNotificationsAsRead
    implements
        Built<Gmark_all_notifications_as_readData_markAllNotificationsAsRead,
            Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder> {
  Gmark_all_notifications_as_readData_markAllNotificationsAsRead._();

  factory Gmark_all_notifications_as_readData_markAllNotificationsAsRead(
          [void Function(
                  Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder
                      b)
              updates]) =
      _$Gmark_all_notifications_as_readData_markAllNotificationsAsRead;

  static void _initializeBuilder(
          Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder
              b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<
          Gmark_all_notifications_as_readData_markAllNotificationsAsRead>
      get serializer =>
          _$gmarkAllNotificationsAsReadDataMarkAllNotificationsAsReadSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gmark_all_notifications_as_readData_markAllNotificationsAsRead
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmark_all_notifications_as_readData_markAllNotificationsAsRead?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gmark_all_notifications_as_readData_markAllNotificationsAsRead
                .serializer,
            json,
          );
}
