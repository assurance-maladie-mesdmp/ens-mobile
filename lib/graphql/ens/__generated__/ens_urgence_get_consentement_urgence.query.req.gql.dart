// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_urgence_get_consentement_urgence.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_urgence_get_consentement_urgence.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_urgence_get_consentement_urgence.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_urgence_get_consentement_urgence.query.req.gql.g.dart';

abstract class Gget_consentement_urgenceReq
    implements
        Built<Gget_consentement_urgenceReq,
            Gget_consentement_urgenceReqBuilder>,
        _i1.OperationRequest<_i2.Gget_consentement_urgenceData,
            _i3.Gget_consentement_urgenceVars> {
  Gget_consentement_urgenceReq._();

  factory Gget_consentement_urgenceReq(
          [void Function(Gget_consentement_urgenceReqBuilder b) updates]) =
      _$Gget_consentement_urgenceReq;

  static void _initializeBuilder(Gget_consentement_urgenceReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_consentement_urgence',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_consentement_urgenceVars get vars;
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
  _i2.Gget_consentement_urgenceData? Function(
    _i2.Gget_consentement_urgenceData?,
    _i2.Gget_consentement_urgenceData?,
  )? get updateResult;
  @override
  _i2.Gget_consentement_urgenceData? get optimisticResponse;
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
  _i2.Gget_consentement_urgenceData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_consentement_urgenceData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_consentement_urgenceData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_consentement_urgenceData,
      _i3.Gget_consentement_urgenceVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_consentement_urgenceReq> get serializer =>
      _$ggetConsentementUrgenceReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_consentement_urgenceReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_consentement_urgenceReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_consentement_urgenceReq.serializer,
        json,
      );
}
