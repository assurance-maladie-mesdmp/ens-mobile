// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_send_signalement.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_send_signalement.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_send_signalement.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_send_signalement.query.req.gql.g.dart';

abstract class Gsend_signalementReq
    implements
        Built<Gsend_signalementReq, Gsend_signalementReqBuilder>,
        _i1.OperationRequest<_i2.Gsend_signalementData,
            _i3.Gsend_signalementVars> {
  Gsend_signalementReq._();

  factory Gsend_signalementReq(
          [void Function(Gsend_signalementReqBuilder b) updates]) =
      _$Gsend_signalementReq;

  static void _initializeBuilder(Gsend_signalementReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'send_signalement',
    )
    ..executeOnListen = true;

  @override
  _i3.Gsend_signalementVars get vars;
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
  _i2.Gsend_signalementData? Function(
    _i2.Gsend_signalementData?,
    _i2.Gsend_signalementData?,
  )? get updateResult;
  @override
  _i2.Gsend_signalementData? get optimisticResponse;
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
  _i2.Gsend_signalementData? parseData(Map<String, dynamic> json) =>
      _i2.Gsend_signalementData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gsend_signalementData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gsend_signalementData, _i3.Gsend_signalementVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gsend_signalementReq> get serializer =>
      _$gsendSignalementReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gsend_signalementReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_signalementReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gsend_signalementReq.serializer,
        json,
      );
}
