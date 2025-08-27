// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_add_antecedent_familial.query.var.gql.g.dart';

abstract class Gadd_antecedent_familialVars
    implements
        Built<Gadd_antecedent_familialVars,
            Gadd_antecedent_familialVarsBuilder> {
  Gadd_antecedent_familialVars._();

  factory Gadd_antecedent_familialVars(
          [void Function(Gadd_antecedent_familialVarsBuilder b) updates]) =
      _$Gadd_antecedent_familialVars;

  _i1.GFamilyHistoryInput get familyHistory;
  static Serializer<Gadd_antecedent_familialVars> get serializer =>
      _$gaddAntecedentFamilialVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gadd_antecedent_familialVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_antecedent_familialVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gadd_antecedent_familialVars.serializer,
        json,
      );
}
