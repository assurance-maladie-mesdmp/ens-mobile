// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_link.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_link.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_link.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_link.query.req.gql.g.dart';

abstract class Gdelete_linkReq
    implements
        Built<Gdelete_linkReq, Gdelete_linkReqBuilder>,
        _i1.OperationRequest<_i2.Gdelete_linkData, _i3.Gdelete_linkVars> {
  Gdelete_linkReq._();

  factory Gdelete_linkReq([void Function(Gdelete_linkReqBuilder b) updates]) =
      _$Gdelete_linkReq;

  static void _initializeBuilder(Gdelete_linkReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'delete_link',
    )
    ..executeOnListen = true;

  @override
  _i3.Gdelete_linkVars get vars;
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
  _i2.Gdelete_linkData? Function(
    _i2.Gdelete_linkData?,
    _i2.Gdelete_linkData?,
  )? get updateResult;
  @override
  _i2.Gdelete_linkData? get optimisticResponse;
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
  _i2.Gdelete_linkData? parseData(Map<String, dynamic> json) =>
      _i2.Gdelete_linkData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gdelete_linkData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.Gdelete_linkData, _i3.Gdelete_linkVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gdelete_linkReq> get serializer =>
      _$gdeleteLinkReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gdelete_linkReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_linkReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gdelete_linkReq.serializer,
        json,
      );
}
