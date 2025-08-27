// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_hospitalisations_update.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_hospitalisations_update.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_hospitalisations_update.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_hospitalisations_update.query.req.gql.g.dart';

abstract class Gupdate_hospitalisationReq
    implements
        Built<Gupdate_hospitalisationReq, Gupdate_hospitalisationReqBuilder>,
        _i1.OperationRequest<_i2.Gupdate_hospitalisationData,
            _i3.Gupdate_hospitalisationVars> {
  Gupdate_hospitalisationReq._();

  factory Gupdate_hospitalisationReq(
          [void Function(Gupdate_hospitalisationReqBuilder b) updates]) =
      _$Gupdate_hospitalisationReq;

  static void _initializeBuilder(Gupdate_hospitalisationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'update_hospitalisation',
    )
    ..executeOnListen = true;

  @override
  _i3.Gupdate_hospitalisationVars get vars;
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
  _i2.Gupdate_hospitalisationData? Function(
    _i2.Gupdate_hospitalisationData?,
    _i2.Gupdate_hospitalisationData?,
  )? get updateResult;
  @override
  _i2.Gupdate_hospitalisationData? get optimisticResponse;
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
  _i2.Gupdate_hospitalisationData? parseData(Map<String, dynamic> json) =>
      _i2.Gupdate_hospitalisationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gupdate_hospitalisationData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gupdate_hospitalisationData,
      _i3.Gupdate_hospitalisationVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gupdate_hospitalisationReq> get serializer =>
      _$gupdateHospitalisationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gupdate_hospitalisationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_hospitalisationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gupdate_hospitalisationReq.serializer,
        json,
      );
}
