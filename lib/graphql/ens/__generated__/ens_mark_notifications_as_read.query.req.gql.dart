// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mark_notifications_as_read.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mark_notifications_as_read.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mark_notifications_as_read.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_mark_notifications_as_read.query.req.gql.g.dart';

abstract class Gmark_all_notifications_as_readReq
    implements
        Built<Gmark_all_notifications_as_readReq,
            Gmark_all_notifications_as_readReqBuilder>,
        _i1.OperationRequest<_i2.Gmark_all_notifications_as_readData,
            _i3.Gmark_all_notifications_as_readVars> {
  Gmark_all_notifications_as_readReq._();

  factory Gmark_all_notifications_as_readReq(
      [void Function(Gmark_all_notifications_as_readReqBuilder b)
          updates]) = _$Gmark_all_notifications_as_readReq;

  static void _initializeBuilder(Gmark_all_notifications_as_readReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'mark_all_notifications_as_read',
        )
        ..executeOnListen = true;

  @override
  _i3.Gmark_all_notifications_as_readVars get vars;
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
  _i2.Gmark_all_notifications_as_readData? Function(
    _i2.Gmark_all_notifications_as_readData?,
    _i2.Gmark_all_notifications_as_readData?,
  )? get updateResult;
  @override
  _i2.Gmark_all_notifications_as_readData? get optimisticResponse;
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
  _i2.Gmark_all_notifications_as_readData? parseData(
          Map<String, dynamic> json) =>
      _i2.Gmark_all_notifications_as_readData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.Gmark_all_notifications_as_readData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gmark_all_notifications_as_readData,
      _i3.Gmark_all_notifications_as_readVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gmark_all_notifications_as_readReq> get serializer =>
      _$gmarkAllNotificationsAsReadReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gmark_all_notifications_as_readReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmark_all_notifications_as_readReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gmark_all_notifications_as_readReq.serializer,
        json,
      );
}
