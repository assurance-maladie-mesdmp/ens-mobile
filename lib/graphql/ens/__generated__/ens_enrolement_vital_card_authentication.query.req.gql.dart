// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_vital_card_authentication.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_vital_card_authentication.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_vital_card_authentication.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_enrolement_vital_card_authentication.query.req.gql.g.dart';

abstract class Gvital_card_authenticationReq
    implements
        Built<Gvital_card_authenticationReq,
            Gvital_card_authenticationReqBuilder>,
        _i1.OperationRequest<_i2.Gvital_card_authenticationData,
            _i3.Gvital_card_authenticationVars> {
  Gvital_card_authenticationReq._();

  factory Gvital_card_authenticationReq(
          [void Function(Gvital_card_authenticationReqBuilder b) updates]) =
      _$Gvital_card_authenticationReq;

  static void _initializeBuilder(Gvital_card_authenticationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'vital_card_authentication',
    )
    ..executeOnListen = true;

  @override
  _i3.Gvital_card_authenticationVars get vars;
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
  _i2.Gvital_card_authenticationData? Function(
    _i2.Gvital_card_authenticationData?,
    _i2.Gvital_card_authenticationData?,
  )? get updateResult;
  @override
  _i2.Gvital_card_authenticationData? get optimisticResponse;
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
  _i2.Gvital_card_authenticationData? parseData(Map<String, dynamic> json) =>
      _i2.Gvital_card_authenticationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gvital_card_authenticationData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gvital_card_authenticationData,
      _i3.Gvital_card_authenticationVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gvital_card_authenticationReq> get serializer =>
      _$gvitalCardAuthenticationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gvital_card_authenticationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gvital_card_authenticationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gvital_card_authenticationReq.serializer,
        json,
      );
}
