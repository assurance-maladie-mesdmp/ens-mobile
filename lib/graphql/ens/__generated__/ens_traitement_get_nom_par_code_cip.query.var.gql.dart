// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_traitement_get_nom_par_code_cip.query.var.gql.g.dart';

abstract class Gget_nom_par_code_cipVars
    implements
        Built<Gget_nom_par_code_cipVars, Gget_nom_par_code_cipVarsBuilder> {
  Gget_nom_par_code_cipVars._();

  factory Gget_nom_par_code_cipVars(
          [void Function(Gget_nom_par_code_cipVarsBuilder b) updates]) =
      _$Gget_nom_par_code_cipVars;

  String get code_cip;
  static Serializer<Gget_nom_par_code_cipVars> get serializer =>
      _$ggetNomParCodeCipVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_nom_par_code_cipVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_nom_par_code_cipVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_nom_par_code_cipVars.serializer,
        json,
      );
}
