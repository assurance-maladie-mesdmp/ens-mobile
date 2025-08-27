// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_set_all_documents_confidentiality.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_set_all_documents_confidentiality.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_set_all_documents_confidentiality.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_document_set_all_documents_confidentiality.query.req.gql.g.dart';

abstract class Gset_all_documents_confidentialityReq
    implements
        Built<Gset_all_documents_confidentialityReq,
            Gset_all_documents_confidentialityReqBuilder>,
        _i1.OperationRequest<_i2.Gset_all_documents_confidentialityData,
            _i3.Gset_all_documents_confidentialityVars> {
  Gset_all_documents_confidentialityReq._();

  factory Gset_all_documents_confidentialityReq(
      [void Function(Gset_all_documents_confidentialityReqBuilder b)
          updates]) = _$Gset_all_documents_confidentialityReq;

  static void _initializeBuilder(
          Gset_all_documents_confidentialityReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'set_all_documents_confidentiality',
        )
        ..executeOnListen = true;

  @override
  _i3.Gset_all_documents_confidentialityVars get vars;
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
  _i2.Gset_all_documents_confidentialityData? Function(
    _i2.Gset_all_documents_confidentialityData?,
    _i2.Gset_all_documents_confidentialityData?,
  )? get updateResult;
  @override
  _i2.Gset_all_documents_confidentialityData? get optimisticResponse;
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
  _i2.Gset_all_documents_confidentialityData? parseData(
          Map<String, dynamic> json) =>
      _i2.Gset_all_documents_confidentialityData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.Gset_all_documents_confidentialityData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gset_all_documents_confidentialityData,
      _i3.Gset_all_documents_confidentialityVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gset_all_documents_confidentialityReq> get serializer =>
      _$gsetAllDocumentsConfidentialityReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gset_all_documents_confidentialityReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gset_all_documents_confidentialityReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gset_all_documents_confidentialityReq.serializer,
        json,
      );
}
