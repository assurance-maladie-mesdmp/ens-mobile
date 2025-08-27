// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_vaccination_delete_vaccination.query.var.gql.g.dart';

abstract class Gdelete_vaccinationVars
    implements Built<Gdelete_vaccinationVars, Gdelete_vaccinationVarsBuilder> {
  Gdelete_vaccinationVars._();

  factory Gdelete_vaccinationVars(
          [void Function(Gdelete_vaccinationVarsBuilder b) updates]) =
      _$Gdelete_vaccinationVars;

  String get patientId;
  String get id;
  static Serializer<Gdelete_vaccinationVars> get serializer =>
      _$gdeleteVaccinationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_vaccinationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_vaccinationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_vaccinationVars.serializer,
        json,
      );
}
