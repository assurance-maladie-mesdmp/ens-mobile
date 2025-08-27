// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_account_change_contact.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_account_change_contact.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_account_change_contact.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_account_change_contact.query.req.gql.g.dart';

abstract class Gchange_contactReq
    implements
        Built<Gchange_contactReq, Gchange_contactReqBuilder>,
        _i1.OperationRequest<_i2.Gchange_contactData, _i3.Gchange_contactVars> {
  Gchange_contactReq._();

  factory Gchange_contactReq(
          [void Function(Gchange_contactReqBuilder b) updates]) =
      _$Gchange_contactReq;

  static void _initializeBuilder(Gchange_contactReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'change_contact',
    )
    ..executeOnListen = true;

  @override
  _i3.Gchange_contactVars get vars;
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
  _i2.Gchange_contactData? Function(
    _i2.Gchange_contactData?,
    _i2.Gchange_contactData?,
  )? get updateResult;
  @override
  _i2.Gchange_contactData? get optimisticResponse;
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
  _i2.Gchange_contactData? parseData(Map<String, dynamic> json) =>
      _i2.Gchange_contactData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gchange_contactData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gchange_contactData, _i3.Gchange_contactVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gchange_contactReq> get serializer =>
      _$gchangeContactReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gchange_contactReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gchange_contactReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gchange_contactReq.serializer,
        json,
      );
}
