// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_specialities_and_professions.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_specialities_and_professions.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_specialities_and_professions.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_ps_get_specialities_and_professions.req.gql.g.dart';

abstract class Gget_specialities_and_professionsReq
    implements
        Built<Gget_specialities_and_professionsReq,
            Gget_specialities_and_professionsReqBuilder>,
        _i1.OperationRequest<_i2.Gget_specialities_and_professionsData,
            _i3.Gget_specialities_and_professionsVars> {
  Gget_specialities_and_professionsReq._();

  factory Gget_specialities_and_professionsReq(
      [void Function(Gget_specialities_and_professionsReqBuilder b)
          updates]) = _$Gget_specialities_and_professionsReq;

  static void _initializeBuilder(
          Gget_specialities_and_professionsReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'get_specialities_and_professions',
        )
        ..executeOnListen = true;

  @override
  _i3.Gget_specialities_and_professionsVars get vars;
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
  _i2.Gget_specialities_and_professionsData? Function(
    _i2.Gget_specialities_and_professionsData?,
    _i2.Gget_specialities_and_professionsData?,
  )? get updateResult;
  @override
  _i2.Gget_specialities_and_professionsData? get optimisticResponse;
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
  _i2.Gget_specialities_and_professionsData? parseData(
          Map<String, dynamic> json) =>
      _i2.Gget_specialities_and_professionsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.Gget_specialities_and_professionsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_specialities_and_professionsData,
      _i3.Gget_specialities_and_professionsVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_specialities_and_professionsReq> get serializer =>
      _$ggetSpecialitiesAndProfessionsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_specialities_and_professionsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_specialities_and_professionsReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_specialities_and_professionsReq.serializer,
        json,
      );
}
