// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_account_delete_notification_token.query.var.gql.g.dart';

abstract class Gdelete_notification_tokenVars
    implements
        Built<Gdelete_notification_tokenVars,
            Gdelete_notification_tokenVarsBuilder> {
  Gdelete_notification_tokenVars._();

  factory Gdelete_notification_tokenVars(
          [void Function(Gdelete_notification_tokenVarsBuilder b) updates]) =
      _$Gdelete_notification_tokenVars;

  String get patientId;
  static Serializer<Gdelete_notification_tokenVars> get serializer =>
      _$gdeleteNotificationTokenVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_notification_tokenVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_notification_tokenVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_notification_tokenVars.serializer,
        json,
      );
}
