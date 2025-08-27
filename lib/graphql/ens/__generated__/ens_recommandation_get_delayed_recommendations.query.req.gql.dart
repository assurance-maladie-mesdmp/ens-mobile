// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_recommandation_get_delayed_recommendations.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_recommandation_get_delayed_recommendations.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_recommandation_get_delayed_recommendations.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_recommandation_get_delayed_recommendations.query.req.gql.g.dart';

abstract class Gget_delayed_recommendationsReq
    implements
        Built<Gget_delayed_recommendationsReq,
            Gget_delayed_recommendationsReqBuilder>,
        _i1.OperationRequest<_i2.Gget_delayed_recommendationsData,
            _i3.Gget_delayed_recommendationsVars> {
  Gget_delayed_recommendationsReq._();

  factory Gget_delayed_recommendationsReq(
          [void Function(Gget_delayed_recommendationsReqBuilder b) updates]) =
      _$Gget_delayed_recommendationsReq;

  static void _initializeBuilder(Gget_delayed_recommendationsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_delayed_recommendations',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_delayed_recommendationsVars get vars;
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
  _i2.Gget_delayed_recommendationsData? Function(
    _i2.Gget_delayed_recommendationsData?,
    _i2.Gget_delayed_recommendationsData?,
  )? get updateResult;
  @override
  _i2.Gget_delayed_recommendationsData? get optimisticResponse;
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
  _i2.Gget_delayed_recommendationsData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_delayed_recommendationsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_delayed_recommendationsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_delayed_recommendationsData,
      _i3.Gget_delayed_recommendationsVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_delayed_recommendationsReq> get serializer =>
      _$ggetDelayedRecommendationsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_delayed_recommendationsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delayed_recommendationsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_delayed_recommendationsReq.serializer,
        json,
      );
}
