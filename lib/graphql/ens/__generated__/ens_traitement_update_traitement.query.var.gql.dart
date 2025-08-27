// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_traitement_update_traitement.query.var.gql.g.dart';

abstract class Gupdate_traitementVars
    implements Built<Gupdate_traitementVars, Gupdate_traitementVarsBuilder> {
  Gupdate_traitementVars._();

  factory Gupdate_traitementVars(
          [void Function(Gupdate_traitementVarsBuilder b) updates]) =
      _$Gupdate_traitementVars;

  _i1.GTreatmentUpdateInput get treatment;
  static Serializer<Gupdate_traitementVars> get serializer =>
      _$gupdateTraitementVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_traitementVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_traitementVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_traitementVars.serializer,
        json,
      );
}
