// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_ouvrant_droit_data.query.var.gql.g.dart';

abstract class Gget_ouvrant_droits_dataVars
    implements
        Built<Gget_ouvrant_droits_dataVars,
            Gget_ouvrant_droits_dataVarsBuilder> {
  Gget_ouvrant_droits_dataVars._();

  factory Gget_ouvrant_droits_dataVars(
          [void Function(Gget_ouvrant_droits_dataVarsBuilder b) updates]) =
      _$Gget_ouvrant_droits_dataVars;

  String get patientId;
  _i1.GGetAyantsDroitsInput get input;
  static Serializer<Gget_ouvrant_droits_dataVars> get serializer =>
      _$ggetOuvrantDroitsDataVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_ouvrant_droits_dataVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ouvrant_droits_dataVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_ouvrant_droits_dataVars.serializer,
        json,
      );
}
