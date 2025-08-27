// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_handicap_update.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_handicap_update.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_handicap_update.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_handicap_update.query.req.gql.g.dart';

abstract class Gupdate_handicapReq
    implements
        Built<Gupdate_handicapReq, Gupdate_handicapReqBuilder>,
        _i1
        .OperationRequest<_i2.Gupdate_handicapData, _i3.Gupdate_handicapVars> {
  Gupdate_handicapReq._();

  factory Gupdate_handicapReq(
          [void Function(Gupdate_handicapReqBuilder b) updates]) =
      _$Gupdate_handicapReq;

  static void _initializeBuilder(Gupdate_handicapReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'update_handicap',
    )
    ..executeOnListen = true;

  @override
  _i3.Gupdate_handicapVars get vars;
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
  _i2.Gupdate_handicapData? Function(
    _i2.Gupdate_handicapData?,
    _i2.Gupdate_handicapData?,
  )? get updateResult;
  @override
  _i2.Gupdate_handicapData? get optimisticResponse;
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
  _i2.Gupdate_handicapData? parseData(Map<String, dynamic> json) =>
      _i2.Gupdate_handicapData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gupdate_handicapData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gupdate_handicapData, _i3.Gupdate_handicapVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gupdate_handicapReq> get serializer =>
      _$gupdateHandicapReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gupdate_handicapReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_handicapReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gupdate_handicapReq.serializer,
        json,
      );
}
