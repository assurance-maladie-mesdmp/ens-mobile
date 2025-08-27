// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_unblock_ps.query.var.gql.g.dart';

abstract class Gunblock_psVars
    implements Built<Gunblock_psVars, Gunblock_psVarsBuilder> {
  Gunblock_psVars._();

  factory Gunblock_psVars([void Function(Gunblock_psVarsBuilder b) updates]) =
      _$Gunblock_psVars;

  String get patientId;
  String get rpps;
  String get consentementId;
  static Serializer<Gunblock_psVars> get serializer =>
      _$gunblockPsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gunblock_psVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gunblock_psVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gunblock_psVars.serializer,
        json,
      );
}
