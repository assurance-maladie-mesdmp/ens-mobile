// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_entourage_get_entourage.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_entourage_get_entourage.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_entourage_get_entourage.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_entourage_get_entourage.query.req.gql.g.dart';

abstract class Gget_entourage_contactReq
    implements
        Built<Gget_entourage_contactReq, Gget_entourage_contactReqBuilder>,
        _i1.OperationRequest<_i2.Gget_entourage_contactData,
            _i3.Gget_entourage_contactVars> {
  Gget_entourage_contactReq._();

  factory Gget_entourage_contactReq(
          [void Function(Gget_entourage_contactReqBuilder b) updates]) =
      _$Gget_entourage_contactReq;

  static void _initializeBuilder(Gget_entourage_contactReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_entourage_contact',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_entourage_contactVars get vars;
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
  _i2.Gget_entourage_contactData? Function(
    _i2.Gget_entourage_contactData?,
    _i2.Gget_entourage_contactData?,
  )? get updateResult;
  @override
  _i2.Gget_entourage_contactData? get optimisticResponse;
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
  _i2.Gget_entourage_contactData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_entourage_contactData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_entourage_contactData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_entourage_contactData,
      _i3.Gget_entourage_contactVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_entourage_contactReq> get serializer =>
      _$ggetEntourageContactReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_entourage_contactReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_entourage_contactReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_entourage_contactReq.serializer,
        json,
      );
}
