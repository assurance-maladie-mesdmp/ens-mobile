// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_accept_cgu.query.var.gql.g.dart';

abstract class Gaccept_cguVars
    implements Built<Gaccept_cguVars, Gaccept_cguVarsBuilder> {
  Gaccept_cguVars._();

  factory Gaccept_cguVars([void Function(Gaccept_cguVarsBuilder b) updates]) =
      _$Gaccept_cguVars;

  String get patientId;
  static Serializer<Gaccept_cguVars> get serializer =>
      _$gacceptCguVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gaccept_cguVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gaccept_cguVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gaccept_cguVars.serializer,
        json,
      );
}
