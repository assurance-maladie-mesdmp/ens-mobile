// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_hospitalisations_add.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_hospitalisations_add.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_hospitalisations_add.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_hospitalisations_add.query.req.gql.g.dart';

abstract class Gadd_hospitalisationReq
    implements
        Built<Gadd_hospitalisationReq, Gadd_hospitalisationReqBuilder>,
        _i1.OperationRequest<_i2.Gadd_hospitalisationData,
            _i3.Gadd_hospitalisationVars> {
  Gadd_hospitalisationReq._();

  factory Gadd_hospitalisationReq(
          [void Function(Gadd_hospitalisationReqBuilder b) updates]) =
      _$Gadd_hospitalisationReq;

  static void _initializeBuilder(Gadd_hospitalisationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'add_hospitalisation',
    )
    ..executeOnListen = true;

  @override
  _i3.Gadd_hospitalisationVars get vars;
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
  _i2.Gadd_hospitalisationData? Function(
    _i2.Gadd_hospitalisationData?,
    _i2.Gadd_hospitalisationData?,
  )? get updateResult;
  @override
  _i2.Gadd_hospitalisationData? get optimisticResponse;
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
  _i2.Gadd_hospitalisationData? parseData(Map<String, dynamic> json) =>
      _i2.Gadd_hospitalisationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gadd_hospitalisationData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gadd_hospitalisationData,
      _i3.Gadd_hospitalisationVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gadd_hospitalisationReq> get serializer =>
      _$gaddHospitalisationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gadd_hospitalisationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_hospitalisationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gadd_hospitalisationReq.serializer,
        json,
      );
}
