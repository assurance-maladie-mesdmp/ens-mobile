// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_account_change_password.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_account_change_password.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_account_change_password.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_account_change_password.query.req.gql.g.dart';

abstract class Gchange_passwordReq
    implements
        Built<Gchange_passwordReq, Gchange_passwordReqBuilder>,
        _i1
        .OperationRequest<_i2.Gchange_passwordData, _i3.Gchange_passwordVars> {
  Gchange_passwordReq._();

  factory Gchange_passwordReq(
          [void Function(Gchange_passwordReqBuilder b) updates]) =
      _$Gchange_passwordReq;

  static void _initializeBuilder(Gchange_passwordReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'change_password',
    )
    ..executeOnListen = true;

  @override
  _i3.Gchange_passwordVars get vars;
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
  _i2.Gchange_passwordData? Function(
    _i2.Gchange_passwordData?,
    _i2.Gchange_passwordData?,
  )? get updateResult;
  @override
  _i2.Gchange_passwordData? get optimisticResponse;
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
  _i2.Gchange_passwordData? parseData(Map<String, dynamic> json) =>
      _i2.Gchange_passwordData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gchange_passwordData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gchange_passwordData, _i3.Gchange_passwordVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gchange_passwordReq> get serializer =>
      _$gchangePasswordReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gchange_passwordReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gchange_passwordReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gchange_passwordReq.serializer,
        json,
      );
}
