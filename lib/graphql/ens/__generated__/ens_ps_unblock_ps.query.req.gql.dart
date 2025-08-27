// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_unblock_ps.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_unblock_ps.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_unblock_ps.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_ps_unblock_ps.query.req.gql.g.dart';

abstract class Gunblock_psReq
    implements
        Built<Gunblock_psReq, Gunblock_psReqBuilder>,
        _i1.OperationRequest<_i2.Gunblock_psData, _i3.Gunblock_psVars> {
  Gunblock_psReq._();

  factory Gunblock_psReq([void Function(Gunblock_psReqBuilder b) updates]) =
      _$Gunblock_psReq;

  static void _initializeBuilder(Gunblock_psReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'unblock_ps',
    )
    ..executeOnListen = true;

  @override
  _i3.Gunblock_psVars get vars;
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
  _i2.Gunblock_psData? Function(
    _i2.Gunblock_psData?,
    _i2.Gunblock_psData?,
  )? get updateResult;
  @override
  _i2.Gunblock_psData? get optimisticResponse;
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
  _i2.Gunblock_psData? parseData(Map<String, dynamic> json) =>
      _i2.Gunblock_psData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gunblock_psData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.Gunblock_psData, _i3.Gunblock_psVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gunblock_psReq> get serializer => _$gunblockPsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gunblock_psReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gunblock_psReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gunblock_psReq.serializer,
        json,
      );
}
