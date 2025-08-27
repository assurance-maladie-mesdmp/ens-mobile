// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_notification_set_preference_notification.query.data.gql.g.dart';

abstract class Gset_preference_notificationData
    implements
        Built<Gset_preference_notificationData,
            Gset_preference_notificationDataBuilder> {
  Gset_preference_notificationData._();

  factory Gset_preference_notificationData(
          [void Function(Gset_preference_notificationDataBuilder b) updates]) =
      _$Gset_preference_notificationData;

  static void _initializeBuilder(Gset_preference_notificationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gset_preference_notificationData_setPreferenceNotification
      get setPreferenceNotification;
  static Serializer<Gset_preference_notificationData> get serializer =>
      _$gsetPreferenceNotificationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gset_preference_notificationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gset_preference_notificationData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gset_preference_notificationData.serializer,
        json,
      );
}

abstract class Gset_preference_notificationData_setPreferenceNotification
    implements
        Built<Gset_preference_notificationData_setPreferenceNotification,
            Gset_preference_notificationData_setPreferenceNotificationBuilder> {
  Gset_preference_notificationData_setPreferenceNotification._();

  factory Gset_preference_notificationData_setPreferenceNotification(
      [void Function(
              Gset_preference_notificationData_setPreferenceNotificationBuilder
                  b)
          updates]) = _$Gset_preference_notificationData_setPreferenceNotification;

  static void _initializeBuilder(
          Gset_preference_notificationData_setPreferenceNotificationBuilder
              b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gset_preference_notificationData_setPreferenceNotification>
      get serializer =>
          _$gsetPreferenceNotificationDataSetPreferenceNotificationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gset_preference_notificationData_setPreferenceNotification.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gset_preference_notificationData_setPreferenceNotification? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gset_preference_notificationData_setPreferenceNotification.serializer,
        json,
      );
}
