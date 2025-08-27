// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_update_mesure_target.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_update_mesure_target.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_update_mesure_target.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_mesures_update_mesure_target.query.req.gql.g.dart';

abstract class Gupdate_mesure_targetReq
    implements
        Built<Gupdate_mesure_targetReq, Gupdate_mesure_targetReqBuilder>,
        _i1.OperationRequest<_i2.Gupdate_mesure_targetData,
            _i3.Gupdate_mesure_targetVars> {
  Gupdate_mesure_targetReq._();

  factory Gupdate_mesure_targetReq(
          [void Function(Gupdate_mesure_targetReqBuilder b) updates]) =
      _$Gupdate_mesure_targetReq;

  static void _initializeBuilder(Gupdate_mesure_targetReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'update_mesure_target',
    )
    ..executeOnListen = true;

  @override
  _i3.Gupdate_mesure_targetVars get vars;
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
  _i2.Gupdate_mesure_targetData? Function(
    _i2.Gupdate_mesure_targetData?,
    _i2.Gupdate_mesure_targetData?,
  )? get updateResult;
  @override
  _i2.Gupdate_mesure_targetData? get optimisticResponse;
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
  _i2.Gupdate_mesure_targetData? parseData(Map<String, dynamic> json) =>
      _i2.Gupdate_mesure_targetData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gupdate_mesure_targetData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gupdate_mesure_targetData,
      _i3.Gupdate_mesure_targetVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gupdate_mesure_targetReq> get serializer =>
      _$gupdateMesureTargetReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gupdate_mesure_targetReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_mesure_targetReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gupdate_mesure_targetReq.serializer,
        json,
      );
}
