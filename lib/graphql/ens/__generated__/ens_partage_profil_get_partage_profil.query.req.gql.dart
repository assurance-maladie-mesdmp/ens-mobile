// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_partage_profil_get_partage_profil.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_partage_profil_get_partage_profil.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_partage_profil_get_partage_profil.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_partage_profil_get_partage_profil.query.req.gql.g.dart';

abstract class Gget_partage_profilReq
    implements
        Built<Gget_partage_profilReq, Gget_partage_profilReqBuilder>,
        _i1.OperationRequest<_i2.Gget_partage_profilData,
            _i3.Gget_partage_profilVars> {
  Gget_partage_profilReq._();

  factory Gget_partage_profilReq(
          [void Function(Gget_partage_profilReqBuilder b) updates]) =
      _$Gget_partage_profilReq;

  static void _initializeBuilder(Gget_partage_profilReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_partage_profil',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_partage_profilVars get vars;
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
  _i2.Gget_partage_profilData? Function(
    _i2.Gget_partage_profilData?,
    _i2.Gget_partage_profilData?,
  )? get updateResult;
  @override
  _i2.Gget_partage_profilData? get optimisticResponse;
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
  _i2.Gget_partage_profilData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_partage_profilData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_partage_profilData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_partage_profilData, _i3.Gget_partage_profilVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_partage_profilReq> get serializer =>
      _$ggetPartageProfilReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_partage_profilReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_partage_profilReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_partage_profilReq.serializer,
        json,
      );
}
