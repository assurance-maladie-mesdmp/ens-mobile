// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es_get_es_details.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es_get_es_details.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es_get_es_details.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_es_get_es_details.query.req.gql.g.dart';

abstract class Gget_es_detailsReq
    implements
        Built<Gget_es_detailsReq, Gget_es_detailsReqBuilder>,
        _i1.OperationRequest<_i2.Gget_es_detailsData, _i3.Gget_es_detailsVars> {
  Gget_es_detailsReq._();

  factory Gget_es_detailsReq(
          [void Function(Gget_es_detailsReqBuilder b) updates]) =
      _$Gget_es_detailsReq;

  static void _initializeBuilder(Gget_es_detailsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_es_details',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_es_detailsVars get vars;
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
  _i2.Gget_es_detailsData? Function(
    _i2.Gget_es_detailsData?,
    _i2.Gget_es_detailsData?,
  )? get updateResult;
  @override
  _i2.Gget_es_detailsData? get optimisticResponse;
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
  _i2.Gget_es_detailsData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_es_detailsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_es_detailsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_es_detailsData, _i3.Gget_es_detailsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_es_detailsReq> get serializer =>
      _$ggetEsDetailsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_es_detailsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_es_detailsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_es_detailsReq.serializer,
        json,
      );
}
