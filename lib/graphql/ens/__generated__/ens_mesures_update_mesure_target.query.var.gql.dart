// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_mesures_update_mesure_target.query.var.gql.g.dart';

abstract class Gupdate_mesure_targetVars
    implements
        Built<Gupdate_mesure_targetVars, Gupdate_mesure_targetVarsBuilder> {
  Gupdate_mesure_targetVars._();

  factory Gupdate_mesure_targetVars(
          [void Function(Gupdate_mesure_targetVarsBuilder b) updates]) =
      _$Gupdate_mesure_targetVars;

  String get patientId;
  _i1.GEditMeasureTargetInput get editMesureTarget;
  static Serializer<Gupdate_mesure_targetVars> get serializer =>
      _$gupdateMesureTargetVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_mesure_targetVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_mesure_targetVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_mesure_targetVars.serializer,
        json,
      );
}
