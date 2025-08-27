// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_mesures_update_mesures_customization.query.var.gql.g.dart';

abstract class Gupdate_mesures_customizationVars
    implements
        Built<Gupdate_mesures_customizationVars,
            Gupdate_mesures_customizationVarsBuilder> {
  Gupdate_mesures_customizationVars._();

  factory Gupdate_mesures_customizationVars(
          [void Function(Gupdate_mesures_customizationVarsBuilder b) updates]) =
      _$Gupdate_mesures_customizationVars;

  String get patientId;
  BuiltList<_i1.GMeasureTileInput> get mesureTiles;
  static Serializer<Gupdate_mesures_customizationVars> get serializer =>
      _$gupdateMesuresCustomizationVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_mesures_customizationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_mesures_customizationVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_mesures_customizationVars.serializer,
        json,
      );
}
