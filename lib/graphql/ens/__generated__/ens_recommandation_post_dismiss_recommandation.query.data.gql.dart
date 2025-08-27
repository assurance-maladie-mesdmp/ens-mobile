// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_recommandation_post_dismiss_recommandation.query.data.gql.g.dart';

abstract class Gpost_dismiss_recommandationData
    implements
        Built<Gpost_dismiss_recommandationData,
            Gpost_dismiss_recommandationDataBuilder> {
  Gpost_dismiss_recommandationData._();

  factory Gpost_dismiss_recommandationData(
          [void Function(Gpost_dismiss_recommandationDataBuilder b) updates]) =
      _$Gpost_dismiss_recommandationData;

  static void _initializeBuilder(Gpost_dismiss_recommandationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gpost_dismiss_recommandationData_postponeRecommendationDisplay
      get postponeRecommendationDisplay;
  static Serializer<Gpost_dismiss_recommandationData> get serializer =>
      _$gpostDismissRecommandationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gpost_dismiss_recommandationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gpost_dismiss_recommandationData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gpost_dismiss_recommandationData.serializer,
        json,
      );
}

abstract class Gpost_dismiss_recommandationData_postponeRecommendationDisplay
    implements
        Built<Gpost_dismiss_recommandationData_postponeRecommendationDisplay,
            Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder> {
  Gpost_dismiss_recommandationData_postponeRecommendationDisplay._();

  factory Gpost_dismiss_recommandationData_postponeRecommendationDisplay(
          [void Function(
                  Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder
                      b)
              updates]) =
      _$Gpost_dismiss_recommandationData_postponeRecommendationDisplay;

  static void _initializeBuilder(
          Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder
              b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<
          Gpost_dismiss_recommandationData_postponeRecommendationDisplay>
      get serializer =>
          _$gpostDismissRecommandationDataPostponeRecommendationDisplaySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gpost_dismiss_recommandationData_postponeRecommendationDisplay
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gpost_dismiss_recommandationData_postponeRecommendationDisplay?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gpost_dismiss_recommandationData_postponeRecommendationDisplay
                .serializer,
            json,
          );
}
