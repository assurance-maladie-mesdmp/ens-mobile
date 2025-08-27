// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_vaccination_add_vaccination.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_vaccination_add_vaccination.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_vaccination_add_vaccination.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_vaccination_add_vaccination.query.req.gql.g.dart';

abstract class Gadd_vaccinationReq
    implements
        Built<Gadd_vaccinationReq, Gadd_vaccinationReqBuilder>,
        _i1
        .OperationRequest<_i2.Gadd_vaccinationData, _i3.Gadd_vaccinationVars> {
  Gadd_vaccinationReq._();

  factory Gadd_vaccinationReq(
          [void Function(Gadd_vaccinationReqBuilder b) updates]) =
      _$Gadd_vaccinationReq;

  static void _initializeBuilder(Gadd_vaccinationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'add_vaccination',
    )
    ..executeOnListen = true;

  @override
  _i3.Gadd_vaccinationVars get vars;
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
  _i2.Gadd_vaccinationData? Function(
    _i2.Gadd_vaccinationData?,
    _i2.Gadd_vaccinationData?,
  )? get updateResult;
  @override
  _i2.Gadd_vaccinationData? get optimisticResponse;
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
  _i2.Gadd_vaccinationData? parseData(Map<String, dynamic> json) =>
      _i2.Gadd_vaccinationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gadd_vaccinationData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gadd_vaccinationData, _i3.Gadd_vaccinationVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gadd_vaccinationReq> get serializer =>
      _$gaddVaccinationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gadd_vaccinationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_vaccinationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gadd_vaccinationReq.serializer,
        json,
      );
}
