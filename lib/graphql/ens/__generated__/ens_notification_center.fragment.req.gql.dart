// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_notification_center.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_notification_center.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_notification_center.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_notification_center.fragment.req.gql.g.dart';

abstract class GnotificationCenterReq
    implements
        Built<GnotificationCenterReq, GnotificationCenterReqBuilder>,
        _i1.FragmentRequest<_i2.GnotificationCenterData,
            _i3.GnotificationCenterVars> {
  GnotificationCenterReq._();

  factory GnotificationCenterReq(
          [void Function(GnotificationCenterReqBuilder b) updates]) =
      _$GnotificationCenterReq;

  static void _initializeBuilder(GnotificationCenterReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'notificationCenter';

  @override
  _i3.GnotificationCenterVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GnotificationCenterData? parseData(Map<String, dynamic> json) =>
      _i2.GnotificationCenterData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GnotificationCenterData data) =>
      data.toJson();

  static Serializer<GnotificationCenterReq> get serializer =>
      _$gnotificationCenterReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GnotificationCenterReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GnotificationCenterReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GnotificationCenterReq.serializer,
        json,
      );
}
