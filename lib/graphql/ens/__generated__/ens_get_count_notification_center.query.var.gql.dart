// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_get_count_notification_center.query.var.gql.g.dart';

abstract class Gget_unread_notification_center_countVars
    implements
        Built<Gget_unread_notification_center_countVars,
            Gget_unread_notification_center_countVarsBuilder> {
  Gget_unread_notification_center_countVars._();

  factory Gget_unread_notification_center_countVars(
      [void Function(Gget_unread_notification_center_countVarsBuilder b)
          updates]) = _$Gget_unread_notification_center_countVars;

  static Serializer<Gget_unread_notification_center_countVars> get serializer =>
      _$ggetUnreadNotificationCenterCountVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_unread_notification_center_countVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_unread_notification_center_countVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_unread_notification_center_countVars.serializer,
        json,
      );
}
