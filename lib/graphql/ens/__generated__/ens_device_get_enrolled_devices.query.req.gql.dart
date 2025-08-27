// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_device_get_enrolled_devices.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_device_get_enrolled_devices.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_device_get_enrolled_devices.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_device_get_enrolled_devices.query.req.gql.g.dart';

abstract class Gget_enrolled_devicesReq
    implements
        Built<Gget_enrolled_devicesReq, Gget_enrolled_devicesReqBuilder>,
        _i1.OperationRequest<_i2.Gget_enrolled_devicesData,
            _i3.Gget_enrolled_devicesVars> {
  Gget_enrolled_devicesReq._();

  factory Gget_enrolled_devicesReq(
          [void Function(Gget_enrolled_devicesReqBuilder b) updates]) =
      _$Gget_enrolled_devicesReq;

  static void _initializeBuilder(Gget_enrolled_devicesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_enrolled_devices',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_enrolled_devicesVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.Gget_enrolled_devicesData? Function(
    _i2.Gget_enrolled_devicesData?,
    _i2.Gget_enrolled_devicesData?,
  )? get updateResult;
  @override
  _i2.Gget_enrolled_devicesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.Gget_enrolled_devicesData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_enrolled_devicesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_enrolled_devicesData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_enrolled_devicesData,
      _i3.Gget_enrolled_devicesVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_enrolled_devicesReq> get serializer =>
      _$ggetEnrolledDevicesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_enrolled_devicesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_enrolled_devicesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_enrolled_devicesReq.serializer,
        json,
      );
}
