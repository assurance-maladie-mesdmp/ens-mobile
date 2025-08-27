// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_device_revoke_enrolled_devices.query.data.gql.g.dart';

abstract class Grevoke_enrolled_devicesData
    implements
        Built<Grevoke_enrolled_devicesData,
            Grevoke_enrolled_devicesDataBuilder> {
  Grevoke_enrolled_devicesData._();

  factory Grevoke_enrolled_devicesData(
          [void Function(Grevoke_enrolled_devicesDataBuilder b) updates]) =
      _$Grevoke_enrolled_devicesData;

  static void _initializeBuilder(Grevoke_enrolled_devicesDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Grevoke_enrolled_devicesData_deleteAllEnrolledDevices
      get deleteAllEnrolledDevices;
  static Serializer<Grevoke_enrolled_devicesData> get serializer =>
      _$grevokeEnrolledDevicesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Grevoke_enrolled_devicesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Grevoke_enrolled_devicesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Grevoke_enrolled_devicesData.serializer,
        json,
      );
}

abstract class Grevoke_enrolled_devicesData_deleteAllEnrolledDevices
    implements
        Built<Grevoke_enrolled_devicesData_deleteAllEnrolledDevices,
            Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder> {
  Grevoke_enrolled_devicesData_deleteAllEnrolledDevices._();

  factory Grevoke_enrolled_devicesData_deleteAllEnrolledDevices(
      [void Function(
              Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder b)
          updates]) = _$Grevoke_enrolled_devicesData_deleteAllEnrolledDevices;

  static void _initializeBuilder(
          Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Grevoke_enrolled_devicesData_deleteAllEnrolledDevices>
      get serializer =>
          _$grevokeEnrolledDevicesDataDeleteAllEnrolledDevicesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Grevoke_enrolled_devicesData_deleteAllEnrolledDevices.serializer,
        this,
      ) as Map<String, dynamic>);

  static Grevoke_enrolled_devicesData_deleteAllEnrolledDevices? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Grevoke_enrolled_devicesData_deleteAllEnrolledDevices.serializer,
        json,
      );
}
