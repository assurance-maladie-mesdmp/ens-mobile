// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_maladie_en_cours_get.query.var.gql.g.dart';

abstract class Gget_maladies_in_progressVars
    implements
        Built<Gget_maladies_in_progressVars,
            Gget_maladies_in_progressVarsBuilder> {
  Gget_maladies_in_progressVars._();

  factory Gget_maladies_in_progressVars(
          [void Function(Gget_maladies_in_progressVarsBuilder b) updates]) =
      _$Gget_maladies_in_progressVars;

  String get patientId;
  static Serializer<Gget_maladies_in_progressVars> get serializer =>
      _$ggetMaladiesInProgressVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_maladies_in_progressVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_maladies_in_progressVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_maladies_in_progressVars.serializer,
        json,
      );
}
