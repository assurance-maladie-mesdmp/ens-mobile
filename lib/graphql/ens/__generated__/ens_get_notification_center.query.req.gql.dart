// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_notification_center.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_notification_center.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_notification_center.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_get_notification_center.query.req.gql.g.dart';

abstract class Gget_notification_centerReq
    implements
        Built<Gget_notification_centerReq, Gget_notification_centerReqBuilder>,
        _i1.OperationRequest<_i2.Gget_notification_centerData,
            _i3.Gget_notification_centerVars> {
  Gget_notification_centerReq._();

  factory Gget_notification_centerReq(
          [void Function(Gget_notification_centerReqBuilder b) updates]) =
      _$Gget_notification_centerReq;

  static void _initializeBuilder(Gget_notification_centerReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_notification_center',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_notification_centerVars get vars;
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
  _i2.Gget_notification_centerData? Function(
    _i2.Gget_notification_centerData?,
    _i2.Gget_notification_centerData?,
  )? get updateResult;
  @override
  _i2.Gget_notification_centerData? get optimisticResponse;
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
  _i2.Gget_notification_centerData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_notification_centerData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_notification_centerData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_notification_centerData,
      _i3.Gget_notification_centerVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_notification_centerReq> get serializer =>
      _$ggetNotificationCenterReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_notification_centerReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_notification_centerReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_notification_centerReq.serializer,
        json,
      );
}
