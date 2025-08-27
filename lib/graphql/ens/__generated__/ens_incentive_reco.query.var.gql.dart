// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_incentive_reco.query.var.gql.g.dart';

abstract class Gget_recommandationsVars
    implements
        Built<Gget_recommandationsVars, Gget_recommandationsVarsBuilder> {
  Gget_recommandationsVars._();

  factory Gget_recommandationsVars(
          [void Function(Gget_recommandationsVarsBuilder b) updates]) =
      _$Gget_recommandationsVars;

  String get patientId;
  static Serializer<Gget_recommandationsVars> get serializer =>
      _$ggetRecommandationsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_recommandationsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_recommandationsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_recommandationsVars.serializer,
        json,
      );
}
