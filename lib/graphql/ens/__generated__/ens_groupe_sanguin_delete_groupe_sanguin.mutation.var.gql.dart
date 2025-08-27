// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_groupe_sanguin_delete_groupe_sanguin.mutation.var.gql.g.dart';

abstract class Gdelete_groupe_sanguinVars
    implements
        Built<Gdelete_groupe_sanguinVars, Gdelete_groupe_sanguinVarsBuilder> {
  Gdelete_groupe_sanguinVars._();

  factory Gdelete_groupe_sanguinVars(
          [void Function(Gdelete_groupe_sanguinVarsBuilder b) updates]) =
      _$Gdelete_groupe_sanguinVars;

  String get id;
  String get patientId;
  static Serializer<Gdelete_groupe_sanguinVars> get serializer =>
      _$gdeleteGroupeSanguinVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_groupe_sanguinVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_groupe_sanguinVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_groupe_sanguinVars.serializer,
        json,
      );
}
