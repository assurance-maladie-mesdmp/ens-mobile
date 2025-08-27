// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mhs_get_histoire_de_sante_episodes.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mhs_get_histoire_de_sante_episodes.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mhs_get_histoire_de_sante_episodes.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_mhs_get_histoire_de_sante_episodes.query.req.gql.g.dart';

abstract class Gget_histoire_de_sante_episodesReq
    implements
        Built<Gget_histoire_de_sante_episodesReq,
            Gget_histoire_de_sante_episodesReqBuilder>,
        _i1.OperationRequest<_i2.Gget_histoire_de_sante_episodesData,
            _i3.Gget_histoire_de_sante_episodesVars> {
  Gget_histoire_de_sante_episodesReq._();

  factory Gget_histoire_de_sante_episodesReq(
      [void Function(Gget_histoire_de_sante_episodesReqBuilder b)
          updates]) = _$Gget_histoire_de_sante_episodesReq;

  static void _initializeBuilder(Gget_histoire_de_sante_episodesReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'get_histoire_de_sante_episodes',
        )
        ..executeOnListen = true;

  @override
  _i3.Gget_histoire_de_sante_episodesVars get vars;
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
  _i2.Gget_histoire_de_sante_episodesData? Function(
    _i2.Gget_histoire_de_sante_episodesData?,
    _i2.Gget_histoire_de_sante_episodesData?,
  )? get updateResult;
  @override
  _i2.Gget_histoire_de_sante_episodesData? get optimisticResponse;
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
  _i2.Gget_histoire_de_sante_episodesData? parseData(
          Map<String, dynamic> json) =>
      _i2.Gget_histoire_de_sante_episodesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.Gget_histoire_de_sante_episodesData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_histoire_de_sante_episodesData,
      _i3.Gget_histoire_de_sante_episodesVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_histoire_de_sante_episodesReq> get serializer =>
      _$ggetHistoireDeSanteEpisodesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_histoire_de_sante_episodesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_histoire_de_sante_episodesReq.serializer,
        json,
      );
}
