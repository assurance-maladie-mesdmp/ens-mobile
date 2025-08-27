// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_maladies_delete_maladie.query.var.gql.g.dart';

abstract class Gdelete_maladieVars
    implements Built<Gdelete_maladieVars, Gdelete_maladieVarsBuilder> {
  Gdelete_maladieVars._();

  factory Gdelete_maladieVars(
          [void Function(Gdelete_maladieVarsBuilder b) updates]) =
      _$Gdelete_maladieVars;

  String get patientId;
  String get id;
  static Serializer<Gdelete_maladieVars> get serializer =>
      _$gdeleteMaladieVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_maladieVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_maladieVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_maladieVars.serializer,
        json,
      );
}
