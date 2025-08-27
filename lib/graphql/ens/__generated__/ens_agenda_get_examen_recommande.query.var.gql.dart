// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_agenda_get_examen_recommande.query.var.gql.g.dart';

abstract class Gget_examen_recommandeVars
    implements
        Built<Gget_examen_recommandeVars, Gget_examen_recommandeVarsBuilder> {
  Gget_examen_recommandeVars._();

  factory Gget_examen_recommandeVars(
          [void Function(Gget_examen_recommandeVarsBuilder b) updates]) =
      _$Gget_examen_recommandeVars;

  String get patientId;
  String get code;
  String get dateDebutPrevention;
  static Serializer<Gget_examen_recommandeVars> get serializer =>
      _$ggetExamenRecommandeVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_examen_recommandeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_examen_recommandeVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_examen_recommandeVars.serializer,
        json,
      );
}
