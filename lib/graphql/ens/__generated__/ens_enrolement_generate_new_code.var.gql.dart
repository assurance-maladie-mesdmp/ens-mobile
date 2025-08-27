// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_enrolement_generate_new_code.var.gql.g.dart';

abstract class Ggenerate_new_enrolement_codeVars
    implements
        Built<Ggenerate_new_enrolement_codeVars,
            Ggenerate_new_enrolement_codeVarsBuilder> {
  Ggenerate_new_enrolement_codeVars._();

  factory Ggenerate_new_enrolement_codeVars(
          [void Function(Ggenerate_new_enrolement_codeVarsBuilder b) updates]) =
      _$Ggenerate_new_enrolement_codeVars;

  _i1.GGenerateNewEnrolmentCodeInput get input;
  static Serializer<Ggenerate_new_enrolement_codeVars> get serializer =>
      _$ggenerateNewEnrolementCodeVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Ggenerate_new_enrolement_codeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Ggenerate_new_enrolement_codeVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Ggenerate_new_enrolement_codeVars.serializer,
        json,
      );
}
