// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_update_autorisation.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_update_autorisation.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_update_autorisation.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_catalogue_service_update_autorisation.query.req.gql.g.dart';

abstract class Gupdate_autorisationReq
    implements
        Built<Gupdate_autorisationReq, Gupdate_autorisationReqBuilder>,
        _i1.OperationRequest<_i2.Gupdate_autorisationData,
            _i3.Gupdate_autorisationVars> {
  Gupdate_autorisationReq._();

  factory Gupdate_autorisationReq(
          [void Function(Gupdate_autorisationReqBuilder b) updates]) =
      _$Gupdate_autorisationReq;

  static void _initializeBuilder(Gupdate_autorisationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'update_autorisation',
    )
    ..executeOnListen = true;

  @override
  _i3.Gupdate_autorisationVars get vars;
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
  _i2.Gupdate_autorisationData? Function(
    _i2.Gupdate_autorisationData?,
    _i2.Gupdate_autorisationData?,
  )? get updateResult;
  @override
  _i2.Gupdate_autorisationData? get optimisticResponse;
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
  _i2.Gupdate_autorisationData? parseData(Map<String, dynamic> json) =>
      _i2.Gupdate_autorisationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gupdate_autorisationData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gupdate_autorisationData,
      _i3.Gupdate_autorisationVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gupdate_autorisationReq> get serializer =>
      _$gupdateAutorisationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gupdate_autorisationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_autorisationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gupdate_autorisationReq.serializer,
        json,
      );
}
