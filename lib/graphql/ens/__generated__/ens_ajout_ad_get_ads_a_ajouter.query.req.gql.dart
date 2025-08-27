// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ajout_ad_get_ads_a_ajouter.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ajout_ad_get_ads_a_ajouter.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ajout_ad_get_ads_a_ajouter.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_ajout_ad_get_ads_a_ajouter.query.req.gql.g.dart';

abstract class Gget_ads_a_ajouterReq
    implements
        Built<Gget_ads_a_ajouterReq, Gget_ads_a_ajouterReqBuilder>,
        _i1.OperationRequest<_i2.Gget_ads_a_ajouterData,
            _i3.Gget_ads_a_ajouterVars> {
  Gget_ads_a_ajouterReq._();

  factory Gget_ads_a_ajouterReq(
          [void Function(Gget_ads_a_ajouterReqBuilder b) updates]) =
      _$Gget_ads_a_ajouterReq;

  static void _initializeBuilder(Gget_ads_a_ajouterReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_ads_a_ajouter',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_ads_a_ajouterVars get vars;
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
  _i2.Gget_ads_a_ajouterData? Function(
    _i2.Gget_ads_a_ajouterData?,
    _i2.Gget_ads_a_ajouterData?,
  )? get updateResult;
  @override
  _i2.Gget_ads_a_ajouterData? get optimisticResponse;
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
  _i2.Gget_ads_a_ajouterData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_ads_a_ajouterData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_ads_a_ajouterData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_ads_a_ajouterData, _i3.Gget_ads_a_ajouterVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_ads_a_ajouterReq> get serializer =>
      _$ggetAdsAAjouterReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_ads_a_ajouterReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ads_a_ajouterReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_ads_a_ajouterReq.serializer,
        json,
      );
}
