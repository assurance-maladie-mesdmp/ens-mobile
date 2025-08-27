// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_create_helpdesk_ticket.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_create_helpdesk_ticket.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_create_helpdesk_ticket.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_create_helpdesk_ticket.query.req.gql.g.dart';

abstract class Gcreate_helpdesk_ticketReq
    implements
        Built<Gcreate_helpdesk_ticketReq, Gcreate_helpdesk_ticketReqBuilder>,
        _i1.OperationRequest<_i2.Gcreate_helpdesk_ticketData,
            _i3.Gcreate_helpdesk_ticketVars> {
  Gcreate_helpdesk_ticketReq._();

  factory Gcreate_helpdesk_ticketReq(
          [void Function(Gcreate_helpdesk_ticketReqBuilder b) updates]) =
      _$Gcreate_helpdesk_ticketReq;

  static void _initializeBuilder(Gcreate_helpdesk_ticketReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'create_helpdesk_ticket',
    )
    ..executeOnListen = true;

  @override
  _i3.Gcreate_helpdesk_ticketVars get vars;
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
  _i2.Gcreate_helpdesk_ticketData? Function(
    _i2.Gcreate_helpdesk_ticketData?,
    _i2.Gcreate_helpdesk_ticketData?,
  )? get updateResult;
  @override
  _i2.Gcreate_helpdesk_ticketData? get optimisticResponse;
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
  _i2.Gcreate_helpdesk_ticketData? parseData(Map<String, dynamic> json) =>
      _i2.Gcreate_helpdesk_ticketData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gcreate_helpdesk_ticketData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gcreate_helpdesk_ticketData,
      _i3.Gcreate_helpdesk_ticketVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gcreate_helpdesk_ticketReq> get serializer =>
      _$gcreateHelpdeskTicketReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gcreate_helpdesk_ticketReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_helpdesk_ticketReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gcreate_helpdesk_ticketReq.serializer,
        json,
      );
}
