// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_recommandation_post_dismiss_recommandation.query.var.gql.g.dart';

abstract class Gpost_dismiss_recommandationVars
    implements
        Built<Gpost_dismiss_recommandationVars,
            Gpost_dismiss_recommandationVarsBuilder> {
  Gpost_dismiss_recommandationVars._();

  factory Gpost_dismiss_recommandationVars(
          [void Function(Gpost_dismiss_recommandationVarsBuilder b) updates]) =
      _$Gpost_dismiss_recommandationVars;

  String get patientId;
  _i1.GRecommendationCode get recommendationCode;
  static Serializer<Gpost_dismiss_recommandationVars> get serializer =>
      _$gpostDismissRecommandationVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gpost_dismiss_recommandationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gpost_dismiss_recommandationVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gpost_dismiss_recommandationVars.serializer,
        json,
      );
}
