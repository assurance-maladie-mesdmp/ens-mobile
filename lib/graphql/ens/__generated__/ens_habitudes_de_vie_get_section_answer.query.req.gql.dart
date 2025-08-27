// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie_get_section_answer.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie_get_section_answer.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie_get_section_answer.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_habitudes_de_vie_get_section_answer.query.req.gql.g.dart';

abstract class Gget_habitudes_de_vie_section_answerReq
    implements
        Built<Gget_habitudes_de_vie_section_answerReq,
            Gget_habitudes_de_vie_section_answerReqBuilder>,
        _i1.OperationRequest<_i2.Gget_habitudes_de_vie_section_answerData,
            _i3.Gget_habitudes_de_vie_section_answerVars> {
  Gget_habitudes_de_vie_section_answerReq._();

  factory Gget_habitudes_de_vie_section_answerReq(
      [void Function(Gget_habitudes_de_vie_section_answerReqBuilder b)
          updates]) = _$Gget_habitudes_de_vie_section_answerReq;

  static void _initializeBuilder(
          Gget_habitudes_de_vie_section_answerReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'get_habitudes_de_vie_section_answer',
        )
        ..executeOnListen = true;

  @override
  _i3.Gget_habitudes_de_vie_section_answerVars get vars;
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
  _i2.Gget_habitudes_de_vie_section_answerData? Function(
    _i2.Gget_habitudes_de_vie_section_answerData?,
    _i2.Gget_habitudes_de_vie_section_answerData?,
  )? get updateResult;
  @override
  _i2.Gget_habitudes_de_vie_section_answerData? get optimisticResponse;
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
  _i2.Gget_habitudes_de_vie_section_answerData? parseData(
          Map<String, dynamic> json) =>
      _i2.Gget_habitudes_de_vie_section_answerData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.Gget_habitudes_de_vie_section_answerData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_habitudes_de_vie_section_answerData,
      _i3.Gget_habitudes_de_vie_section_answerVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_habitudes_de_vie_section_answerReq> get serializer =>
      _$ggetHabitudesDeVieSectionAnswerReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_habitudes_de_vie_section_answerReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vie_section_answerReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_habitudes_de_vie_section_answerReq.serializer,
        json,
      );
}
