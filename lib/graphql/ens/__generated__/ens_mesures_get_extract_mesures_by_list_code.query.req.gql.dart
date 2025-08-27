// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_get_extract_mesures_by_list_code.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_get_extract_mesures_by_list_code.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_get_extract_mesures_by_list_code.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_mesures_get_extract_mesures_by_list_code.query.req.gql.g.dart';

abstract class Gget_extract_mesures_by_list_codeReq
    implements
        Built<Gget_extract_mesures_by_list_codeReq,
            Gget_extract_mesures_by_list_codeReqBuilder>,
        _i1.OperationRequest<_i2.Gget_extract_mesures_by_list_codeData,
            _i3.Gget_extract_mesures_by_list_codeVars> {
  Gget_extract_mesures_by_list_codeReq._();

  factory Gget_extract_mesures_by_list_codeReq(
      [void Function(Gget_extract_mesures_by_list_codeReqBuilder b)
          updates]) = _$Gget_extract_mesures_by_list_codeReq;

  static void _initializeBuilder(
          Gget_extract_mesures_by_list_codeReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'get_extract_mesures_by_list_code',
        )
        ..executeOnListen = true;

  @override
  _i3.Gget_extract_mesures_by_list_codeVars get vars;
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
  _i2.Gget_extract_mesures_by_list_codeData? Function(
    _i2.Gget_extract_mesures_by_list_codeData?,
    _i2.Gget_extract_mesures_by_list_codeData?,
  )? get updateResult;
  @override
  _i2.Gget_extract_mesures_by_list_codeData? get optimisticResponse;
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
  _i2.Gget_extract_mesures_by_list_codeData? parseData(
          Map<String, dynamic> json) =>
      _i2.Gget_extract_mesures_by_list_codeData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.Gget_extract_mesures_by_list_codeData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_extract_mesures_by_list_codeData,
      _i3.Gget_extract_mesures_by_list_codeVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_extract_mesures_by_list_codeReq> get serializer =>
      _$ggetExtractMesuresByListCodeReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_extract_mesures_by_list_codeReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_extract_mesures_by_list_codeReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_extract_mesures_by_list_codeReq.serializer,
        json,
      );
}
