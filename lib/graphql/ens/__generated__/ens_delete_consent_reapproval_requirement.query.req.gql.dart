// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_delete_consent_reapproval_requirement.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_delete_consent_reapproval_requirement.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_delete_consent_reapproval_requirement.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_delete_consent_reapproval_requirement.query.req.gql.g.dart';

abstract class Gupdate_consentement_after_majoriteReq
    implements
        Built<Gupdate_consentement_after_majoriteReq,
            Gupdate_consentement_after_majoriteReqBuilder>,
        _i1.OperationRequest<_i2.Gupdate_consentement_after_majoriteData,
            _i3.Gupdate_consentement_after_majoriteVars> {
  Gupdate_consentement_after_majoriteReq._();

  factory Gupdate_consentement_after_majoriteReq(
      [void Function(Gupdate_consentement_after_majoriteReqBuilder b)
          updates]) = _$Gupdate_consentement_after_majoriteReq;

  static void _initializeBuilder(
          Gupdate_consentement_after_majoriteReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'update_consentement_after_majorite',
        )
        ..executeOnListen = true;

  @override
  _i3.Gupdate_consentement_after_majoriteVars get vars;
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
  _i2.Gupdate_consentement_after_majoriteData? Function(
    _i2.Gupdate_consentement_after_majoriteData?,
    _i2.Gupdate_consentement_after_majoriteData?,
  )? get updateResult;
  @override
  _i2.Gupdate_consentement_after_majoriteData? get optimisticResponse;
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
  _i2.Gupdate_consentement_after_majoriteData? parseData(
          Map<String, dynamic> json) =>
      _i2.Gupdate_consentement_after_majoriteData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.Gupdate_consentement_after_majoriteData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gupdate_consentement_after_majoriteData,
      _i3.Gupdate_consentement_after_majoriteVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gupdate_consentement_after_majoriteReq> get serializer =>
      _$gupdateConsentementAfterMajoriteReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gupdate_consentement_after_majoriteReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_consentement_after_majoriteReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gupdate_consentement_after_majoriteReq.serializer,
        json,
      );
}
