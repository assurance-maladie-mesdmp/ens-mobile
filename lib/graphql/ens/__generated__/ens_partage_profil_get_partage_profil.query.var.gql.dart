// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_partage_profil_get_partage_profil.query.var.gql.g.dart';

abstract class Gget_partage_profilVars
    implements Built<Gget_partage_profilVars, Gget_partage_profilVarsBuilder> {
  Gget_partage_profilVars._();

  factory Gget_partage_profilVars(
          [void Function(Gget_partage_profilVarsBuilder b) updates]) =
      _$Gget_partage_profilVars;

  _i1.GGetLegalRepresentativesInput get getLegalRepresentatives;
  static Serializer<Gget_partage_profilVars> get serializer =>
      _$ggetPartageProfilVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_partage_profilVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_partage_profilVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_partage_profilVars.serializer,
        json,
      );
}
