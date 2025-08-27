// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_get_ps_details.query.var.gql.g.dart';

abstract class Gget_professionnels_de_sante_detailsVars
    implements
        Built<Gget_professionnels_de_sante_detailsVars,
            Gget_professionnels_de_sante_detailsVarsBuilder> {
  Gget_professionnels_de_sante_detailsVars._();

  factory Gget_professionnels_de_sante_detailsVars(
      [void Function(Gget_professionnels_de_sante_detailsVarsBuilder b)
          updates]) = _$Gget_professionnels_de_sante_detailsVars;

  String get id;
  String get patientId;
  static Serializer<Gget_professionnels_de_sante_detailsVars> get serializer =>
      _$ggetProfessionnelsDeSanteDetailsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_professionnels_de_sante_detailsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_professionnels_de_sante_detailsVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_professionnels_de_sante_detailsVars.serializer,
        json,
      );
}
