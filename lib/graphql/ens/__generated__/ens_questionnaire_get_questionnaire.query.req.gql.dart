// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_get_questionnaire.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_get_questionnaire.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_get_questionnaire.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_questionnaire_get_questionnaire.query.req.gql.g.dart';

abstract class Gget_questionnaireReq
    implements
        Built<Gget_questionnaireReq, Gget_questionnaireReqBuilder>,
        _i1.OperationRequest<_i2.Gget_questionnaireData,
            _i3.Gget_questionnaireVars> {
  Gget_questionnaireReq._();

  factory Gget_questionnaireReq(
          [void Function(Gget_questionnaireReqBuilder b) updates]) =
      _$Gget_questionnaireReq;

  static void _initializeBuilder(Gget_questionnaireReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_questionnaire',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_questionnaireVars get vars;
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
  _i2.Gget_questionnaireData? Function(
    _i2.Gget_questionnaireData?,
    _i2.Gget_questionnaireData?,
  )? get updateResult;
  @override
  _i2.Gget_questionnaireData? get optimisticResponse;
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
  _i2.Gget_questionnaireData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_questionnaireData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_questionnaireData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_questionnaireData, _i3.Gget_questionnaireVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_questionnaireReq> get serializer =>
      _$ggetQuestionnaireReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_questionnaireReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_questionnaireReq.serializer,
        json,
      );
}
