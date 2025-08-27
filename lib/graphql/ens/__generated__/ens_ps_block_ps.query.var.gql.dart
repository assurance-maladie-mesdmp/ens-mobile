// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_block_ps.query.var.gql.g.dart';

abstract class Gblock_psVars
    implements Built<Gblock_psVars, Gblock_psVarsBuilder> {
  Gblock_psVars._();

  factory Gblock_psVars([void Function(Gblock_psVarsBuilder b) updates]) =
      _$Gblock_psVars;

  String get patientId;
  String get rpps;
  static Serializer<Gblock_psVars> get serializer => _$gblockPsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gblock_psVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gblock_psVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gblock_psVars.serializer,
        json,
      );
}
