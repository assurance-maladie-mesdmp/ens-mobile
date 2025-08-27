// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_partage_profil_send_partage_profil_form.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_partage_profil_send_partage_profil_form.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_partage_profil_send_partage_profil_form.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_partage_profil_send_partage_profil_form.query.req.gql.g.dart';

abstract class Gsend_partage_profil_formReq
    implements
        Built<Gsend_partage_profil_formReq,
            Gsend_partage_profil_formReqBuilder>,
        _i1.OperationRequest<_i2.Gsend_partage_profil_formData,
            _i3.Gsend_partage_profil_formVars> {
  Gsend_partage_profil_formReq._();

  factory Gsend_partage_profil_formReq(
          [void Function(Gsend_partage_profil_formReqBuilder b) updates]) =
      _$Gsend_partage_profil_formReq;

  static void _initializeBuilder(Gsend_partage_profil_formReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'send_partage_profil_form',
    )
    ..executeOnListen = true;

  @override
  _i3.Gsend_partage_profil_formVars get vars;
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
  _i2.Gsend_partage_profil_formData? Function(
    _i2.Gsend_partage_profil_formData?,
    _i2.Gsend_partage_profil_formData?,
  )? get updateResult;
  @override
  _i2.Gsend_partage_profil_formData? get optimisticResponse;
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
  _i2.Gsend_partage_profil_formData? parseData(Map<String, dynamic> json) =>
      _i2.Gsend_partage_profil_formData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gsend_partage_profil_formData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gsend_partage_profil_formData,
      _i3.Gsend_partage_profil_formVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gsend_partage_profil_formReq> get serializer =>
      _$gsendPartageProfilFormReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gsend_partage_profil_formReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_partage_profil_formReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gsend_partage_profil_formReq.serializer,
        json,
      );
}
