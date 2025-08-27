// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_create_folder.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_create_folder.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_create_folder.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_document_create_folder.query.req.gql.g.dart';

abstract class Gcreate_folderReq
    implements
        Built<Gcreate_folderReq, Gcreate_folderReqBuilder>,
        _i1.OperationRequest<_i2.Gcreate_folderData, _i3.Gcreate_folderVars> {
  Gcreate_folderReq._();

  factory Gcreate_folderReq(
          [void Function(Gcreate_folderReqBuilder b) updates]) =
      _$Gcreate_folderReq;

  static void _initializeBuilder(Gcreate_folderReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'create_folder',
    )
    ..executeOnListen = true;

  @override
  _i3.Gcreate_folderVars get vars;
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
  _i2.Gcreate_folderData? Function(
    _i2.Gcreate_folderData?,
    _i2.Gcreate_folderData?,
  )? get updateResult;
  @override
  _i2.Gcreate_folderData? get optimisticResponse;
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
  _i2.Gcreate_folderData? parseData(Map<String, dynamic> json) =>
      _i2.Gcreate_folderData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gcreate_folderData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.Gcreate_folderData, _i3.Gcreate_folderVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gcreate_folderReq> get serializer =>
      _$gcreateFolderReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gcreate_folderReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_folderReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gcreate_folderReq.serializer,
        json,
      );
}
