// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement_update_traitement.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement_update_traitement.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement_update_traitement.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_traitement_update_traitement.query.req.gql.g.dart';

abstract class Gupdate_traitementReq
    implements
        Built<Gupdate_traitementReq, Gupdate_traitementReqBuilder>,
        _i1.OperationRequest<_i2.Gupdate_traitementData,
            _i3.Gupdate_traitementVars> {
  Gupdate_traitementReq._();

  factory Gupdate_traitementReq(
          [void Function(Gupdate_traitementReqBuilder b) updates]) =
      _$Gupdate_traitementReq;

  static void _initializeBuilder(Gupdate_traitementReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'update_traitement',
    )
    ..executeOnListen = true;

  @override
  _i3.Gupdate_traitementVars get vars;
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
  _i2.Gupdate_traitementData? Function(
    _i2.Gupdate_traitementData?,
    _i2.Gupdate_traitementData?,
  )? get updateResult;
  @override
  _i2.Gupdate_traitementData? get optimisticResponse;
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
  _i2.Gupdate_traitementData? parseData(Map<String, dynamic> json) =>
      _i2.Gupdate_traitementData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gupdate_traitementData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gupdate_traitementData, _i3.Gupdate_traitementVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gupdate_traitementReq> get serializer =>
      _$gupdateTraitementReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gupdate_traitementReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_traitementReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gupdate_traitementReq.serializer,
        json,
      );
}
