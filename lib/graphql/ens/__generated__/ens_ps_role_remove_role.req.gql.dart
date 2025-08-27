// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_role_remove_role.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_role_remove_role.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_role_remove_role.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_ps_role_remove_role.req.gql.g.dart';

abstract class Gdelete_professionnel_sante_roleReq
    implements
        Built<Gdelete_professionnel_sante_roleReq,
            Gdelete_professionnel_sante_roleReqBuilder>,
        _i1.OperationRequest<_i2.Gdelete_professionnel_sante_roleData,
            _i3.Gdelete_professionnel_sante_roleVars> {
  Gdelete_professionnel_sante_roleReq._();

  factory Gdelete_professionnel_sante_roleReq(
      [void Function(Gdelete_professionnel_sante_roleReqBuilder b)
          updates]) = _$Gdelete_professionnel_sante_roleReq;

  static void _initializeBuilder(
          Gdelete_professionnel_sante_roleReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'delete_professionnel_sante_role',
        )
        ..executeOnListen = true;

  @override
  _i3.Gdelete_professionnel_sante_roleVars get vars;
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
  _i2.Gdelete_professionnel_sante_roleData? Function(
    _i2.Gdelete_professionnel_sante_roleData?,
    _i2.Gdelete_professionnel_sante_roleData?,
  )? get updateResult;
  @override
  _i2.Gdelete_professionnel_sante_roleData? get optimisticResponse;
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
  _i2.Gdelete_professionnel_sante_roleData? parseData(
          Map<String, dynamic> json) =>
      _i2.Gdelete_professionnel_sante_roleData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.Gdelete_professionnel_sante_roleData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gdelete_professionnel_sante_roleData,
      _i3.Gdelete_professionnel_sante_roleVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gdelete_professionnel_sante_roleReq> get serializer =>
      _$gdeleteProfessionnelSanteRoleReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gdelete_professionnel_sante_roleReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_professionnel_sante_roleReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gdelete_professionnel_sante_roleReq.serializer,
        json,
      );
}
