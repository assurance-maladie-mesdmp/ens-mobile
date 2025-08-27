// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_get_ps.query.var.gql.g.dart';

abstract class Gget_pml_professionnels_santeVars
    implements
        Built<Gget_pml_professionnels_santeVars,
            Gget_pml_professionnels_santeVarsBuilder> {
  Gget_pml_professionnels_santeVars._();

  factory Gget_pml_professionnels_santeVars(
          [void Function(Gget_pml_professionnels_santeVarsBuilder b) updates]) =
      _$Gget_pml_professionnels_santeVars;

  String get patientId;
  static Serializer<Gget_pml_professionnels_santeVars> get serializer =>
      _$ggetPmlProfessionnelsSanteVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_pml_professionnels_santeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_pml_professionnels_santeVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_pml_professionnels_santeVars.serializer,
        json,
      );
}
