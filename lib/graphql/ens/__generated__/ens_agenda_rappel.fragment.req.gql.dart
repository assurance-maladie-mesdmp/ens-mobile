// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_rappel.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_rappel.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_rappel.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_agenda_rappel.fragment.req.gql.g.dart';

abstract class GrappelReq
    implements
        Built<GrappelReq, GrappelReqBuilder>,
        _i1.FragmentRequest<_i2.GrappelData, _i3.GrappelVars> {
  GrappelReq._();

  factory GrappelReq([void Function(GrappelReqBuilder b) updates]) =
      _$GrappelReq;

  static void _initializeBuilder(GrappelReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'rappel';

  @override
  _i3.GrappelVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GrappelData? parseData(Map<String, dynamic> json) =>
      _i2.GrappelData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GrappelData data) => data.toJson();

  static Serializer<GrappelReq> get serializer => _$grappelReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GrappelReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrappelReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GrappelReq.serializer,
        json,
      );
}
