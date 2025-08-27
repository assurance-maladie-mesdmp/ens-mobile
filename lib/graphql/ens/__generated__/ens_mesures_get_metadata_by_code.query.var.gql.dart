// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_get_metadata_by_code.query.var.gql.g.dart';

abstract class Gget_metadata_by_codeVars
    implements
        Built<Gget_metadata_by_codeVars, Gget_metadata_by_codeVarsBuilder> {
  Gget_metadata_by_codeVars._();

  factory Gget_metadata_by_codeVars(
          [void Function(Gget_metadata_by_codeVarsBuilder b) updates]) =
      _$Gget_metadata_by_codeVars;

  String get code;
  static Serializer<Gget_metadata_by_codeVars> get serializer =>
      _$ggetMetadataByCodeVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_metadata_by_codeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_metadata_by_codeVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_metadata_by_codeVars.serializer,
        json,
      );
}
