// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mark_notification_as_unread.query.var.gql.g.dart';

abstract class Gmark_notification_as_unreadVars
    implements
        Built<Gmark_notification_as_unreadVars,
            Gmark_notification_as_unreadVarsBuilder> {
  Gmark_notification_as_unreadVars._();

  factory Gmark_notification_as_unreadVars(
          [void Function(Gmark_notification_as_unreadVarsBuilder b) updates]) =
      _$Gmark_notification_as_unreadVars;

  String get notificationId;
  String get patientId;
  static Serializer<Gmark_notification_as_unreadVars> get serializer =>
      _$gmarkNotificationAsUnreadVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gmark_notification_as_unreadVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmark_notification_as_unreadVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gmark_notification_as_unreadVars.serializer,
        json,
      );
}
