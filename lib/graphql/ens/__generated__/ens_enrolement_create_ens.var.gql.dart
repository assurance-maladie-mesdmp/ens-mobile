// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_enrolement_create_ens.var.gql.g.dart';

abstract class Gcreate_ensVars
    implements Built<Gcreate_ensVars, Gcreate_ensVarsBuilder> {
  Gcreate_ensVars._();

  factory Gcreate_ensVars([void Function(Gcreate_ensVarsBuilder b) updates]) =
      _$Gcreate_ensVars;

  String get input;
  static Serializer<Gcreate_ensVars> get serializer =>
      _$gcreateEnsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_ensVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_ensVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_ensVars.serializer,
        json,
      );
}
