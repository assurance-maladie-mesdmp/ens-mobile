// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_device_revoke_enrolled_devices.query.var.gql.g.dart';

abstract class Grevoke_enrolled_devicesVars
    implements
        Built<Grevoke_enrolled_devicesVars,
            Grevoke_enrolled_devicesVarsBuilder> {
  Grevoke_enrolled_devicesVars._();

  factory Grevoke_enrolled_devicesVars(
          [void Function(Grevoke_enrolled_devicesVarsBuilder b) updates]) =
      _$Grevoke_enrolled_devicesVars;

  static Serializer<Grevoke_enrolled_devicesVars> get serializer =>
      _$grevokeEnrolledDevicesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Grevoke_enrolled_devicesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Grevoke_enrolled_devicesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Grevoke_enrolled_devicesVars.serializer,
        json,
      );
}
