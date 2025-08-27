// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_consentement.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_consentement.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_consentement.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_ps_get_consentement.query.req.gql.g.dart';

abstract class Gget_consentement_psReq
    implements
        Built<Gget_consentement_psReq, Gget_consentement_psReqBuilder>,
        _i1.OperationRequest<_i2.Gget_consentement_psData,
            _i3.Gget_consentement_psVars> {
  Gget_consentement_psReq._();

  factory Gget_consentement_psReq(
          [void Function(Gget_consentement_psReqBuilder b) updates]) =
      _$Gget_consentement_psReq;

  static void _initializeBuilder(Gget_consentement_psReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_consentement_ps',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_consentement_psVars get vars;
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
  _i2.Gget_consentement_psData? Function(
    _i2.Gget_consentement_psData?,
    _i2.Gget_consentement_psData?,
  )? get updateResult;
  @override
  _i2.Gget_consentement_psData? get optimisticResponse;
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
  _i2.Gget_consentement_psData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_consentement_psData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_consentement_psData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_consentement_psData,
      _i3.Gget_consentement_psVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_consentement_psReq> get serializer =>
      _$ggetConsentementPsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_consentement_psReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_consentement_psReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_consentement_psReq.serializer,
        json,
      );
}
