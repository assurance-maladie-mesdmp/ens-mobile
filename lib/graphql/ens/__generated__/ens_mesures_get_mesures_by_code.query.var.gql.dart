// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_mesures_get_mesures_by_code.query.var.gql.g.dart';

abstract class Gget_mesures_by_codeVars
    implements
        Built<Gget_mesures_by_codeVars, Gget_mesures_by_codeVarsBuilder> {
  Gget_mesures_by_codeVars._();

  factory Gget_mesures_by_codeVars(
          [void Function(Gget_mesures_by_codeVarsBuilder b) updates]) =
      _$Gget_mesures_by_codeVars;

  _i1.GMeasurePageableInput get mesurePageable;
  static Serializer<Gget_mesures_by_codeVars> get serializer =>
      _$ggetMesuresByCodeVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_mesures_by_codeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_by_codeVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_mesures_by_codeVars.serializer,
        json,
      );
}
