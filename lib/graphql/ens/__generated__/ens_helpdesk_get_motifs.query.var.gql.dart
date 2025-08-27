// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_helpdesk_get_motifs.query.var.gql.g.dart';

abstract class Gget_motifs_nouvelle_demandeVars
    implements
        Built<Gget_motifs_nouvelle_demandeVars,
            Gget_motifs_nouvelle_demandeVarsBuilder> {
  Gget_motifs_nouvelle_demandeVars._();

  factory Gget_motifs_nouvelle_demandeVars(
          [void Function(Gget_motifs_nouvelle_demandeVarsBuilder b) updates]) =
      _$Gget_motifs_nouvelle_demandeVars;

  static Serializer<Gget_motifs_nouvelle_demandeVars> get serializer =>
      _$ggetMotifsNouvelleDemandeVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_motifs_nouvelle_demandeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_motifs_nouvelle_demandeVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_motifs_nouvelle_demandeVars.serializer,
        json,
      );
}
