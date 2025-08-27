// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_account_delete_notification_token.query.data.gql.g.dart';

abstract class Gdelete_notification_tokenData
    implements
        Built<Gdelete_notification_tokenData,
            Gdelete_notification_tokenDataBuilder> {
  Gdelete_notification_tokenData._();

  factory Gdelete_notification_tokenData(
          [void Function(Gdelete_notification_tokenDataBuilder b) updates]) =
      _$Gdelete_notification_tokenData;

  static void _initializeBuilder(Gdelete_notification_tokenDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_notification_tokenData_deleteNotificationToken
      get deleteNotificationToken;
  static Serializer<Gdelete_notification_tokenData> get serializer =>
      _$gdeleteNotificationTokenDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_notification_tokenData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_notification_tokenData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_notification_tokenData.serializer,
        json,
      );
}

abstract class Gdelete_notification_tokenData_deleteNotificationToken
    implements
        Built<Gdelete_notification_tokenData_deleteNotificationToken,
            Gdelete_notification_tokenData_deleteNotificationTokenBuilder> {
  Gdelete_notification_tokenData_deleteNotificationToken._();

  factory Gdelete_notification_tokenData_deleteNotificationToken(
      [void Function(
              Gdelete_notification_tokenData_deleteNotificationTokenBuilder b)
          updates]) = _$Gdelete_notification_tokenData_deleteNotificationToken;

  static void _initializeBuilder(
          Gdelete_notification_tokenData_deleteNotificationTokenBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_notification_tokenData_deleteNotificationToken>
      get serializer =>
          _$gdeleteNotificationTokenDataDeleteNotificationTokenSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_notification_tokenData_deleteNotificationToken.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_notification_tokenData_deleteNotificationToken? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_notification_tokenData_deleteNotificationToken.serializer,
        json,
      );
}
