// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_move_documents.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_move_documents.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_move_documents.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_document_move_documents.query.req.gql.g.dart';

abstract class Gmove_documentsReq
    implements
        Built<Gmove_documentsReq, Gmove_documentsReqBuilder>,
        _i1.OperationRequest<_i2.Gmove_documentsData, _i3.Gmove_documentsVars> {
  Gmove_documentsReq._();

  factory Gmove_documentsReq(
          [void Function(Gmove_documentsReqBuilder b) updates]) =
      _$Gmove_documentsReq;

  static void _initializeBuilder(Gmove_documentsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'move_documents',
    )
    ..executeOnListen = true;

  @override
  _i3.Gmove_documentsVars get vars;
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
  _i2.Gmove_documentsData? Function(
    _i2.Gmove_documentsData?,
    _i2.Gmove_documentsData?,
  )? get updateResult;
  @override
  _i2.Gmove_documentsData? get optimisticResponse;
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
  _i2.Gmove_documentsData? parseData(Map<String, dynamic> json) =>
      _i2.Gmove_documentsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gmove_documentsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gmove_documentsData, _i3.Gmove_documentsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gmove_documentsReq> get serializer =>
      _$gmoveDocumentsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gmove_documentsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmove_documentsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gmove_documentsReq.serializer,
        json,
      );
}
