// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_vaccination_get_vaccinations.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_vaccination_get_vaccinations.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_vaccination_get_vaccinations.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_vaccination_get_vaccinations.query.req.gql.g.dart';

abstract class Gget_vaccinationsReq
    implements
        Built<Gget_vaccinationsReq, Gget_vaccinationsReqBuilder>,
        _i1.OperationRequest<_i2.Gget_vaccinationsData,
            _i3.Gget_vaccinationsVars> {
  Gget_vaccinationsReq._();

  factory Gget_vaccinationsReq(
          [void Function(Gget_vaccinationsReqBuilder b) updates]) =
      _$Gget_vaccinationsReq;

  static void _initializeBuilder(Gget_vaccinationsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_vaccinations',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_vaccinationsVars get vars;
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
  _i2.Gget_vaccinationsData? Function(
    _i2.Gget_vaccinationsData?,
    _i2.Gget_vaccinationsData?,
  )? get updateResult;
  @override
  _i2.Gget_vaccinationsData? get optimisticResponse;
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
  _i2.Gget_vaccinationsData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_vaccinationsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_vaccinationsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_vaccinationsData, _i3.Gget_vaccinationsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_vaccinationsReq> get serializer =>
      _$ggetVaccinationsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_vaccinationsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_vaccinationsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_vaccinationsReq.serializer,
        json,
      );
}
