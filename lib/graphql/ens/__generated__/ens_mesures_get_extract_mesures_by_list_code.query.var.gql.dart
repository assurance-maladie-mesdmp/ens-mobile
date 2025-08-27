// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_mesures_get_extract_mesures_by_list_code.query.var.gql.g.dart';

abstract class Gget_extract_mesures_by_list_codeVars
    implements
        Built<Gget_extract_mesures_by_list_codeVars,
            Gget_extract_mesures_by_list_codeVarsBuilder> {
  Gget_extract_mesures_by_list_codeVars._();

  factory Gget_extract_mesures_by_list_codeVars(
      [void Function(Gget_extract_mesures_by_list_codeVarsBuilder b)
          updates]) = _$Gget_extract_mesures_by_list_codeVars;

  BuiltList<_i1.GMeasurePageableInput> get measurePageableInputs;
  static Serializer<Gget_extract_mesures_by_list_codeVars> get serializer =>
      _$ggetExtractMesuresByListCodeVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_extract_mesures_by_list_codeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_extract_mesures_by_list_codeVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_extract_mesures_by_list_codeVars.serializer,
        json,
      );
}
