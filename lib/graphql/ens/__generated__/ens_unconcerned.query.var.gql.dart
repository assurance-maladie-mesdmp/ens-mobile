// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_unconcerned.query.var.gql.g.dart';

abstract class GunconcernedVars
    implements Built<GunconcernedVars, GunconcernedVarsBuilder> {
  GunconcernedVars._();

  factory GunconcernedVars([void Function(GunconcernedVarsBuilder b) updates]) =
      _$GunconcernedVars;

  _i1.GSectionUriEnum get section;
  String get patientId;
  static Serializer<GunconcernedVars> get serializer =>
      _$gunconcernedVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GunconcernedVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GunconcernedVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GunconcernedVars.serializer,
        json,
      );
}
