// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_agenda_delete_rdv.query.var.gql.g.dart';

abstract class Gdelete_rdvVars
    implements Built<Gdelete_rdvVars, Gdelete_rdvVarsBuilder> {
  Gdelete_rdvVars._();

  factory Gdelete_rdvVars([void Function(Gdelete_rdvVarsBuilder b) updates]) =
      _$Gdelete_rdvVars;

  String get rdvId;
  String get patientId;
  static Serializer<Gdelete_rdvVars> get serializer =>
      _$gdeleteRdvVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_rdvVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_rdvVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_rdvVars.serializer,
        json,
      );
}
