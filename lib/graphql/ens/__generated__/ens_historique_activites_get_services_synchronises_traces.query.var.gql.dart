// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_historique_activites_get_services_synchronises_traces.query.var.gql.g.dart';

abstract class Gget_services_synchronises_tracesVars
    implements
        Built<Gget_services_synchronises_tracesVars,
            Gget_services_synchronises_tracesVarsBuilder> {
  Gget_services_synchronises_tracesVars._();

  factory Gget_services_synchronises_tracesVars(
      [void Function(Gget_services_synchronises_tracesVarsBuilder b)
          updates]) = _$Gget_services_synchronises_tracesVars;

  String get patientId;
  static Serializer<Gget_services_synchronises_tracesVars> get serializer =>
      _$ggetServicesSynchronisesTracesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_services_synchronises_tracesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_services_synchronises_tracesVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_services_synchronises_tracesVars.serializer,
        json,
      );
}
