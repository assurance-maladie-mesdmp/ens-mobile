// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_inactifs_check_contacts_status.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_inactifs_check_contacts_status.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_inactifs_check_contacts_status.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_ps_inactifs_check_contacts_status.req.gql.g.dart';

abstract class Gcheck_inactifs_ps_contacts_statusReq
    implements
        Built<Gcheck_inactifs_ps_contacts_statusReq,
            Gcheck_inactifs_ps_contacts_statusReqBuilder>,
        _i1.OperationRequest<_i2.Gcheck_inactifs_ps_contacts_statusData,
            _i3.Gcheck_inactifs_ps_contacts_statusVars> {
  Gcheck_inactifs_ps_contacts_statusReq._();

  factory Gcheck_inactifs_ps_contacts_statusReq(
      [void Function(Gcheck_inactifs_ps_contacts_statusReqBuilder b)
          updates]) = _$Gcheck_inactifs_ps_contacts_statusReq;

  static void _initializeBuilder(
          Gcheck_inactifs_ps_contacts_statusReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'check_inactifs_ps_contacts_status',
        )
        ..executeOnListen = true;

  @override
  _i3.Gcheck_inactifs_ps_contacts_statusVars get vars;
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
  _i2.Gcheck_inactifs_ps_contacts_statusData? Function(
    _i2.Gcheck_inactifs_ps_contacts_statusData?,
    _i2.Gcheck_inactifs_ps_contacts_statusData?,
  )? get updateResult;
  @override
  _i2.Gcheck_inactifs_ps_contacts_statusData? get optimisticResponse;
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
  _i2.Gcheck_inactifs_ps_contacts_statusData? parseData(
          Map<String, dynamic> json) =>
      _i2.Gcheck_inactifs_ps_contacts_statusData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.Gcheck_inactifs_ps_contacts_statusData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gcheck_inactifs_ps_contacts_statusData,
      _i3.Gcheck_inactifs_ps_contacts_statusVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gcheck_inactifs_ps_contacts_statusReq> get serializer =>
      _$gcheckInactifsPsContactsStatusReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gcheck_inactifs_ps_contacts_statusReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcheck_inactifs_ps_contacts_statusReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gcheck_inactifs_ps_contacts_statusReq.serializer,
        json,
      );
}
