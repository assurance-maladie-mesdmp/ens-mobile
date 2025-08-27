// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_historique_activites_get_professionnels_de_sante_traces.query.var.gql.g.dart';

abstract class Gget_professionnels_de_sante_tracesVars
    implements
        Built<Gget_professionnels_de_sante_tracesVars,
            Gget_professionnels_de_sante_tracesVarsBuilder> {
  Gget_professionnels_de_sante_tracesVars._();

  factory Gget_professionnels_de_sante_tracesVars(
      [void Function(Gget_professionnels_de_sante_tracesVarsBuilder b)
          updates]) = _$Gget_professionnels_de_sante_tracesVars;

  String get patientId;
  int get page;
  int get pageSize;
  _i1.GActivityTraceFilterInput? get filter;
  static Serializer<Gget_professionnels_de_sante_tracesVars> get serializer =>
      _$ggetProfessionnelsDeSanteTracesVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_professionnels_de_sante_tracesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_professionnels_de_sante_tracesVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_professionnels_de_sante_tracesVars.serializer,
        json,
      );
}
