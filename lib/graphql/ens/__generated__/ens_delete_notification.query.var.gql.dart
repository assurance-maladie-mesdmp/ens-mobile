// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_delete_notification.query.var.gql.g.dart';

abstract class Gdelete_notificationVars
    implements
        Built<Gdelete_notificationVars, Gdelete_notificationVarsBuilder> {
  Gdelete_notificationVars._();

  factory Gdelete_notificationVars(
          [void Function(Gdelete_notificationVarsBuilder b) updates]) =
      _$Gdelete_notificationVars;

  String get notificationId;
  String get patientId;
  static Serializer<Gdelete_notificationVars> get serializer =>
      _$gdeleteNotificationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_notificationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_notificationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_notificationVars.serializer,
        json,
      );
}
