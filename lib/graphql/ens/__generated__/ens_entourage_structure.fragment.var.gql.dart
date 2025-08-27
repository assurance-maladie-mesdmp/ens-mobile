// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_entourage_structure.fragment.var.gql.g.dart';

abstract class GentourageStructureVars
    implements Built<GentourageStructureVars, GentourageStructureVarsBuilder> {
  GentourageStructureVars._();

  factory GentourageStructureVars(
          [void Function(GentourageStructureVarsBuilder b) updates]) =
      _$GentourageStructureVars;

  static Serializer<GentourageStructureVars> get serializer =>
      _$gentourageStructureVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GentourageStructureVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GentourageStructureVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GentourageStructureVars.serializer,
        json,
      );
}
