// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_update_antecedent_familial.query.var.gql.g.dart';

abstract class Gupdate_antecedent_familialVars
    implements
        Built<Gupdate_antecedent_familialVars,
            Gupdate_antecedent_familialVarsBuilder> {
  Gupdate_antecedent_familialVars._();

  factory Gupdate_antecedent_familialVars(
          [void Function(Gupdate_antecedent_familialVarsBuilder b) updates]) =
      _$Gupdate_antecedent_familialVars;

  _i1.GFamilyHistoryUpdateInput get familyHistory;
  static Serializer<Gupdate_antecedent_familialVars> get serializer =>
      _$gupdateAntecedentFamilialVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_antecedent_familialVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_antecedent_familialVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_antecedent_familialVars.serializer,
        json,
      );
}
