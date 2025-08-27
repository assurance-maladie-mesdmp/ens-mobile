// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_delete_draft_from_conversation.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_delete_draft_from_conversation.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_delete_draft_from_conversation.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_messagerie_delete_draft_from_conversation.query.req.gql.g.dart';

abstract class Gdelete_draft_from_conversationReq
    implements
        Built<Gdelete_draft_from_conversationReq,
            Gdelete_draft_from_conversationReqBuilder>,
        _i1.OperationRequest<_i2.Gdelete_draft_from_conversationData,
            _i3.Gdelete_draft_from_conversationVars> {
  Gdelete_draft_from_conversationReq._();

  factory Gdelete_draft_from_conversationReq(
      [void Function(Gdelete_draft_from_conversationReqBuilder b)
          updates]) = _$Gdelete_draft_from_conversationReq;

  static void _initializeBuilder(Gdelete_draft_from_conversationReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'delete_draft_from_conversation',
        )
        ..executeOnListen = true;

  @override
  _i3.Gdelete_draft_from_conversationVars get vars;
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
  _i2.Gdelete_draft_from_conversationData? Function(
    _i2.Gdelete_draft_from_conversationData?,
    _i2.Gdelete_draft_from_conversationData?,
  )? get updateResult;
  @override
  _i2.Gdelete_draft_from_conversationData? get optimisticResponse;
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
  _i2.Gdelete_draft_from_conversationData? parseData(
          Map<String, dynamic> json) =>
      _i2.Gdelete_draft_from_conversationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.Gdelete_draft_from_conversationData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gdelete_draft_from_conversationData,
      _i3.Gdelete_draft_from_conversationVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gdelete_draft_from_conversationReq> get serializer =>
      _$gdeleteDraftFromConversationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gdelete_draft_from_conversationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_draft_from_conversationReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gdelete_draft_from_conversationReq.serializer,
        json,
      );
}
