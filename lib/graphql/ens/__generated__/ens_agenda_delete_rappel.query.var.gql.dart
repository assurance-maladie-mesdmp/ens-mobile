// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_agenda_delete_rappel.query.var.gql.g.dart';

abstract class Gdelete_rappelVars
    implements Built<Gdelete_rappelVars, Gdelete_rappelVarsBuilder> {
  Gdelete_rappelVars._();

  factory Gdelete_rappelVars(
          [void Function(Gdelete_rappelVarsBuilder b) updates]) =
      _$Gdelete_rappelVars;

  String get rappelId;
  String get patientId;
  static Serializer<Gdelete_rappelVars> get serializer =>
      _$gdeleteRappelVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_rappelVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_rappelVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_rappelVars.serializer,
        json,
      );
}
