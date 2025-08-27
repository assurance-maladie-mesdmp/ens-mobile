// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mark_notification_as_read.query.var.gql.g.dart';

abstract class Gmark_notification_as_readVars
    implements
        Built<Gmark_notification_as_readVars,
            Gmark_notification_as_readVarsBuilder> {
  Gmark_notification_as_readVars._();

  factory Gmark_notification_as_readVars(
          [void Function(Gmark_notification_as_readVarsBuilder b) updates]) =
      _$Gmark_notification_as_readVars;

  String get notificationId;
  String get patientId;
  static Serializer<Gmark_notification_as_readVars> get serializer =>
      _$gmarkNotificationAsReadVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gmark_notification_as_readVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmark_notification_as_readVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gmark_notification_as_readVars.serializer,
        json,
      );
}
