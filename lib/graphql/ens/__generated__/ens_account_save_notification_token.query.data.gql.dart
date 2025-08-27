// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_account_save_notification_token.query.data.gql.g.dart';

abstract class Gsave_notification_tokenData
    implements
        Built<Gsave_notification_tokenData,
            Gsave_notification_tokenDataBuilder> {
  Gsave_notification_tokenData._();

  factory Gsave_notification_tokenData(
          [void Function(Gsave_notification_tokenDataBuilder b) updates]) =
      _$Gsave_notification_tokenData;

  static void _initializeBuilder(Gsave_notification_tokenDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gsave_notification_tokenData_saveNotificationToken get saveNotificationToken;
  static Serializer<Gsave_notification_tokenData> get serializer =>
      _$gsaveNotificationTokenDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsave_notification_tokenData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsave_notification_tokenData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsave_notification_tokenData.serializer,
        json,
      );
}

abstract class Gsave_notification_tokenData_saveNotificationToken
    implements
        Built<Gsave_notification_tokenData_saveNotificationToken,
            Gsave_notification_tokenData_saveNotificationTokenBuilder> {
  Gsave_notification_tokenData_saveNotificationToken._();

  factory Gsave_notification_tokenData_saveNotificationToken(
      [void Function(
              Gsave_notification_tokenData_saveNotificationTokenBuilder b)
          updates]) = _$Gsave_notification_tokenData_saveNotificationToken;

  static void _initializeBuilder(
          Gsave_notification_tokenData_saveNotificationTokenBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gsave_notification_tokenData_saveNotificationToken>
      get serializer =>
          _$gsaveNotificationTokenDataSaveNotificationTokenSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsave_notification_tokenData_saveNotificationToken.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsave_notification_tokenData_saveNotificationToken? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsave_notification_tokenData_saveNotificationToken.serializer,
        json,
      );
}
