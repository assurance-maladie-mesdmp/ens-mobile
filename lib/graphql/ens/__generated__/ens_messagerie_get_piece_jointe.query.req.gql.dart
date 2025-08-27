// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_get_piece_jointe.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_get_piece_jointe.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_get_piece_jointe.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_messagerie_get_piece_jointe.query.req.gql.g.dart';

abstract class Gget_piece_jointeReq
    implements
        Built<Gget_piece_jointeReq, Gget_piece_jointeReqBuilder>,
        _i1.OperationRequest<_i2.Gget_piece_jointeData,
            _i3.Gget_piece_jointeVars> {
  Gget_piece_jointeReq._();

  factory Gget_piece_jointeReq(
          [void Function(Gget_piece_jointeReqBuilder b) updates]) =
      _$Gget_piece_jointeReq;

  static void _initializeBuilder(Gget_piece_jointeReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_piece_jointe',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_piece_jointeVars get vars;
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
  _i2.Gget_piece_jointeData? Function(
    _i2.Gget_piece_jointeData?,
    _i2.Gget_piece_jointeData?,
  )? get updateResult;
  @override
  _i2.Gget_piece_jointeData? get optimisticResponse;
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
  _i2.Gget_piece_jointeData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_piece_jointeData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_piece_jointeData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_piece_jointeData, _i3.Gget_piece_jointeVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_piece_jointeReq> get serializer =>
      _$ggetPieceJointeReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_piece_jointeReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_piece_jointeReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_piece_jointeReq.serializer,
        json,
      );
}
