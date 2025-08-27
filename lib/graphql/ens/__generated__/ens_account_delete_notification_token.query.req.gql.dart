// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_account_delete_notification_token.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_account_delete_notification_token.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_account_delete_notification_token.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_account_delete_notification_token.query.req.gql.g.dart';

abstract class Gdelete_notification_tokenReq
    implements
        Built<Gdelete_notification_tokenReq,
            Gdelete_notification_tokenReqBuilder>,
        _i1.OperationRequest<_i2.Gdelete_notification_tokenData,
            _i3.Gdelete_notification_tokenVars> {
  Gdelete_notification_tokenReq._();

  factory Gdelete_notification_tokenReq(
          [void Function(Gdelete_notification_tokenReqBuilder b) updates]) =
      _$Gdelete_notification_tokenReq;

  static void _initializeBuilder(Gdelete_notification_tokenReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'delete_notification_token',
    )
    ..executeOnListen = true;

  @override
  _i3.Gdelete_notification_tokenVars get vars;
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
  _i2.Gdelete_notification_tokenData? Function(
    _i2.Gdelete_notification_tokenData?,
    _i2.Gdelete_notification_tokenData?,
  )? get updateResult;
  @override
  _i2.Gdelete_notification_tokenData? get optimisticResponse;
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
  _i2.Gdelete_notification_tokenData? parseData(Map<String, dynamic> json) =>
      _i2.Gdelete_notification_tokenData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gdelete_notification_tokenData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gdelete_notification_tokenData,
      _i3.Gdelete_notification_tokenVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gdelete_notification_tokenReq> get serializer =>
      _$gdeleteNotificationTokenReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gdelete_notification_tokenReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_notification_tokenReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gdelete_notification_tokenReq.serializer,
        json,
      );
}
