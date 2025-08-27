// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_get_notification_center.query.var.gql.g.dart';

abstract class Gget_notification_centerVars
    implements
        Built<Gget_notification_centerVars,
            Gget_notification_centerVarsBuilder> {
  Gget_notification_centerVars._();

  factory Gget_notification_centerVars(
          [void Function(Gget_notification_centerVarsBuilder b) updates]) =
      _$Gget_notification_centerVars;

  static Serializer<Gget_notification_centerVars> get serializer =>
      _$ggetNotificationCenterVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_notification_centerVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_notification_centerVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_notification_centerVars.serializer,
        json,
      );
}
