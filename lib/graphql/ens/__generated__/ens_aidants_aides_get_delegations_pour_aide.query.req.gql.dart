// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_get_delegations_pour_aide.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_get_delegations_pour_aide.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_get_delegations_pour_aide.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_aidants_aides_get_delegations_pour_aide.query.req.gql.g.dart';

abstract class Gget_delegations_pour_aideReq
    implements
        Built<Gget_delegations_pour_aideReq,
            Gget_delegations_pour_aideReqBuilder>,
        _i1.OperationRequest<_i2.Gget_delegations_pour_aideData,
            _i3.Gget_delegations_pour_aideVars> {
  Gget_delegations_pour_aideReq._();

  factory Gget_delegations_pour_aideReq(
          [void Function(Gget_delegations_pour_aideReqBuilder b) updates]) =
      _$Gget_delegations_pour_aideReq;

  static void _initializeBuilder(Gget_delegations_pour_aideReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_delegations_pour_aide',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_delegations_pour_aideVars get vars;
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
  _i2.Gget_delegations_pour_aideData? Function(
    _i2.Gget_delegations_pour_aideData?,
    _i2.Gget_delegations_pour_aideData?,
  )? get updateResult;
  @override
  _i2.Gget_delegations_pour_aideData? get optimisticResponse;
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
  _i2.Gget_delegations_pour_aideData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_delegations_pour_aideData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_delegations_pour_aideData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_delegations_pour_aideData,
      _i3.Gget_delegations_pour_aideVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_delegations_pour_aideReq> get serializer =>
      _$ggetDelegationsPourAideReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_delegations_pour_aideReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delegations_pour_aideReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_delegations_pour_aideReq.serializer,
        json,
      );
}
