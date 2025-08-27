// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_notification_get_preference_notification.query.var.gql.g.dart';

abstract class Gget_preference_notificationVars
    implements
        Built<Gget_preference_notificationVars,
            Gget_preference_notificationVarsBuilder> {
  Gget_preference_notificationVars._();

  factory Gget_preference_notificationVars(
          [void Function(Gget_preference_notificationVarsBuilder b) updates]) =
      _$Gget_preference_notificationVars;

  _i1.GGetPersonalInformationInput get getPersonalInformationInput;
  static Serializer<Gget_preference_notificationVars> get serializer =>
      _$ggetPreferenceNotificationVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_preference_notificationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_preference_notificationVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_preference_notificationVars.serializer,
        json,
      );
}
