// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_notification_set_preference_notification.query.var.gql.g.dart';

abstract class Gset_preference_notificationVars
    implements
        Built<Gset_preference_notificationVars,
            Gset_preference_notificationVarsBuilder> {
  Gset_preference_notificationVars._();

  factory Gset_preference_notificationVars(
          [void Function(Gset_preference_notificationVarsBuilder b) updates]) =
      _$Gset_preference_notificationVars;

  _i1.GChangePreferenceNotificationInput get changePreferenceNotificationInput;
  static Serializer<Gset_preference_notificationVars> get serializer =>
      _$gsetPreferenceNotificationVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gset_preference_notificationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gset_preference_notificationVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gset_preference_notificationVars.serializer,
        json,
      );
}
