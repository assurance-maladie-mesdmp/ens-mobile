// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_send_new_code.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_send_new_code.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_send_new_code.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_enrolement_send_new_code.req.gql.g.dart';

abstract class Gsend_new_enrolement_codeReq
    implements
        Built<Gsend_new_enrolement_codeReq,
            Gsend_new_enrolement_codeReqBuilder>,
        _i1.OperationRequest<_i2.Gsend_new_enrolement_codeData,
            _i3.Gsend_new_enrolement_codeVars> {
  Gsend_new_enrolement_codeReq._();

  factory Gsend_new_enrolement_codeReq(
          [void Function(Gsend_new_enrolement_codeReqBuilder b) updates]) =
      _$Gsend_new_enrolement_codeReq;

  static void _initializeBuilder(Gsend_new_enrolement_codeReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'send_new_enrolement_code',
    )
    ..executeOnListen = true;

  @override
  _i3.Gsend_new_enrolement_codeVars get vars;
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
  _i2.Gsend_new_enrolement_codeData? Function(
    _i2.Gsend_new_enrolement_codeData?,
    _i2.Gsend_new_enrolement_codeData?,
  )? get updateResult;
  @override
  _i2.Gsend_new_enrolement_codeData? get optimisticResponse;
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
  _i2.Gsend_new_enrolement_codeData? parseData(Map<String, dynamic> json) =>
      _i2.Gsend_new_enrolement_codeData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gsend_new_enrolement_codeData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gsend_new_enrolement_codeData,
      _i3.Gsend_new_enrolement_codeVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gsend_new_enrolement_codeReq> get serializer =>
      _$gsendNewEnrolementCodeReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gsend_new_enrolement_codeReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_new_enrolement_codeReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gsend_new_enrolement_codeReq.serializer,
        json,
      );
}
