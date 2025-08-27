// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_verify_otp_to_update_user_contact.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_verify_otp_to_update_user_contact.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_verify_otp_to_update_user_contact.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_enrolement_verify_otp_to_update_user_contact.query.req.gql.g.dart';

abstract class Gverify_otp_to_update_user_contact_in_enrolementReq
    implements
        Built<Gverify_otp_to_update_user_contact_in_enrolementReq,
            Gverify_otp_to_update_user_contact_in_enrolementReqBuilder>,
        _i1.OperationRequest<
            _i2.Gverify_otp_to_update_user_contact_in_enrolementData,
            _i3.Gverify_otp_to_update_user_contact_in_enrolementVars> {
  Gverify_otp_to_update_user_contact_in_enrolementReq._();

  factory Gverify_otp_to_update_user_contact_in_enrolementReq(
      [void Function(
              Gverify_otp_to_update_user_contact_in_enrolementReqBuilder b)
          updates]) = _$Gverify_otp_to_update_user_contact_in_enrolementReq;

  static void _initializeBuilder(
          Gverify_otp_to_update_user_contact_in_enrolementReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'verify_otp_to_update_user_contact_in_enrolement',
        )
        ..executeOnListen = true;

  @override
  _i3.Gverify_otp_to_update_user_contact_in_enrolementVars get vars;
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
  _i2.Gverify_otp_to_update_user_contact_in_enrolementData? Function(
    _i2.Gverify_otp_to_update_user_contact_in_enrolementData?,
    _i2.Gverify_otp_to_update_user_contact_in_enrolementData?,
  )? get updateResult;
  @override
  _i2.Gverify_otp_to_update_user_contact_in_enrolementData?
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
  _i2.Gverify_otp_to_update_user_contact_in_enrolementData? parseData(
          Map<String, dynamic> json) =>
      _i2.Gverify_otp_to_update_user_contact_in_enrolementData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.Gverify_otp_to_update_user_contact_in_enrolementData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gverify_otp_to_update_user_contact_in_enrolementData,
          _i3.Gverify_otp_to_update_user_contact_in_enrolementVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gverify_otp_to_update_user_contact_in_enrolementReq>
      get serializer =>
          _$gverifyOtpToUpdateUserContactInEnrolementReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gverify_otp_to_update_user_contact_in_enrolementReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gverify_otp_to_update_user_contact_in_enrolementReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gverify_otp_to_update_user_contact_in_enrolementReq.serializer,
        json,
      );
}
