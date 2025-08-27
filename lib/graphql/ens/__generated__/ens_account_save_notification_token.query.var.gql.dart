// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_account_save_notification_token.query.var.gql.g.dart';

abstract class Gsave_notification_tokenVars
    implements
        Built<Gsave_notification_tokenVars,
            Gsave_notification_tokenVarsBuilder> {
  Gsave_notification_tokenVars._();

  factory Gsave_notification_tokenVars(
          [void Function(Gsave_notification_tokenVarsBuilder b) updates]) =
      _$Gsave_notification_tokenVars;

  String get notificationToken;
  _i1.GMobileOsEnum get os;
  static Serializer<Gsave_notification_tokenVars> get serializer =>
      _$gsaveNotificationTokenVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gsave_notification_tokenVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsave_notification_tokenVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gsave_notification_tokenVars.serializer,
        json,
      );
}
