// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mhs_get_histoire_de_sante_episodes.query.var.gql.g.dart';

abstract class Gget_histoire_de_sante_episodesVars
    implements
        Built<Gget_histoire_de_sante_episodesVars,
            Gget_histoire_de_sante_episodesVarsBuilder> {
  Gget_histoire_de_sante_episodesVars._();

  factory Gget_histoire_de_sante_episodesVars(
      [void Function(Gget_histoire_de_sante_episodesVarsBuilder b)
          updates]) = _$Gget_histoire_de_sante_episodesVars;

  String get patientId;
  double get currentPage;
  static Serializer<Gget_histoire_de_sante_episodesVars> get serializer =>
      _$ggetHistoireDeSanteEpisodesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_histoire_de_sante_episodesVars.serializer,
        json,
      );
}
