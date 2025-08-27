// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_mark_document.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_mark_document.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_mark_document.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_document_mark_document.req.gql.g.dart';

abstract class Gmark_documentReq
    implements
        Built<Gmark_documentReq, Gmark_documentReqBuilder>,
        _i1.OperationRequest<_i2.Gmark_documentData, _i3.Gmark_documentVars> {
  Gmark_documentReq._();

  factory Gmark_documentReq(
          [void Function(Gmark_documentReqBuilder b) updates]) =
      _$Gmark_documentReq;

  static void _initializeBuilder(Gmark_documentReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'mark_document',
    )
    ..executeOnListen = true;

  @override
  _i3.Gmark_documentVars get vars;
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
  _i2.Gmark_documentData? Function(
    _i2.Gmark_documentData?,
    _i2.Gmark_documentData?,
  )? get updateResult;
  @override
  _i2.Gmark_documentData? get optimisticResponse;
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
  _i2.Gmark_documentData? parseData(Map<String, dynamic> json) =>
      _i2.Gmark_documentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gmark_documentData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.Gmark_documentData, _i3.Gmark_documentVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gmark_documentReq> get serializer =>
      _$gmarkDocumentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gmark_documentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmark_documentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gmark_documentReq.serializer,
        json,
      );
}
