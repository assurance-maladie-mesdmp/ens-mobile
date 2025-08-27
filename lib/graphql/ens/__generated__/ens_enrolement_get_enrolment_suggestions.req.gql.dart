// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_get_enrolment_suggestions.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_get_enrolment_suggestions.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_get_enrolment_suggestions.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_enrolement_get_enrolment_suggestions.req.gql.g.dart';

abstract class GEnrolmentUserNameAvailabilityReq
    implements
        Built<GEnrolmentUserNameAvailabilityReq,
            GEnrolmentUserNameAvailabilityReqBuilder>,
        _i1.OperationRequest<_i2.GEnrolmentUserNameAvailabilityData,
            _i3.GEnrolmentUserNameAvailabilityVars> {
  GEnrolmentUserNameAvailabilityReq._();

  factory GEnrolmentUserNameAvailabilityReq(
          [void Function(GEnrolmentUserNameAvailabilityReqBuilder b) updates]) =
      _$GEnrolmentUserNameAvailabilityReq;

  static void _initializeBuilder(GEnrolmentUserNameAvailabilityReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'EnrolmentUserNameAvailability',
        )
        ..executeOnListen = true;

  @override
  _i3.GEnrolmentUserNameAvailabilityVars get vars;
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
  _i2.GEnrolmentUserNameAvailabilityData? Function(
    _i2.GEnrolmentUserNameAvailabilityData?,
    _i2.GEnrolmentUserNameAvailabilityData?,
  )? get updateResult;
  @override
  _i2.GEnrolmentUserNameAvailabilityData? get optimisticResponse;
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
  _i2.GEnrolmentUserNameAvailabilityData? parseData(
          Map<String, dynamic> json) =>
      _i2.GEnrolmentUserNameAvailabilityData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.GEnrolmentUserNameAvailabilityData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GEnrolmentUserNameAvailabilityData,
      _i3.GEnrolmentUserNameAvailabilityVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GEnrolmentUserNameAvailabilityReq> get serializer =>
      _$gEnrolmentUserNameAvailabilityReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GEnrolmentUserNameAvailabilityReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GEnrolmentUserNameAvailabilityReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GEnrolmentUserNameAvailabilityReq.serializer,
        json,
      );
}
