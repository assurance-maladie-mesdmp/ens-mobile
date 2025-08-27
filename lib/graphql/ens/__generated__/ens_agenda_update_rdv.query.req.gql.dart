// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_update_rdv.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_update_rdv.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_update_rdv.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_agenda_update_rdv.query.req.gql.g.dart';

abstract class Gupdate_rdvReq
    implements
        Built<Gupdate_rdvReq, Gupdate_rdvReqBuilder>,
        _i1.OperationRequest<_i2.Gupdate_rdvData, _i3.Gupdate_rdvVars> {
  Gupdate_rdvReq._();

  factory Gupdate_rdvReq([void Function(Gupdate_rdvReqBuilder b) updates]) =
      _$Gupdate_rdvReq;

  static void _initializeBuilder(Gupdate_rdvReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'update_rdv',
    )
    ..executeOnListen = true;

  @override
  _i3.Gupdate_rdvVars get vars;
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
  _i2.Gupdate_rdvData? Function(
    _i2.Gupdate_rdvData?,
    _i2.Gupdate_rdvData?,
  )? get updateResult;
  @override
  _i2.Gupdate_rdvData? get optimisticResponse;
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
  _i2.Gupdate_rdvData? parseData(Map<String, dynamic> json) =>
      _i2.Gupdate_rdvData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gupdate_rdvData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.Gupdate_rdvData, _i3.Gupdate_rdvVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gupdate_rdvReq> get serializer => _$gupdateRdvReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gupdate_rdvReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_rdvReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gupdate_rdvReq.serializer,
        json,
      );
}
