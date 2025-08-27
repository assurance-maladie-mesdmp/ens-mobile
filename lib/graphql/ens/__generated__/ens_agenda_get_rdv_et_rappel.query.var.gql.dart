// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_agenda_get_rdv_et_rappel.query.var.gql.g.dart';

abstract class Gget_rdv_et_rappelVars
    implements Built<Gget_rdv_et_rappelVars, Gget_rdv_et_rappelVarsBuilder> {
  Gget_rdv_et_rappelVars._();

  factory Gget_rdv_et_rappelVars(
          [void Function(Gget_rdv_et_rappelVarsBuilder b) updates]) =
      _$Gget_rdv_et_rappelVars;

  String get patientId;
  static Serializer<Gget_rdv_et_rappelVars> get serializer =>
      _$ggetRdvEtRappelVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rdv_et_rappelVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rdv_et_rappelVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_rdv_et_rappelVars.serializer,
        json,
      );
}
