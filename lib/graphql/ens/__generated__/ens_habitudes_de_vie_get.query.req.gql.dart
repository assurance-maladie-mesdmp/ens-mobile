// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie_get.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie_get.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie_get.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_habitudes_de_vie_get.query.req.gql.g.dart';

abstract class Gget_habitudes_de_vieReq
    implements
        Built<Gget_habitudes_de_vieReq, Gget_habitudes_de_vieReqBuilder>,
        _i1.OperationRequest<_i2.Gget_habitudes_de_vieData,
            _i3.Gget_habitudes_de_vieVars> {
  Gget_habitudes_de_vieReq._();

  factory Gget_habitudes_de_vieReq(
          [void Function(Gget_habitudes_de_vieReqBuilder b) updates]) =
      _$Gget_habitudes_de_vieReq;

  static void _initializeBuilder(Gget_habitudes_de_vieReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_habitudes_de_vie',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_habitudes_de_vieVars get vars;
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
  _i2.Gget_habitudes_de_vieData? Function(
    _i2.Gget_habitudes_de_vieData?,
    _i2.Gget_habitudes_de_vieData?,
  )? get updateResult;
  @override
  _i2.Gget_habitudes_de_vieData? get optimisticResponse;
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
  _i2.Gget_habitudes_de_vieData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_habitudes_de_vieData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_habitudes_de_vieData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_habitudes_de_vieData,
      _i3.Gget_habitudes_de_vieVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_habitudes_de_vieReq> get serializer =>
      _$ggetHabitudesDeVieReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_habitudes_de_vieReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vieReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_habitudes_de_vieReq.serializer,
        json,
      );
}
