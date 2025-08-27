// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_unsynchronize_service.query.data.gql.g.dart';

abstract class Gunsynchronize_serviceData
    implements
        Built<Gunsynchronize_serviceData, Gunsynchronize_serviceDataBuilder> {
  Gunsynchronize_serviceData._();

  factory Gunsynchronize_serviceData(
          [void Function(Gunsynchronize_serviceDataBuilder b) updates]) =
      _$Gunsynchronize_serviceData;

  static void _initializeBuilder(Gunsynchronize_serviceDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gunsynchronize_serviceData_deleteSynchronizedService
      get deleteSynchronizedService;
  static Serializer<Gunsynchronize_serviceData> get serializer =>
      _$gunsynchronizeServiceDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gunsynchronize_serviceData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gunsynchronize_serviceData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gunsynchronize_serviceData.serializer,
        json,
      );
}

abstract class Gunsynchronize_serviceData_deleteSynchronizedService
    implements
        Built<Gunsynchronize_serviceData_deleteSynchronizedService,
            Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder> {
  Gunsynchronize_serviceData_deleteSynchronizedService._();

  factory Gunsynchronize_serviceData_deleteSynchronizedService(
      [void Function(
              Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder b)
          updates]) = _$Gunsynchronize_serviceData_deleteSynchronizedService;

  static void _initializeBuilder(
          Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gunsynchronize_serviceData_deleteSynchronizedService>
      get serializer =>
          _$gunsynchronizeServiceDataDeleteSynchronizedServiceSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gunsynchronize_serviceData_deleteSynchronizedService.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gunsynchronize_serviceData_deleteSynchronizedService? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gunsynchronize_serviceData_deleteSynchronizedService.serializer,
        json,
      );
}
