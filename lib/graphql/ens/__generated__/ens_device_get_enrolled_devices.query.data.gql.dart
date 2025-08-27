// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_device_get_enrolled_devices.query.data.gql.g.dart';

abstract class Gget_enrolled_devicesData
    implements
        Built<Gget_enrolled_devicesData, Gget_enrolled_devicesDataBuilder> {
  Gget_enrolled_devicesData._();

  factory Gget_enrolled_devicesData(
          [void Function(Gget_enrolled_devicesDataBuilder b) updates]) =
      _$Gget_enrolled_devicesData;

  static void _initializeBuilder(Gget_enrolled_devicesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_enrolled_devicesData_getEnrolledDevices get getEnrolledDevices;
  static Serializer<Gget_enrolled_devicesData> get serializer =>
      _$ggetEnrolledDevicesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_enrolled_devicesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_enrolled_devicesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_enrolled_devicesData.serializer,
        json,
      );
}

abstract class Gget_enrolled_devicesData_getEnrolledDevices
    implements
        Built<Gget_enrolled_devicesData_getEnrolledDevices,
            Gget_enrolled_devicesData_getEnrolledDevicesBuilder> {
  Gget_enrolled_devicesData_getEnrolledDevices._();

  factory Gget_enrolled_devicesData_getEnrolledDevices(
      [void Function(Gget_enrolled_devicesData_getEnrolledDevicesBuilder b)
          updates]) = _$Gget_enrolled_devicesData_getEnrolledDevices;

  static void _initializeBuilder(
          Gget_enrolled_devicesData_getEnrolledDevicesBuilder b) =>
      b..G__typename = 'EnrolledDevicesModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get numberOfDevices;
  static Serializer<Gget_enrolled_devicesData_getEnrolledDevices>
      get serializer => _$ggetEnrolledDevicesDataGetEnrolledDevicesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_enrolled_devicesData_getEnrolledDevices.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_enrolled_devicesData_getEnrolledDevices? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_enrolled_devicesData_getEnrolledDevices.serializer,
        json,
      );
}
