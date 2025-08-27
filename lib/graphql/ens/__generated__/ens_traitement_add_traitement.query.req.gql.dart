// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement_add_traitement.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement_add_traitement.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement_add_traitement.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_traitement_add_traitement.query.req.gql.g.dart';

abstract class Gadd_traitementReq
    implements
        Built<Gadd_traitementReq, Gadd_traitementReqBuilder>,
        _i1.OperationRequest<_i2.Gadd_traitementData, _i3.Gadd_traitementVars> {
  Gadd_traitementReq._();

  factory Gadd_traitementReq(
          [void Function(Gadd_traitementReqBuilder b) updates]) =
      _$Gadd_traitementReq;

  static void _initializeBuilder(Gadd_traitementReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'add_traitement',
    )
    ..executeOnListen = true;

  @override
  _i3.Gadd_traitementVars get vars;
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
  _i2.Gadd_traitementData? Function(
    _i2.Gadd_traitementData?,
    _i2.Gadd_traitementData?,
  )? get updateResult;
  @override
  _i2.Gadd_traitementData? get optimisticResponse;
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
  _i2.Gadd_traitementData? parseData(Map<String, dynamic> json) =>
      _i2.Gadd_traitementData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gadd_traitementData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gadd_traitementData, _i3.Gadd_traitementVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gadd_traitementReq> get serializer =>
      _$gaddTraitementReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gadd_traitementReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_traitementReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gadd_traitementReq.serializer,
        json,
      );
}
