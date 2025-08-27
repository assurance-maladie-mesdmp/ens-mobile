// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_delete_antecedent_familial.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_delete_antecedent_familial.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_delete_antecedent_familial.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_delete_antecedent_familial.query.req.gql.g.dart';

abstract class Gdelete_antecedent_familialReq
    implements
        Built<Gdelete_antecedent_familialReq,
            Gdelete_antecedent_familialReqBuilder>,
        _i1.OperationRequest<_i2.Gdelete_antecedent_familialData,
            _i3.Gdelete_antecedent_familialVars> {
  Gdelete_antecedent_familialReq._();

  factory Gdelete_antecedent_familialReq(
          [void Function(Gdelete_antecedent_familialReqBuilder b) updates]) =
      _$Gdelete_antecedent_familialReq;

  static void _initializeBuilder(Gdelete_antecedent_familialReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'delete_antecedent_familial',
    )
    ..executeOnListen = true;

  @override
  _i3.Gdelete_antecedent_familialVars get vars;
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
  _i2.Gdelete_antecedent_familialData? Function(
    _i2.Gdelete_antecedent_familialData?,
    _i2.Gdelete_antecedent_familialData?,
  )? get updateResult;
  @override
  _i2.Gdelete_antecedent_familialData? get optimisticResponse;
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
  _i2.Gdelete_antecedent_familialData? parseData(Map<String, dynamic> json) =>
      _i2.Gdelete_antecedent_familialData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gdelete_antecedent_familialData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gdelete_antecedent_familialData,
      _i3.Gdelete_antecedent_familialVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gdelete_antecedent_familialReq> get serializer =>
      _$gdeleteAntecedentFamilialReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gdelete_antecedent_familialReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_antecedent_familialReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gdelete_antecedent_familialReq.serializer,
        json,
      );
}
