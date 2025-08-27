// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_dechiffrement.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_dechiffrement.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_dechiffrement.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_dechiffrement.query.req.gql.g.dart';

abstract class Gdecrypt_valueReq
    implements
        Built<Gdecrypt_valueReq, Gdecrypt_valueReqBuilder>,
        _i1.OperationRequest<_i2.Gdecrypt_valueData, _i3.Gdecrypt_valueVars> {
  Gdecrypt_valueReq._();

  factory Gdecrypt_valueReq(
          [void Function(Gdecrypt_valueReqBuilder b) updates]) =
      _$Gdecrypt_valueReq;

  static void _initializeBuilder(Gdecrypt_valueReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'decrypt_value',
    )
    ..executeOnListen = true;

  @override
  _i3.Gdecrypt_valueVars get vars;
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
  _i2.Gdecrypt_valueData? Function(
    _i2.Gdecrypt_valueData?,
    _i2.Gdecrypt_valueData?,
  )? get updateResult;
  @override
  _i2.Gdecrypt_valueData? get optimisticResponse;
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
  _i2.Gdecrypt_valueData? parseData(Map<String, dynamic> json) =>
      _i2.Gdecrypt_valueData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gdecrypt_valueData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.Gdecrypt_valueData, _i3.Gdecrypt_valueVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gdecrypt_valueReq> get serializer =>
      _$gdecryptValueReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gdecrypt_valueReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdecrypt_valueReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gdecrypt_valueReq.serializer,
        json,
      );
}
