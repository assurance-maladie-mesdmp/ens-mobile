// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_notification_center.fragment.var.gql.g.dart';

abstract class GnotificationCenterVars
    implements Built<GnotificationCenterVars, GnotificationCenterVarsBuilder> {
  GnotificationCenterVars._();

  factory GnotificationCenterVars(
          [void Function(GnotificationCenterVarsBuilder b) updates]) =
      _$GnotificationCenterVars;

  static Serializer<GnotificationCenterVars> get serializer =>
      _$gnotificationCenterVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GnotificationCenterVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GnotificationCenterVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GnotificationCenterVars.serializer,
        json,
      );
}
