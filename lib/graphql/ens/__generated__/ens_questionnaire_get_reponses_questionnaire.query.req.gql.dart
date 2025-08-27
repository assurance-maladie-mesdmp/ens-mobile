// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_get_reponses_questionnaire.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_get_reponses_questionnaire.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_get_reponses_questionnaire.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_questionnaire_get_reponses_questionnaire.query.req.gql.g.dart';

abstract class Gget_reponses_questionnaireReq
    implements
        Built<Gget_reponses_questionnaireReq,
            Gget_reponses_questionnaireReqBuilder>,
        _i1.OperationRequest<_i2.Gget_reponses_questionnaireData,
            _i3.Gget_reponses_questionnaireVars> {
  Gget_reponses_questionnaireReq._();

  factory Gget_reponses_questionnaireReq(
          [void Function(Gget_reponses_questionnaireReqBuilder b) updates]) =
      _$Gget_reponses_questionnaireReq;

  static void _initializeBuilder(Gget_reponses_questionnaireReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_reponses_questionnaire',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_reponses_questionnaireVars get vars;
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
  _i2.Gget_reponses_questionnaireData? Function(
    _i2.Gget_reponses_questionnaireData?,
    _i2.Gget_reponses_questionnaireData?,
  )? get updateResult;
  @override
  _i2.Gget_reponses_questionnaireData? get optimisticResponse;
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
  _i2.Gget_reponses_questionnaireData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_reponses_questionnaireData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_reponses_questionnaireData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_reponses_questionnaireData,
      _i3.Gget_reponses_questionnaireVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_reponses_questionnaireReq> get serializer =>
      _$ggetReponsesQuestionnaireReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_reponses_questionnaireReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_reponses_questionnaireReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_reponses_questionnaireReq.serializer,
        json,
      );
}
