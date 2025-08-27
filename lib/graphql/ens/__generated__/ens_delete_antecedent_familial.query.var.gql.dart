// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_delete_antecedent_familial.query.var.gql.g.dart';

abstract class Gdelete_antecedent_familialVars
    implements
        Built<Gdelete_antecedent_familialVars,
            Gdelete_antecedent_familialVarsBuilder> {
  Gdelete_antecedent_familialVars._();

  factory Gdelete_antecedent_familialVars(
          [void Function(Gdelete_antecedent_familialVarsBuilder b) updates]) =
      _$Gdelete_antecedent_familialVars;

  String get patientId;
  String get id;
  static Serializer<Gdelete_antecedent_familialVars> get serializer =>
      _$gdeleteAntecedentFamilialVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_antecedent_familialVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_antecedent_familialVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_antecedent_familialVars.serializer,
        json,
      );
}
