// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_get_last_mesures.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_get_last_mesures.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_get_last_mesures.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_mesures_get_last_mesures.query.req.gql.g.dart';

abstract class Gget_last_mesuresReq
    implements
        Built<Gget_last_mesuresReq, Gget_last_mesuresReqBuilder>,
        _i1.OperationRequest<_i2.Gget_last_mesuresData,
            _i3.Gget_last_mesuresVars> {
  Gget_last_mesuresReq._();

  factory Gget_last_mesuresReq(
          [void Function(Gget_last_mesuresReqBuilder b) updates]) =
      _$Gget_last_mesuresReq;

  static void _initializeBuilder(Gget_last_mesuresReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_last_mesures',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_last_mesuresVars get vars;
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
  _i2.Gget_last_mesuresData? Function(
    _i2.Gget_last_mesuresData?,
    _i2.Gget_last_mesuresData?,
  )? get updateResult;
  @override
  _i2.Gget_last_mesuresData? get optimisticResponse;
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
  _i2.Gget_last_mesuresData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_last_mesuresData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_last_mesuresData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_last_mesuresData, _i3.Gget_last_mesuresVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_last_mesuresReq> get serializer =>
      _$ggetLastMesuresReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_last_mesuresReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_last_mesuresReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_last_mesuresReq.serializer,
        json,
      );
}
