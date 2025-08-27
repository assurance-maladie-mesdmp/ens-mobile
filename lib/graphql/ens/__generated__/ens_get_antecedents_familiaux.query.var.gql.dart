// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_get_antecedents_familiaux.query.var.gql.g.dart';

abstract class Gget_antecedents_familiauxVars
    implements
        Built<Gget_antecedents_familiauxVars,
            Gget_antecedents_familiauxVarsBuilder> {
  Gget_antecedents_familiauxVars._();

  factory Gget_antecedents_familiauxVars(
          [void Function(Gget_antecedents_familiauxVarsBuilder b) updates]) =
      _$Gget_antecedents_familiauxVars;

  String get patientId;
  static Serializer<Gget_antecedents_familiauxVars> get serializer =>
      _$ggetAntecedentsFamiliauxVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_antecedents_familiauxVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_antecedents_familiauxVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_antecedents_familiauxVars.serializer,
        json,
      );
}
