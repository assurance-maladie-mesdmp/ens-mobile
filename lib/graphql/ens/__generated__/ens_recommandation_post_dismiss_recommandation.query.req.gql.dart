// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_recommandation_post_dismiss_recommandation.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_recommandation_post_dismiss_recommandation.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_recommandation_post_dismiss_recommandation.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_recommandation_post_dismiss_recommandation.query.req.gql.g.dart';

abstract class Gpost_dismiss_recommandationReq
    implements
        Built<Gpost_dismiss_recommandationReq,
            Gpost_dismiss_recommandationReqBuilder>,
        _i1.OperationRequest<_i2.Gpost_dismiss_recommandationData,
            _i3.Gpost_dismiss_recommandationVars> {
  Gpost_dismiss_recommandationReq._();

  factory Gpost_dismiss_recommandationReq(
          [void Function(Gpost_dismiss_recommandationReqBuilder b) updates]) =
      _$Gpost_dismiss_recommandationReq;

  static void _initializeBuilder(Gpost_dismiss_recommandationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'post_dismiss_recommandation',
    )
    ..executeOnListen = true;

  @override
  _i3.Gpost_dismiss_recommandationVars get vars;
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
  _i2.Gpost_dismiss_recommandationData? Function(
    _i2.Gpost_dismiss_recommandationData?,
    _i2.Gpost_dismiss_recommandationData?,
  )? get updateResult;
  @override
  _i2.Gpost_dismiss_recommandationData? get optimisticResponse;
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
  _i2.Gpost_dismiss_recommandationData? parseData(Map<String, dynamic> json) =>
      _i2.Gpost_dismiss_recommandationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gpost_dismiss_recommandationData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gpost_dismiss_recommandationData,
      _i3.Gpost_dismiss_recommandationVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gpost_dismiss_recommandationReq> get serializer =>
      _$gpostDismissRecommandationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gpost_dismiss_recommandationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gpost_dismiss_recommandationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gpost_dismiss_recommandationReq.serializer,
        json,
      );
}
