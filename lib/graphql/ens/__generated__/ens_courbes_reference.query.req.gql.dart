// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_courbes_reference.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_courbes_reference.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_courbes_reference.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_courbes_reference.query.req.gql.g.dart';

abstract class Gget_courbes_referenceReq
    implements
        Built<Gget_courbes_referenceReq, Gget_courbes_referenceReqBuilder>,
        _i1.OperationRequest<_i2.Gget_courbes_referenceData,
            _i3.Gget_courbes_referenceVars> {
  Gget_courbes_referenceReq._();

  factory Gget_courbes_referenceReq(
          [void Function(Gget_courbes_referenceReqBuilder b) updates]) =
      _$Gget_courbes_referenceReq;

  static void _initializeBuilder(Gget_courbes_referenceReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_courbes_reference',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_courbes_referenceVars get vars;
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
  _i2.Gget_courbes_referenceData? Function(
    _i2.Gget_courbes_referenceData?,
    _i2.Gget_courbes_referenceData?,
  )? get updateResult;
  @override
  _i2.Gget_courbes_referenceData? get optimisticResponse;
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
  _i2.Gget_courbes_referenceData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_courbes_referenceData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_courbes_referenceData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_courbes_referenceData,
      _i3.Gget_courbes_referenceVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_courbes_referenceReq> get serializer =>
      _$ggetCourbesReferenceReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_courbes_referenceReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_courbes_referenceReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_courbes_referenceReq.serializer,
        json,
      );
}
