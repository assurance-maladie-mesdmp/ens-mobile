// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_delete_mesure_target.query.var.gql.g.dart';

abstract class Gdelete_mesure_targetVars
    implements
        Built<Gdelete_mesure_targetVars, Gdelete_mesure_targetVarsBuilder> {
  Gdelete_mesure_targetVars._();

  factory Gdelete_mesure_targetVars(
          [void Function(Gdelete_mesure_targetVarsBuilder b) updates]) =
      _$Gdelete_mesure_targetVars;

  String get patientId;
  String get targetId;
  static Serializer<Gdelete_mesure_targetVars> get serializer =>
      _$gdeleteMesureTargetVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_mesure_targetVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_mesure_targetVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_mesure_targetVars.serializer,
        json,
      );
}
