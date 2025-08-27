// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladies_delete_maladie.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladies_delete_maladie.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladies_delete_maladie.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_maladies_delete_maladie.query.req.gql.g.dart';

abstract class Gdelete_maladieReq
    implements
        Built<Gdelete_maladieReq, Gdelete_maladieReqBuilder>,
        _i1.OperationRequest<_i2.Gdelete_maladieData, _i3.Gdelete_maladieVars> {
  Gdelete_maladieReq._();

  factory Gdelete_maladieReq(
          [void Function(Gdelete_maladieReqBuilder b) updates]) =
      _$Gdelete_maladieReq;

  static void _initializeBuilder(Gdelete_maladieReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'delete_maladie',
    )
    ..executeOnListen = true;

  @override
  _i3.Gdelete_maladieVars get vars;
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
  _i2.Gdelete_maladieData? Function(
    _i2.Gdelete_maladieData?,
    _i2.Gdelete_maladieData?,
  )? get updateResult;
  @override
  _i2.Gdelete_maladieData? get optimisticResponse;
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
  _i2.Gdelete_maladieData? parseData(Map<String, dynamic> json) =>
      _i2.Gdelete_maladieData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gdelete_maladieData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gdelete_maladieData, _i3.Gdelete_maladieVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gdelete_maladieReq> get serializer =>
      _$gdeleteMaladieReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gdelete_maladieReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_maladieReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gdelete_maladieReq.serializer,
        json,
      );
}
