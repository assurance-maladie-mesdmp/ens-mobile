// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mark_notification_as_read.query.data.gql.g.dart';

abstract class Gmark_notification_as_readData
    implements
        Built<Gmark_notification_as_readData,
            Gmark_notification_as_readDataBuilder> {
  Gmark_notification_as_readData._();

  factory Gmark_notification_as_readData(
          [void Function(Gmark_notification_as_readDataBuilder b) updates]) =
      _$Gmark_notification_as_readData;

  static void _initializeBuilder(Gmark_notification_as_readDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gmark_notification_as_readData_markNotificationAsRead
      get markNotificationAsRead;
  static Serializer<Gmark_notification_as_readData> get serializer =>
      _$gmarkNotificationAsReadDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gmark_notification_as_readData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmark_notification_as_readData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gmark_notification_as_readData.serializer,
        json,
      );
}

abstract class Gmark_notification_as_readData_markNotificationAsRead
    implements
        Built<Gmark_notification_as_readData_markNotificationAsRead,
            Gmark_notification_as_readData_markNotificationAsReadBuilder> {
  Gmark_notification_as_readData_markNotificationAsRead._();

  factory Gmark_notification_as_readData_markNotificationAsRead(
      [void Function(
              Gmark_notification_as_readData_markNotificationAsReadBuilder b)
          updates]) = _$Gmark_notification_as_readData_markNotificationAsRead;

  static void _initializeBuilder(
          Gmark_notification_as_readData_markNotificationAsReadBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gmark_notification_as_readData_markNotificationAsRead>
      get serializer =>
          _$gmarkNotificationAsReadDataMarkNotificationAsReadSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gmark_notification_as_readData_markNotificationAsRead.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmark_notification_as_readData_markNotificationAsRead? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gmark_notification_as_readData_markNotificationAsRead.serializer,
        json,
      );
}
