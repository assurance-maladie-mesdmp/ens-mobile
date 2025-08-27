// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_traitement_delete_traitement.query.var.gql.g.dart';

abstract class Gdelete_traitementVars
    implements Built<Gdelete_traitementVars, Gdelete_traitementVarsBuilder> {
  Gdelete_traitementVars._();

  factory Gdelete_traitementVars(
          [void Function(Gdelete_traitementVarsBuilder b) updates]) =
      _$Gdelete_traitementVars;

  String get patientId;
  String get id;
  static Serializer<Gdelete_traitementVars> get serializer =>
      _$gdeleteTraitementVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_traitementVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_traitementVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_traitementVars.serializer,
        json,
      );
}
