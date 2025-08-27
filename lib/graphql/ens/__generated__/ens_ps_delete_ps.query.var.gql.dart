// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_delete_ps.query.var.gql.g.dart';

abstract class Gdelete_professionnel_santeVars
    implements
        Built<Gdelete_professionnel_santeVars,
            Gdelete_professionnel_santeVarsBuilder> {
  Gdelete_professionnel_santeVars._();

  factory Gdelete_professionnel_santeVars(
          [void Function(Gdelete_professionnel_santeVarsBuilder b) updates]) =
      _$Gdelete_professionnel_santeVars;

  String get patientId;
  String get psId;
  static Serializer<Gdelete_professionnel_santeVars> get serializer =>
      _$gdeleteProfessionnelSanteVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_professionnel_santeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_professionnel_santeVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_professionnel_santeVars.serializer,
        json,
      );
}
