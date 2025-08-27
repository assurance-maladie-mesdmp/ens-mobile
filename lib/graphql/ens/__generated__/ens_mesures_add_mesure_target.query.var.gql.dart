// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_mesures_add_mesure_target.query.var.gql.g.dart';

abstract class Gadd_mesure_targetVars
    implements Built<Gadd_mesure_targetVars, Gadd_mesure_targetVarsBuilder> {
  Gadd_mesure_targetVars._();

  factory Gadd_mesure_targetVars(
          [void Function(Gadd_mesure_targetVarsBuilder b) updates]) =
      _$Gadd_mesure_targetVars;

  String get patientId;
  _i1.GMeasureTargetInput get mesureTarget;
  static Serializer<Gadd_mesure_targetVars> get serializer =>
      _$gaddMesureTargetVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gadd_mesure_targetVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_mesure_targetVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gadd_mesure_targetVars.serializer,
        json,
      );
}
