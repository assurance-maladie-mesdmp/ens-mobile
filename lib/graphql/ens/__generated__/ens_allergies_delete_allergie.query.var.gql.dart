// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_allergies_delete_allergie.query.var.gql.g.dart';

abstract class Gdelete_allergieVars
    implements Built<Gdelete_allergieVars, Gdelete_allergieVarsBuilder> {
  Gdelete_allergieVars._();

  factory Gdelete_allergieVars(
          [void Function(Gdelete_allergieVarsBuilder b) updates]) =
      _$Gdelete_allergieVars;

  String get patientId;
  String get id;
  static Serializer<Gdelete_allergieVars> get serializer =>
      _$gdeleteAllergieVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_allergieVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_allergieVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_allergieVars.serializer,
        json,
      );
}
