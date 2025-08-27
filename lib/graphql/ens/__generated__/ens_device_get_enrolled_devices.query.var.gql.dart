// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_device_get_enrolled_devices.query.var.gql.g.dart';

abstract class Gget_enrolled_devicesVars
    implements
        Built<Gget_enrolled_devicesVars, Gget_enrolled_devicesVarsBuilder> {
  Gget_enrolled_devicesVars._();

  factory Gget_enrolled_devicesVars(
          [void Function(Gget_enrolled_devicesVarsBuilder b) updates]) =
      _$Gget_enrolled_devicesVars;

  static Serializer<Gget_enrolled_devicesVars> get serializer =>
      _$ggetEnrolledDevicesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_enrolled_devicesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_enrolled_devicesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_enrolled_devicesVars.serializer,
        json,
      );
}
