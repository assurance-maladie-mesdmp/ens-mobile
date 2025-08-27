// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_get_rdv_et_rappel.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_get_rdv_et_rappel.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_get_rdv_et_rappel.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_agenda_get_rdv_et_rappel.query.req.gql.g.dart';

abstract class Gget_rdv_et_rappelReq
    implements
        Built<Gget_rdv_et_rappelReq, Gget_rdv_et_rappelReqBuilder>,
        _i1.OperationRequest<_i2.Gget_rdv_et_rappelData,
            _i3.Gget_rdv_et_rappelVars> {
  Gget_rdv_et_rappelReq._();

  factory Gget_rdv_et_rappelReq(
          [void Function(Gget_rdv_et_rappelReqBuilder b) updates]) =
      _$Gget_rdv_et_rappelReq;

  static void _initializeBuilder(Gget_rdv_et_rappelReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_rdv_et_rappel',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_rdv_et_rappelVars get vars;
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
  _i2.Gget_rdv_et_rappelData? Function(
    _i2.Gget_rdv_et_rappelData?,
    _i2.Gget_rdv_et_rappelData?,
  )? get updateResult;
  @override
  _i2.Gget_rdv_et_rappelData? get optimisticResponse;
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
  _i2.Gget_rdv_et_rappelData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_rdv_et_rappelData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_rdv_et_rappelData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_rdv_et_rappelData, _i3.Gget_rdv_et_rappelVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_rdv_et_rappelReq> get serializer =>
      _$ggetRdvEtRappelReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_rdv_et_rappelReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rdv_et_rappelReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_rdv_et_rappelReq.serializer,
        json,
      );
}
