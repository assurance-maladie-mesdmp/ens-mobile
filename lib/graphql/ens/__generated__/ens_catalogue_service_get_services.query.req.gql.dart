// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_get_services.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_get_services.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_get_services.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_catalogue_service_get_services.query.req.gql.g.dart';

abstract class Gget_servicesReq
    implements
        Built<Gget_servicesReq, Gget_servicesReqBuilder>,
        _i1.OperationRequest<_i2.Gget_servicesData, _i3.Gget_servicesVars> {
  Gget_servicesReq._();

  factory Gget_servicesReq([void Function(Gget_servicesReqBuilder b) updates]) =
      _$Gget_servicesReq;

  static void _initializeBuilder(Gget_servicesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_services',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_servicesVars get vars;
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
  _i2.Gget_servicesData? Function(
    _i2.Gget_servicesData?,
    _i2.Gget_servicesData?,
  )? get updateResult;
  @override
  _i2.Gget_servicesData? get optimisticResponse;
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
  _i2.Gget_servicesData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_servicesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_servicesData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_servicesData, _i3.Gget_servicesVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_servicesReq> get serializer =>
      _$ggetServicesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_servicesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_servicesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_servicesReq.serializer,
        json,
      );
}
