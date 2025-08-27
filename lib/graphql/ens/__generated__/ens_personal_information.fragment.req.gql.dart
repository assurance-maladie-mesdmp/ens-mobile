// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_personal_information.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_personal_information.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_personal_information.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_personal_information.fragment.req.gql.g.dart';

abstract class GpersonalInformationReq
    implements
        Built<GpersonalInformationReq, GpersonalInformationReqBuilder>,
        _i1.FragmentRequest<_i2.GpersonalInformationData,
            _i3.GpersonalInformationVars> {
  GpersonalInformationReq._();

  factory GpersonalInformationReq(
          [void Function(GpersonalInformationReqBuilder b) updates]) =
      _$GpersonalInformationReq;

  static void _initializeBuilder(GpersonalInformationReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'personalInformation';

  @override
  _i3.GpersonalInformationVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GpersonalInformationData? parseData(Map<String, dynamic> json) =>
      _i2.GpersonalInformationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GpersonalInformationData data) =>
      data.toJson();

  static Serializer<GpersonalInformationReq> get serializer =>
      _$gpersonalInformationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GpersonalInformationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpersonalInformationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GpersonalInformationReq.serializer,
        json,
      );
}
