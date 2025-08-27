// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_add_mesure.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_add_mesure.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_add_mesure.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_mesures_add_mesure.query.req.gql.g.dart';

abstract class Gadd_mesureReq
    implements
        Built<Gadd_mesureReq, Gadd_mesureReqBuilder>,
        _i1.OperationRequest<_i2.Gadd_mesureData, _i3.Gadd_mesureVars> {
  Gadd_mesureReq._();

  factory Gadd_mesureReq([void Function(Gadd_mesureReqBuilder b) updates]) =
      _$Gadd_mesureReq;

  static void _initializeBuilder(Gadd_mesureReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'add_mesure',
    )
    ..executeOnListen = true;

  @override
  _i3.Gadd_mesureVars get vars;
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
  _i2.Gadd_mesureData? Function(
    _i2.Gadd_mesureData?,
    _i2.Gadd_mesureData?,
  )? get updateResult;
  @override
  _i2.Gadd_mesureData? get optimisticResponse;
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
  _i2.Gadd_mesureData? parseData(Map<String, dynamic> json) =>
      _i2.Gadd_mesureData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gadd_mesureData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.Gadd_mesureData, _i3.Gadd_mesureVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gadd_mesureReq> get serializer => _$gaddMesureReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gadd_mesureReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_mesureReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gadd_mesureReq.serializer,
        json,
      );
}
