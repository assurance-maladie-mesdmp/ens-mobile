// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_rdv.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_rdv.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_rdv.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_agenda_rdv.fragment.req.gql.g.dart';

abstract class GrdvReq
    implements
        Built<GrdvReq, GrdvReqBuilder>,
        _i1.FragmentRequest<_i2.GrdvData, _i3.GrdvVars> {
  GrdvReq._();

  factory GrdvReq([void Function(GrdvReqBuilder b) updates]) = _$GrdvReq;

  static void _initializeBuilder(GrdvReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'rdv';

  @override
  _i3.GrdvVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GrdvData? parseData(Map<String, dynamic> json) =>
      _i2.GrdvData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GrdvData data) => data.toJson();

  static Serializer<GrdvReq> get serializer => _$grdvReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GrdvReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrdvReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GrdvReq.serializer,
        json,
      );
}
