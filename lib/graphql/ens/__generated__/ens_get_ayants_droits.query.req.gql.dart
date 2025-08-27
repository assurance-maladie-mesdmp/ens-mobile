// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_ayants_droits.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_ayants_droits.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_ayants_droits.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_get_ayants_droits.query.req.gql.g.dart';

abstract class Gget_ayants_droitsReq
    implements
        Built<Gget_ayants_droitsReq, Gget_ayants_droitsReqBuilder>,
        _i1.OperationRequest<_i2.Gget_ayants_droitsData,
            _i3.Gget_ayants_droitsVars> {
  Gget_ayants_droitsReq._();

  factory Gget_ayants_droitsReq(
          [void Function(Gget_ayants_droitsReqBuilder b) updates]) =
      _$Gget_ayants_droitsReq;

  static void _initializeBuilder(Gget_ayants_droitsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_ayants_droits',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_ayants_droitsVars get vars;
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
  _i2.Gget_ayants_droitsData? Function(
    _i2.Gget_ayants_droitsData?,
    _i2.Gget_ayants_droitsData?,
  )? get updateResult;
  @override
  _i2.Gget_ayants_droitsData? get optimisticResponse;
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
  _i2.Gget_ayants_droitsData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_ayants_droitsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_ayants_droitsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_ayants_droitsData, _i3.Gget_ayants_droitsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_ayants_droitsReq> get serializer =>
      _$ggetAyantsDroitsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_ayants_droitsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ayants_droitsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_ayants_droitsReq.serializer,
        json,
      );
}
