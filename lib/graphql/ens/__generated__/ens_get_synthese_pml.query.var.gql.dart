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

part 'ens_get_synthese_pml.query.var.gql.g.dart';

abstract class Gget_synthese_pmlVars
    implements Built<Gget_synthese_pmlVars, Gget_synthese_pmlVarsBuilder> {
  Gget_synthese_pmlVars._();

  factory Gget_synthese_pmlVars(
          [void Function(Gget_synthese_pmlVarsBuilder b) updates]) =
      _$Gget_synthese_pmlVars;

  String get patientId;
  BuiltList<_i1.GSectionToDownload>? get rubrique;
  static Serializer<Gget_synthese_pmlVars> get serializer =>
      _$ggetSynthesePmlVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_synthese_pmlVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_synthese_pmlVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_synthese_pmlVars.serializer,
        json,
      );
}
