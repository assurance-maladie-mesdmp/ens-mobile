// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_recommandation_get_delayed_recommendations.query.var.gql.g.dart';

abstract class Gget_delayed_recommendationsVars
    implements
        Built<Gget_delayed_recommendationsVars,
            Gget_delayed_recommendationsVarsBuilder> {
  Gget_delayed_recommendationsVars._();

  factory Gget_delayed_recommendationsVars(
          [void Function(Gget_delayed_recommendationsVarsBuilder b) updates]) =
      _$Gget_delayed_recommendationsVars;

  String get patientId;
  static Serializer<Gget_delayed_recommendationsVars> get serializer =>
      _$ggetDelayedRecommendationsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delayed_recommendationsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delayed_recommendationsVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_delayed_recommendationsVars.serializer,
        json,
      );
}
