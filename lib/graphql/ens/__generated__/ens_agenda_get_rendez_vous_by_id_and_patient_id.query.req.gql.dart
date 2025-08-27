// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_get_rendez_vous_by_id_and_patient_id.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_get_rendez_vous_by_id_and_patient_id.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_get_rendez_vous_by_id_and_patient_id.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_agenda_get_rendez_vous_by_id_and_patient_id.query.req.gql.g.dart';

abstract class Gget_rendez_vous_by_id_and_patient_idReq
    implements
        Built<Gget_rendez_vous_by_id_and_patient_idReq,
            Gget_rendez_vous_by_id_and_patient_idReqBuilder>,
        _i1.OperationRequest<_i2.Gget_rendez_vous_by_id_and_patient_idData,
            _i3.Gget_rendez_vous_by_id_and_patient_idVars> {
  Gget_rendez_vous_by_id_and_patient_idReq._();

  factory Gget_rendez_vous_by_id_and_patient_idReq(
      [void Function(Gget_rendez_vous_by_id_and_patient_idReqBuilder b)
          updates]) = _$Gget_rendez_vous_by_id_and_patient_idReq;

  static void _initializeBuilder(
          Gget_rendez_vous_by_id_and_patient_idReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'get_rendez_vous_by_id_and_patient_id',
        )
        ..executeOnListen = true;

  @override
  _i3.Gget_rendez_vous_by_id_and_patient_idVars get vars;
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
  _i2.Gget_rendez_vous_by_id_and_patient_idData? Function(
    _i2.Gget_rendez_vous_by_id_and_patient_idData?,
    _i2.Gget_rendez_vous_by_id_and_patient_idData?,
  )? get updateResult;
  @override
  _i2.Gget_rendez_vous_by_id_and_patient_idData? get optimisticResponse;
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
  _i2.Gget_rendez_vous_by_id_and_patient_idData? parseData(
          Map<String, dynamic> json) =>
      _i2.Gget_rendez_vous_by_id_and_patient_idData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.Gget_rendez_vous_by_id_and_patient_idData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_rendez_vous_by_id_and_patient_idData,
      _i3.Gget_rendez_vous_by_id_and_patient_idVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_rendez_vous_by_id_and_patient_idReq> get serializer =>
      _$ggetRendezVousByIdAndPatientIdReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_rendez_vous_by_id_and_patient_idReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rendez_vous_by_id_and_patient_idReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_rendez_vous_by_id_and_patient_idReq.serializer,
        json,
      );
}
