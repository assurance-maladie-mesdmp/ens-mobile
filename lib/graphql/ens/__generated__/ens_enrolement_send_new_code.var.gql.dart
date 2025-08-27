// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_enrolement_send_new_code.var.gql.g.dart';

abstract class Gsend_new_enrolement_codeVars
    implements
        Built<Gsend_new_enrolement_codeVars,
            Gsend_new_enrolement_codeVarsBuilder> {
  Gsend_new_enrolement_codeVars._();

  factory Gsend_new_enrolement_codeVars(
          [void Function(Gsend_new_enrolement_codeVarsBuilder b) updates]) =
      _$Gsend_new_enrolement_codeVars;

  _i1.GSendNewEnrolmentCodeInput get input;
  static Serializer<Gsend_new_enrolement_codeVars> get serializer =>
      _$gsendNewEnrolementCodeVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gsend_new_enrolement_codeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_new_enrolement_codeVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gsend_new_enrolement_codeVars.serializer,
        json,
      );
}
