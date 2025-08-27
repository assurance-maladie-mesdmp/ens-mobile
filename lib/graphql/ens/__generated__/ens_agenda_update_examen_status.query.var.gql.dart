// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_agenda_update_examen_status.query.var.gql.g.dart';

abstract class Gupdate_examen_statusVars
    implements
        Built<Gupdate_examen_statusVars, Gupdate_examen_statusVarsBuilder> {
  Gupdate_examen_statusVars._();

  factory Gupdate_examen_statusVars(
          [void Function(Gupdate_examen_statusVarsBuilder b) updates]) =
      _$Gupdate_examen_statusVars;

  _i1.GUpdatePreventionStatusViewModel get input;
  static Serializer<Gupdate_examen_statusVars> get serializer =>
      _$gupdateExamenStatusVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_examen_statusVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_examen_statusVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_examen_statusVars.serializer,
        json,
      );
}
