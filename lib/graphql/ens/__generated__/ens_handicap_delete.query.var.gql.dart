// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_handicap_delete.query.var.gql.g.dart';

abstract class Gdelete_handicapVars
    implements Built<Gdelete_handicapVars, Gdelete_handicapVarsBuilder> {
  Gdelete_handicapVars._();

  factory Gdelete_handicapVars(
          [void Function(Gdelete_handicapVarsBuilder b) updates]) =
      _$Gdelete_handicapVars;

  String get patientId;
  String get id;
  static Serializer<Gdelete_handicapVars> get serializer =>
      _$gdeleteHandicapVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_handicapVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_handicapVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_handicapVars.serializer,
        json,
      );
}
