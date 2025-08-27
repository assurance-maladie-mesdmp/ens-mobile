// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_directives_anticipee_get.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_directives_anticipee_get.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_directives_anticipee_get.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_directives_anticipee_get.query.req.gql.g.dart';

abstract class Gget_directives_anticipeesReq
    implements
        Built<Gget_directives_anticipeesReq,
            Gget_directives_anticipeesReqBuilder>,
        _i1.OperationRequest<_i2.Gget_directives_anticipeesData,
            _i3.Gget_directives_anticipeesVars> {
  Gget_directives_anticipeesReq._();

  factory Gget_directives_anticipeesReq(
          [void Function(Gget_directives_anticipeesReqBuilder b) updates]) =
      _$Gget_directives_anticipeesReq;

  static void _initializeBuilder(Gget_directives_anticipeesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_directives_anticipees',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_directives_anticipeesVars get vars;
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
  _i2.Gget_directives_anticipeesData? Function(
    _i2.Gget_directives_anticipeesData?,
    _i2.Gget_directives_anticipeesData?,
  )? get updateResult;
  @override
  _i2.Gget_directives_anticipeesData? get optimisticResponse;
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
  _i2.Gget_directives_anticipeesData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_directives_anticipeesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_directives_anticipeesData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_directives_anticipeesData,
      _i3.Gget_directives_anticipeesVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_directives_anticipeesReq> get serializer =>
      _$ggetDirectivesAnticipeesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_directives_anticipeesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_directives_anticipeesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_directives_anticipeesReq.serializer,
        json,
      );
}
