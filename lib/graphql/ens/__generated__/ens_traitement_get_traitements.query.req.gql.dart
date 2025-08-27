// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement_get_traitements.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement_get_traitements.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement_get_traitements.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_traitement_get_traitements.query.req.gql.g.dart';

abstract class Gget_traitementsReq
    implements
        Built<Gget_traitementsReq, Gget_traitementsReqBuilder>,
        _i1
        .OperationRequest<_i2.Gget_traitementsData, _i3.Gget_traitementsVars> {
  Gget_traitementsReq._();

  factory Gget_traitementsReq(
          [void Function(Gget_traitementsReqBuilder b) updates]) =
      _$Gget_traitementsReq;

  static void _initializeBuilder(Gget_traitementsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_traitements',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_traitementsVars get vars;
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
  _i2.Gget_traitementsData? Function(
    _i2.Gget_traitementsData?,
    _i2.Gget_traitementsData?,
  )? get updateResult;
  @override
  _i2.Gget_traitementsData? get optimisticResponse;
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
  _i2.Gget_traitementsData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_traitementsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_traitementsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_traitementsData, _i3.Gget_traitementsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_traitementsReq> get serializer =>
      _$ggetTraitementsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_traitementsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_traitementsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_traitementsReq.serializer,
        json,
      );
}
