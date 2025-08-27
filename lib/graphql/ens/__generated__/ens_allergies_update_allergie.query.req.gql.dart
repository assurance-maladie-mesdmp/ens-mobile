// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_allergies_update_allergie.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_allergies_update_allergie.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_allergies_update_allergie.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_allergies_update_allergie.query.req.gql.g.dart';

abstract class Gupdate_allergieReq
    implements
        Built<Gupdate_allergieReq, Gupdate_allergieReqBuilder>,
        _i1
        .OperationRequest<_i2.Gupdate_allergieData, _i3.Gupdate_allergieVars> {
  Gupdate_allergieReq._();

  factory Gupdate_allergieReq(
          [void Function(Gupdate_allergieReqBuilder b) updates]) =
      _$Gupdate_allergieReq;

  static void _initializeBuilder(Gupdate_allergieReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'update_allergie',
    )
    ..executeOnListen = true;

  @override
  _i3.Gupdate_allergieVars get vars;
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
  _i2.Gupdate_allergieData? Function(
    _i2.Gupdate_allergieData?,
    _i2.Gupdate_allergieData?,
  )? get updateResult;
  @override
  _i2.Gupdate_allergieData? get optimisticResponse;
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
  _i2.Gupdate_allergieData? parseData(Map<String, dynamic> json) =>
      _i2.Gupdate_allergieData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gupdate_allergieData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gupdate_allergieData, _i3.Gupdate_allergieVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gupdate_allergieReq> get serializer =>
      _$gupdateAllergieReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gupdate_allergieReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_allergieReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gupdate_allergieReq.serializer,
        json,
      );
}
