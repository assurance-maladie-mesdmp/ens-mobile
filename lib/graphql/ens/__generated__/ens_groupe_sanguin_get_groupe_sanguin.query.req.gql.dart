// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_groupe_sanguin_get_groupe_sanguin.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_groupe_sanguin_get_groupe_sanguin.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_groupe_sanguin_get_groupe_sanguin.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_groupe_sanguin_get_groupe_sanguin.query.req.gql.g.dart';

abstract class Gget_groupe_sanguinReq
    implements
        Built<Gget_groupe_sanguinReq, Gget_groupe_sanguinReqBuilder>,
        _i1.OperationRequest<_i2.Gget_groupe_sanguinData,
            _i3.Gget_groupe_sanguinVars> {
  Gget_groupe_sanguinReq._();

  factory Gget_groupe_sanguinReq(
          [void Function(Gget_groupe_sanguinReqBuilder b) updates]) =
      _$Gget_groupe_sanguinReq;

  static void _initializeBuilder(Gget_groupe_sanguinReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_groupe_sanguin',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_groupe_sanguinVars get vars;
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
  _i2.Gget_groupe_sanguinData? Function(
    _i2.Gget_groupe_sanguinData?,
    _i2.Gget_groupe_sanguinData?,
  )? get updateResult;
  @override
  _i2.Gget_groupe_sanguinData? get optimisticResponse;
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
  _i2.Gget_groupe_sanguinData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_groupe_sanguinData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_groupe_sanguinData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_groupe_sanguinData, _i3.Gget_groupe_sanguinVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_groupe_sanguinReq> get serializer =>
      _$ggetGroupeSanguinReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_groupe_sanguinReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_groupe_sanguinReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_groupe_sanguinReq.serializer,
        json,
      );
}
