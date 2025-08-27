// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_historique_activites_get_professionnel_de_sante_traces_by_id.query.var.gql.g.dart';

abstract class Gget_professionnel_de_sante_traces_by_idVars
    implements
        Built<Gget_professionnel_de_sante_traces_by_idVars,
            Gget_professionnel_de_sante_traces_by_idVarsBuilder> {
  Gget_professionnel_de_sante_traces_by_idVars._();

  factory Gget_professionnel_de_sante_traces_by_idVars(
      [void Function(Gget_professionnel_de_sante_traces_by_idVarsBuilder b)
          updates]) = _$Gget_professionnel_de_sante_traces_by_idVars;

  _i1.GHealthProfessionalTraceInput get input;
  static Serializer<Gget_professionnel_de_sante_traces_by_idVars>
      get serializer => _$ggetProfessionnelDeSanteTracesByIdVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_professionnel_de_sante_traces_by_idVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_professionnel_de_sante_traces_by_idVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_professionnel_de_sante_traces_by_idVars.serializer,
        json,
      );
}
