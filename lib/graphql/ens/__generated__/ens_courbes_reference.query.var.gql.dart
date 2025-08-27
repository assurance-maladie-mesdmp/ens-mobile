// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_courbes_reference.query.var.gql.g.dart';

abstract class Gget_courbes_referenceVars
    implements
        Built<Gget_courbes_referenceVars, Gget_courbes_referenceVarsBuilder> {
  Gget_courbes_referenceVars._();

  factory Gget_courbes_referenceVars(
          [void Function(Gget_courbes_referenceVarsBuilder b) updates]) =
      _$Gget_courbes_referenceVars;

  _i1.GMeasureGrowthMetricsParams get params;
  static Serializer<Gget_courbes_referenceVars> get serializer =>
      _$ggetCourbesReferenceVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_courbes_referenceVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_courbes_referenceVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_courbes_referenceVars.serializer,
        json,
      );
}
