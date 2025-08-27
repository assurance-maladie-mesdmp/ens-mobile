// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_agenda_get_rendez_vous_by_id_and_patient_id.query.var.gql.g.dart';

abstract class Gget_rendez_vous_by_id_and_patient_idVars
    implements
        Built<Gget_rendez_vous_by_id_and_patient_idVars,
            Gget_rendez_vous_by_id_and_patient_idVarsBuilder> {
  Gget_rendez_vous_by_id_and_patient_idVars._();

  factory Gget_rendez_vous_by_id_and_patient_idVars(
      [void Function(Gget_rendez_vous_by_id_and_patient_idVarsBuilder b)
          updates]) = _$Gget_rendez_vous_by_id_and_patient_idVars;

  String get patientId;
  String get rdvId;
  static Serializer<Gget_rendez_vous_by_id_and_patient_idVars> get serializer =>
      _$ggetRendezVousByIdAndPatientIdVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rendez_vous_by_id_and_patient_idVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rendez_vous_by_id_and_patient_idVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_rendez_vous_by_id_and_patient_idVars.serializer,
        json,
      );
}
