// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_ps_synchro_medecin_traitant.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_ps_synchro_medecin_traitant.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_ps_synchro_medecin_traitant.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_ps_get_ps_synchro_medecin_traitant.query.req.gql.g.dart';

abstract class Gget_pml_professionnels_sante_synchro_medecin_traitantReq
    implements
        Built<Gget_pml_professionnels_sante_synchro_medecin_traitantReq,
            Gget_pml_professionnels_sante_synchro_medecin_traitantReqBuilder>,
        _i1.OperationRequest<
            _i2.Gget_pml_professionnels_sante_synchro_medecin_traitantData,
            _i3.Gget_pml_professionnels_sante_synchro_medecin_traitantVars> {
  Gget_pml_professionnels_sante_synchro_medecin_traitantReq._();

  factory Gget_pml_professionnels_sante_synchro_medecin_traitantReq(
      [void Function(
              Gget_pml_professionnels_sante_synchro_medecin_traitantReqBuilder
                  b)
          updates]) = _$Gget_pml_professionnels_sante_synchro_medecin_traitantReq;

  static void _initializeBuilder(
          Gget_pml_professionnels_sante_synchro_medecin_traitantReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName:
              'get_pml_professionnels_sante_synchro_medecin_traitant',
        )
        ..executeOnListen = true;

  @override
  _i3.Gget_pml_professionnels_sante_synchro_medecin_traitantVars get vars;
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
  _i2.Gget_pml_professionnels_sante_synchro_medecin_traitantData? Function(
    _i2.Gget_pml_professionnels_sante_synchro_medecin_traitantData?,
    _i2.Gget_pml_professionnels_sante_synchro_medecin_traitantData?,
  )? get updateResult;
  @override
  _i2.Gget_pml_professionnels_sante_synchro_medecin_traitantData?
      get optimisticResponse;
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
  _i2.Gget_pml_professionnels_sante_synchro_medecin_traitantData? parseData(
          Map<String, dynamic> json) =>
      _i2.Gget_pml_professionnels_sante_synchro_medecin_traitantData.fromJson(
          json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.Gget_pml_professionnels_sante_synchro_medecin_traitantData
              data) =>
      data.toJson();

  @override
  _i1.OperationRequest<
          _i2.Gget_pml_professionnels_sante_synchro_medecin_traitantData,
          _i3.Gget_pml_professionnels_sante_synchro_medecin_traitantVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_pml_professionnels_sante_synchro_medecin_traitantReq>
      get serializer =>
          _$ggetPmlProfessionnelsSanteSynchroMedecinTraitantReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_pml_professionnels_sante_synchro_medecin_traitantReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_pml_professionnels_sante_synchro_medecin_traitantReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_pml_professionnels_sante_synchro_medecin_traitantReq.serializer,
        json,
      );
}
