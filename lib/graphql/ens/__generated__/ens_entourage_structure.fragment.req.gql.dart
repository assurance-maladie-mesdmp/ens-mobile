// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_entourage_structure.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_entourage_structure.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_entourage_structure.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_entourage_structure.fragment.req.gql.g.dart';

abstract class GentourageStructureReq
    implements
        Built<GentourageStructureReq, GentourageStructureReqBuilder>,
        _i1.FragmentRequest<_i2.GentourageStructureData,
            _i3.GentourageStructureVars> {
  GentourageStructureReq._();

  factory GentourageStructureReq(
          [void Function(GentourageStructureReqBuilder b) updates]) =
      _$GentourageStructureReq;

  static void _initializeBuilder(GentourageStructureReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'entourageStructure';

  @override
  _i3.GentourageStructureVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GentourageStructureData? parseData(Map<String, dynamic> json) =>
      _i2.GentourageStructureData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GentourageStructureData data) =>
      data.toJson();

  static Serializer<GentourageStructureReq> get serializer =>
      _$gentourageStructureReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GentourageStructureReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GentourageStructureReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GentourageStructureReq.serializer,
        json,
      );
}
