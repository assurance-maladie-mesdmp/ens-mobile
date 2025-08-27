// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_get_mesures_targets.query.var.gql.g.dart';

abstract class Gget_mesures_targetsVars
    implements
        Built<Gget_mesures_targetsVars, Gget_mesures_targetsVarsBuilder> {
  Gget_mesures_targetsVars._();

  factory Gget_mesures_targetsVars(
          [void Function(Gget_mesures_targetsVarsBuilder b) updates]) =
      _$Gget_mesures_targetsVars;

  String get patientId;
  static Serializer<Gget_mesures_targetsVars> get serializer =>
      _$ggetMesuresTargetsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_targetsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_targetsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_mesures_targetsVars.serializer,
        json,
      );
}
