// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_es.fragment.var.gql.g.dart';

abstract class Gadresse_ps_esVars
    implements Built<Gadresse_ps_esVars, Gadresse_ps_esVarsBuilder> {
  Gadresse_ps_esVars._();

  factory Gadresse_ps_esVars(
          [void Function(Gadresse_ps_esVarsBuilder b) updates]) =
      _$Gadresse_ps_esVars;

  static Serializer<Gadresse_ps_esVars> get serializer =>
      _$gadressePsEsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadresse_ps_esVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadresse_ps_esVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadresse_ps_esVars.serializer,
        json,
      );
}
