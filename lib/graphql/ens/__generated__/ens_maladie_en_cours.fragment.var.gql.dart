// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_maladie_en_cours.fragment.var.gql.g.dart';

abstract class GmaladieEnCoursVars
    implements Built<GmaladieEnCoursVars, GmaladieEnCoursVarsBuilder> {
  GmaladieEnCoursVars._();

  factory GmaladieEnCoursVars(
          [void Function(GmaladieEnCoursVarsBuilder b) updates]) =
      _$GmaladieEnCoursVars;

  static Serializer<GmaladieEnCoursVars> get serializer =>
      _$gmaladieEnCoursVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieEnCoursVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieEnCoursVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmaladieEnCoursVars.serializer,
        json,
      );
}
