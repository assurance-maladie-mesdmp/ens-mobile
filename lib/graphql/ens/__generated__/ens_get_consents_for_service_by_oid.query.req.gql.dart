// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_consents_for_service_by_oid.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_consents_for_service_by_oid.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_consents_for_service_by_oid.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_get_consents_for_service_by_oid.query.req.gql.g.dart';

abstract class Gget_consents_for_service_by_oidReq
    implements
        Built<Gget_consents_for_service_by_oidReq,
            Gget_consents_for_service_by_oidReqBuilder>,
        _i1.OperationRequest<_i2.Gget_consents_for_service_by_oidData,
            _i3.Gget_consents_for_service_by_oidVars> {
  Gget_consents_for_service_by_oidReq._();

  factory Gget_consents_for_service_by_oidReq(
      [void Function(Gget_consents_for_service_by_oidReqBuilder b)
          updates]) = _$Gget_consents_for_service_by_oidReq;

  static void _initializeBuilder(
          Gget_consents_for_service_by_oidReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'get_consents_for_service_by_oid',
        )
        ..executeOnListen = true;

  @override
  _i3.Gget_consents_for_service_by_oidVars get vars;
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
  _i2.Gget_consents_for_service_by_oidData? Function(
    _i2.Gget_consents_for_service_by_oidData?,
    _i2.Gget_consents_for_service_by_oidData?,
  )? get updateResult;
  @override
  _i2.Gget_consents_for_service_by_oidData? get optimisticResponse;
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
  _i2.Gget_consents_for_service_by_oidData? parseData(
          Map<String, dynamic> json) =>
      _i2.Gget_consents_for_service_by_oidData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.Gget_consents_for_service_by_oidData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_consents_for_service_by_oidData,
      _i3.Gget_consents_for_service_by_oidVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_consents_for_service_by_oidReq> get serializer =>
      _$ggetConsentsForServiceByOidReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_consents_for_service_by_oidReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_consents_for_service_by_oidReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_consents_for_service_by_oidReq.serializer,
        json,
      );
}
